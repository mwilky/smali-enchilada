.class public Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarInflaterView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
        ">;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;"
    }
.end annotation


# instance fields
.field public NAVBAR_CONFIG:Ljava/lang/String;

.field public NAVBAR_CONFIG_RTL:Ljava/lang/String;

.field public NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

.field public NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

.field private isRot0Landscape:Z

.field private mAlternativeOrder:Z

.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLayout:Ljava/lang/String;

.field private final mDisplay:Landroid/view/Display;

.field private mIsCameraNotch:Z

.field private mIsCustomNavBar:Z

.field private mIsSupportHideNavBar:Z

.field protected mLandscapeInflater:Landroid/view/LayoutInflater;

.field private mLastLandscape:Landroid/view/View;

.field private mLastPortrait:Landroid/view/View;

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field private final mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected mRot0:Landroid/widget/FrameLayout;

.field protected mRot90:Landroid/widget/FrameLayout;

.field private mUsingCustomLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createInflaters()V

    .line 129
    const-string/jumbo v1, "window"

    .line 130
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    .line 132
    .local v1, "displayMode":Landroid/view/Display$Mode;
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    .line 133
    const-class v2, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/OverviewProxyService;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setLayoutDirection(I)V

    .line 136
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    .line 137
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportHideNavBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsSupportHideNavBar:Z

    if-eqz v0, :cond_1

    .line 142
    const v0, 0x7f11042b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    .line 143
    const v0, 0x7f11042e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    .line 145
    const v0, 0x7f11042c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    .line 146
    const v0, 0x7f11042d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_1
    const v0, 0x7f1101e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    .line 150
    const v0, 0x7f1101e6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    .line 152
    const v0, 0x7f1101e4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    .line 153
    const v0, 0x7f1101e5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    .line 157
    :goto_1
    return-void
.end method

.method private addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonDispatcher"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 347
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 348
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 350
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 343
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private addGravitySpacer(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .line 395
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method private addToDispatchers(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 593
    .local v0, "indexOfKey":I
    if-ltz v0, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    .line 596
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 597
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 598
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 599
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 600
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "indexOfKey":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "buttonSpec"    # Ljava/lang/String;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 440
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "sizeStr":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object p1

    .line 443
    :cond_0
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 446
    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 447
    .local v1, "weight":F
    new-instance v3, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 448
    .local v3, "frame":Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    .local v4, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    const/16 v5, 0x30

    goto :goto_0

    :cond_1
    const/16 v5, 0x50

    goto :goto_0

    .line 452
    :cond_2
    if-eqz p4, :cond_3

    const v5, 0x800003

    goto :goto_0

    :cond_3
    const v5, 0x800005

    .line 453
    .local v5, "gravity":I
    :goto_0
    const-string v6, "WC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v5, 0x11

    .line 456
    :cond_4
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setDefaultGravity(I)V

    .line 457
    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setGravity(I)V

    .line 459
    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v2, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setClipChildren(Z)V

    .line 466
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->setClipToPadding(Z)V

    .line 468
    return-object v3

    .line 471
    .end local v1    # "weight":F
    .end local v3    # "frame":Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;
    .end local v4    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "gravity":I
    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 472
    .local v1, "size":F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 473
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    return-object p1
.end method

.method private clearAllChildren(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "group"    # Landroid/view/ViewGroup;

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 620
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private clearViews()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->clear()V

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0276

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearAllChildren(Landroid/view/ViewGroup;)V

    .line 616
    return-void
.end method

.method private createInflaters()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 161
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 162
    .local v0, "landscape":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 163
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 165
    return-void
.end method

.method private createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "inflater"    # Landroid/view/LayoutInflater;

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "v":Landroid/view/View;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, "button":Ljava/lang/String;
    const-string v2, "left"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "sysui_nav_bar_left"

    const-string v4, "space"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_0

    :cond_0
    const-string v2, "right"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 484
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    const-string v3, "sysui_nav_bar_right"

    const-string v4, "menu_ime"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    .restart local v2    # "s":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    .line 489
    .local v3, "provider":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    invoke-interface {v3, p1, p2}, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;->createView(Ljava/lang/String;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_2

    return-object v0

    .line 491
    .end local v3    # "provider":Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    :cond_2
    goto :goto_1

    .line 492
    :cond_3
    const-string v2, "home"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 495
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_4

    .line 496
    const v2, 0x7f0d0075

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    .line 497
    :cond_4
    const v2, 0x7f0d0074

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    move-object v0, v2

    goto/16 :goto_7

    .line 499
    :cond_5
    const-string v2, "back"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 502
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_6

    .line 503
    const v2, 0x7f0d002f

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    .line 504
    :cond_6
    const v2, 0x7f0d002e

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_3
    move-object v0, v2

    goto/16 :goto_7

    .line 506
    :cond_7
    const-string v2, "recent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 509
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_8

    .line 510
    const v2, 0x7f0d0198

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_4

    .line 511
    :cond_8
    const v2, 0x7f0d0197

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_4
    move-object v0, v2

    goto/16 :goto_7

    .line 513
    :cond_9
    const-string v2, "menu_ime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 516
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v2, :cond_a

    .line 517
    const v2, 0x7f0d00d5

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    .line 518
    :cond_a
    const v2, 0x7f0d00d4

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_5
    move-object v0, v2

    goto/16 :goto_7

    .line 520
    :cond_b
    const-string v2, "space"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 521
    const v2, 0x7f0d00e2

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 524
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0x3a

    aput v5, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 525
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070380

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    .line 526
    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v3, :cond_d

    .line 527
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07037f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 530
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d
    :goto_6
    goto/16 :goto_7

    :cond_e
    const-string v2, "clipboard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 531
    const v2, 0x7f0d0051

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_7

    .line 532
    :cond_f
    const-string v2, "contextual"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 533
    const v2, 0x7f0d0053

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 535
    :cond_10
    const-string v2, "nav"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 536
    const v2, 0x7f0d00df

    invoke-virtual {p3, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 538
    :cond_11
    const-string v2, "key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 539
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    move-result v4

    .line 541
    .local v4, "code":I
    const v5, 0x7f0d0054

    invoke-virtual {p3, v5, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 542
    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    .line 543
    if-eqz v2, :cond_13

    .line 544
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 545
    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    goto :goto_7

    .line 546
    :cond_12
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 547
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 548
    .local v5, "index":I
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "pkg":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 550
    .local v6, "id":I
    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-static {v3, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->loadAsync(Landroid/graphics/drawable/Icon;)V

    .line 554
    .end local v2    # "uri":Ljava/lang/String;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "code":I
    .end local v5    # "index":I
    .end local v6    # "id":I
    :cond_13
    :goto_7
    return-object v0
.end method

.method public static extractButton(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 584
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    return-object p0

    .line 587
    :cond_0
    const/4 v0, 0x0

    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 558
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 561
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 562
    .local v0, "start":I
    add-int/lit8 v1, v0, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, "subStr":Ljava/lang/String;
    return-object v1
.end method

.method public static extractKeycode(Ljava/lang/String;)I
    .locals 3
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 567
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 571
    .local v0, "start":I
    add-int/lit8 v1, v0, 0x1

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "subStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static extractSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "buttonSpec"    # Ljava/lang/String;

    .line 576
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 580
    .local v0, "sizeStart":I
    add-int/lit8 v1, v0, 0x1

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 2
    .param p1, "buttons"    # [Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 401
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private inflateChildren()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->removeAllViews()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d00ea

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0351

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCameraNotch:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704ca

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    .local v0, "margin":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 184
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 186
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 187
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d00eb

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    .line 189
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0352

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addView(Landroid/view/View;)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 196
    return-void
.end method

.method private initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 3
    .param p1, "buttonDispatcher"    # Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a00af

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addAll(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;Landroid/view/ViewGroup;)V

    .line 340
    return-void
.end method

.method private updateAlternativeOrder()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v2, 0x7f0a00af

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method private updateAlternativeOrder(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 330
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    if-eqz v0, :cond_0

    .line 331
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout;->setAlternativeOrder(Z)V

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDefaultLayout()Ljava/lang/String;
    .locals 7

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 205
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 206
    .local v1, "layoutDirection":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/OPUtils;->isBackKeyRight(Landroid/content/Context;)Z

    move-result v2

    .line 208
    .local v2, "isBackKeyRight":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v3}, Lcom/android/systemui/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v3

    .line 209
    .local v3, "isSwipeUpUI":Z
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG:Ljava/lang/String;

    .line 210
    .local v4, "layout":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_SWIPE_UP_CONFIG_RTL:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->NAVBAR_CONFIG_RTL:Ljava/lang/String;

    .line 212
    .local v5, "layoutRTL":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_3

    .line 213
    if-nez v1, :cond_2

    .line 216
    return-object v5

    .line 221
    :cond_2
    return-object v4

    .line 226
    :cond_3
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    .line 229
    return-object v5

    .line 234
    :cond_4
    return-object v4
.end method

.method protected inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 6
    .param p1, "buttonSpec"    # Ljava/lang/String;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "landscape"    # Z
    .param p4, "start"    # Z

    .line 416
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 417
    .local v0, "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 418
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    .line 420
    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v1

    .line 421
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 423
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 424
    .local v2, "lastView":Landroid/view/View;
    :goto_1
    move-object v3, v1

    .line 425
    .local v3, "accessibilityView":Landroid/view/View;
    instance-of v4, v1, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    if-eqz v4, :cond_3

    .line 426
    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ReverseLinearLayout$ReverseRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 428
    :cond_3
    if-eqz v2, :cond_4

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 431
    :cond_4
    if-eqz p3, :cond_5

    .line 432
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    goto :goto_2

    .line 434
    :cond_5
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 436
    :goto_2
    return-object v1
.end method

.method protected inflateLayout(Ljava/lang/String;)V
    .locals 10
    .param p1, "newLayout"    # Ljava/lang/String;

    .line 357
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    .line 358
    if-nez p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 362
    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "NavBarInflater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateLayout newLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    const-string v0, ";"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "sets":[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v1, :cond_2

    .line 366
    const-string v2, "NavBarInflater"

    const-string v3, "Invalid layout."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object p1

    .line 368
    const-string v2, ";"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_2
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "start":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v4, v0, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, "center":[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v5, v0, v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "end":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v7, 0x7f0a012d

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 375
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v8, v3

    invoke-direct {p0, v2, v6, v8, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 377
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    const v8, 0x7f0a00af

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v4, v6, v9, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 378
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v8, v3

    invoke-direct {p0, v4, v6, v8, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 380
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 381
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 383
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    invoke-direct {p0, v5, v6, v8, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 384
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->isRot0Landscape:Z

    xor-int/2addr v3, v7

    invoke-direct {p0, v5, v6, v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateButtons([Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 387
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->refreshButtonColor()V

    .line 391
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 392
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 241
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-nez v0, :cond_0

    .line 248
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_nav_bar"

    const-string v2, "sysui_nav_bar_left"

    const-string v3, "sysui_nav_bar_right"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 250
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mIsCustomNavBar:Z

    if-nez v0, :cond_0

    .line 262
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 263
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 266
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 267
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateChildren()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onLikelyDefaultLayoutChange()V
    .locals 2

    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "newValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 293
    :cond_1
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;
    .param p2, "context"    # Landroid/content/Context;

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 58
    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider;

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 634
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 271
    const-string v0, "sysui_nav_bar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mUsingCustomLayout:Z

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 275
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_1
    const-string v0, "sysui_nav_bar_left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sysui_nav_bar_right"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->clearViews()V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mCurrentLayout:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 281
    :cond_3
    :goto_1
    return-void
.end method

.method public setAlternativeOrder(Z)V
    .locals 1
    .param p1, "alternativeOrder"    # Z

    .line 316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    if-eq p1, v0, :cond_0

    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mAlternativeOrder:Z

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 320
    :cond_0
    return-void
.end method

.method public setButtonDispatchers(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "buttonDispatchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/statusbar/phone/ButtonDispatcher;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 298
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->initiallyFill(Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public updateButtonDispatchersCurrentView()V
    .locals 5

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 305
    .local v0, "rotation":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 307
    .local v2, "portrait":Z
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot0:Landroid/widget/FrameLayout;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mRot90:Landroid/widget/FrameLayout;

    .line 308
    .local v3, "view":Landroid/view/View;
    :goto_2
    nop

    .local v1, "i":I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 309
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 310
    .local v4, "dispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    .line 308
    .end local v4    # "dispatcher":Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 313
    .end local v0    # "rotation":I
    .end local v1    # "i":I
    .end local v2    # "portrait":Z
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
