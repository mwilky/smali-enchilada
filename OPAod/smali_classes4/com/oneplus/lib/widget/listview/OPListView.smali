.class public Lcom/oneplus/lib/widget/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OPListView"


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

.field private mDisableTouchEvent:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mInDeleteAnimation:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 35
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    .line 99
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 101
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 291
    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 320
    new-instance v0, Lcom/oneplus/lib/widget/listview/OPListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/listview/OPListView$1;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/listview/OPListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/widget/listview/OPListView;

    .line 28
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "index"    # I
    .param p2, "child"    # Landroid/view/View;
    .param p3, "startValue"    # F

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    .line 330
    const-string v1, "y"

    new-array v2, v2, [F

    aput p3, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 331
    .local v1, "y":Landroid/animation/PropertyValuesHolder;
    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-static {p2, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v1    # "y":Landroid/animation/PropertyValuesHolder;
    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 335
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 336
    .local v1, "pvhArray":[Landroid/animation/PropertyValuesHolder;
    aget-object v5, v1, v4

    .line 337
    .local v5, "y":Landroid/animation/PropertyValuesHolder;
    new-array v2, v2, [F

    aput p3, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-virtual {v5, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 340
    .end local v1    # "pvhArray":[Landroid/animation/PropertyValuesHolder;
    .end local v5    # "y":Landroid/animation/PropertyValuesHolder;
    :goto_0
    return-object v0
.end method

.method private getDividerType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 304
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, -0x1

    return v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/listview/IOPDividerController;->getDividerType(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPListView:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->OPListViewStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 82
    .local v3, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->listview_divider_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    .line 91
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setOverScrollMode(I)V

    .line 93
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000d

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->setDividerHeight(I)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setFooterDividersEnabled(Z)V

    .line 96
    return-void
.end method

.method private isClipToPadding()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return v0
.end method

.method private setDelViewLocation()V
    .locals 23

    .line 595
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    .line 597
    .local v1, "nowFirstPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v2

    .line 598
    .local v2, "nowCurChildCount":I
    const/4 v3, 0x0

    .line 599
    .local v3, "nowLastPage":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    .line 600
    const/4 v3, 0x1

    .line 602
    :cond_0
    const/4 v4, 0x0

    .line 603
    .local v4, "nowFirstPage":Z
    if-nez v1, :cond_1

    .line 604
    const/4 v4, 0x1

    .line 606
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v5

    .line 607
    .local v5, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v7

    .line 609
    .local v7, "bottom":I
    const/4 v8, 0x0

    .line 610
    .local v8, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v9

    .line 611
    .local v9, "childCount":I
    const/4 v10, 0x0

    .line 612
    .local v10, "height":I
    const/4 v11, 0x0

    .line 614
    .local v11, "diff":I
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v12, :cond_2

    .line 615
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    goto :goto_0

    .line 617
    :cond_2
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 619
    :goto_0
    const/4 v12, 0x0

    move v13, v10

    move-object v10, v8

    move v8, v12

    .local v8, "i":I
    .local v10, "child":Landroid/view/View;
    .local v13, "height":I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 620
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 621
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    if-nez v8, :cond_3

    if-eqz v10, :cond_3

    .line 623
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 619
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 626
    .end local v8    # "i":I
    :cond_4
    const/4 v8, 0x1

    .line 627
    .local v8, "childIndex":I
    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    if-nez v14, :cond_11

    .line 628
    if-nez v3, :cond_7

    .line 629
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v14, :cond_5

    .line 630
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 632
    :cond_5
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_6

    .line 633
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 3 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    .line 636
    :cond_6
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 2 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move v14, v12

    .local v14, "i":I
    :goto_2
    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v14, v15, :cond_19

    .line 638
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 637
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 642
    .end local v14    # "i":I
    :cond_7
    if-nez v4, :cond_c

    .line 643
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v14, :cond_8

    .line 644
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 4 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 646
    :cond_8
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v14, :cond_a

    .line 647
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_9

    .line 648
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 9 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 650
    :cond_9
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 10 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 653
    :cond_a
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_b

    .line 654
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 5 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 656
    :cond_b
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 6 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 661
    :cond_c
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v14, :cond_d

    .line 662
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 11 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 664
    :cond_d
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_e

    .line 665
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 7 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 667
    :cond_e
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 8 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_3
    move v14, v12

    .restart local v14    # "i":I
    :goto_4
    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    if-ge v14, v15, :cond_f

    .line 674
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v16, v14, 0x1

    mul-int v16, v16, v13

    add-int v6, v7, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_4

    .line 679
    .end local v14    # "i":I
    :cond_f
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v11, v6, v2

    .line 680
    move v6, v12

    .local v6, "i":I
    :goto_5
    if-ge v6, v11, :cond_10

    .line 681
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 680
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 685
    .end local v6    # "i":I
    :cond_10
    const/4 v6, 0x1

    .line 686
    .end local v8    # "childIndex":I
    .local v6, "childIndex":I
    move v8, v6

    .end local v6    # "childIndex":I
    .restart local v8    # "childIndex":I
    :goto_6
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_19

    .line 687
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v14, v13

    mul-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 688
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 692
    :cond_11
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v6, :cond_13

    .line 693
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_12

    goto :goto_8

    .line 696
    :cond_12
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 14 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 699
    :cond_13
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_15

    .line 700
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v14, :cond_14

    .line 701
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 12 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 704
    :cond_14
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 13 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    move v6, v12

    .local v6, "i":I
    :goto_7
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v6, v14, :cond_18

    .line 706
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 705
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 710
    .end local v6    # "i":I
    :cond_15
    if-nez v4, :cond_17

    .line 711
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v14, :cond_16

    .line 713
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 15 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 715
    :cond_16
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 16 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 718
    :cond_17
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 17 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_18
    :goto_8
    const/4 v6, 0x1

    .line 725
    .end local v8    # "childIndex":I
    .local v6, "childIndex":I
    move v8, v6

    .end local v6    # "childIndex":I
    .restart local v8    # "childIndex":I
    :goto_9
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_19

    .line 726
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v14, v13

    mul-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 727
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 732
    :cond_19
    :goto_a
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v6, v14

    .line 733
    .end local v11    # "diff":I
    .local v6, "diff":I
    move v11, v12

    .local v11, "i":I
    :goto_b
    if-ge v11, v6, :cond_1a

    .line 734
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v15, v11, 0x1

    mul-int/2addr v15, v13

    add-int/2addr v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 738
    .end local v11    # "i":I
    :cond_1a
    const/4 v11, 0x0

    .line 739
    .local v11, "invertCount":I
    add-int/lit8 v14, v9, -0x1

    .restart local v14    # "i":I
    :goto_c
    if-ltz v14, :cond_1d

    .line 740
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v15, v12, :cond_1b

    .line 741
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 742
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 743
    :cond_1b
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-ge v12, v15, :cond_1c

    .line 744
    add-int/lit8 v11, v11, 0x1

    .line 739
    :cond_1c
    :goto_d
    add-int/lit8 v14, v14, -0x1

    const/4 v12, 0x0

    goto :goto_c

    .line 749
    .end local v14    # "i":I
    :cond_1d
    const/4 v12, 0x1

    if-le v11, v12, :cond_20

    .line 750
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 751
    .local v12, "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 752
    .local v14, "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 753
    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 754
    const/4 v15, 0x0

    .line 755
    .local v15, "tmpPos":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_e
    move/from16 v19, v18

    .end local v18    # "i":I
    .local v19, "i":I
    move/from16 v20, v1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local v1    # "nowFirstPosition":I
    .local v20, "nowFirstPosition":I
    move/from16 v21, v2

    move/from16 v2, v19

    if-ge v2, v1, :cond_1f

    .line 756
    .end local v19    # "i":I
    .local v2, "i":I
    .local v21, "nowCurChildCount":I
    if-ge v2, v11, :cond_1e

    .line 757
    sub-int v1, v11, v2

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 761
    .end local v15    # "tmpPos":I
    .local v1, "tmpPos":I
    :goto_f
    move v15, v1

    goto :goto_10

    .line 759
    .end local v1    # "tmpPos":I
    .restart local v15    # "tmpPos":I
    :cond_1e
    const/16 v16, 0x1

    move v1, v2

    goto :goto_f

    .line 761
    :goto_10
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v22, v3

    move-object/from16 v3, v17

    check-cast v3, Landroid/view/View;

    .end local v3    # "nowLastPage":Z
    .local v22, "nowLastPage":Z
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v18, v2, 0x1

    .end local v2    # "i":I
    .restart local v18    # "i":I
    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    goto :goto_e

    .line 765
    .end local v12    # "tmpViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "tmpOriTopList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v15    # "tmpPos":I
    .end local v18    # "i":I
    .end local v22    # "nowLastPage":Z
    .restart local v3    # "nowLastPage":Z
    :cond_1f
    move/from16 v22, v3

    .end local v3    # "nowLastPage":Z
    .restart local v22    # "nowLastPage":Z
    goto :goto_11

    .end local v20    # "nowFirstPosition":I
    .end local v21    # "nowCurChildCount":I
    .end local v22    # "nowLastPage":Z
    .local v1, "nowFirstPosition":I
    .local v2, "nowCurChildCount":I
    .restart local v3    # "nowLastPage":Z
    :cond_20
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v1    # "nowFirstPosition":I
    .end local v2    # "nowCurChildCount":I
    .end local v3    # "nowLastPage":Z
    .restart local v20    # "nowFirstPosition":I
    .restart local v21    # "nowCurChildCount":I
    .restart local v22    # "nowLastPage":Z
    :goto_11
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 3
    .param p1, "childIndex"    # I

    .line 312
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 313
    .local v0, "positionInAdapter":I
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v1

    .line 314
    .local v1, "dividerType":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private startDelDropAnimation()V
    .locals 8

    .line 551
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 552
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->setDelViewLocation()V

    .line 554
    const/16 v0, 0xc8

    .line 555
    .local v0, "minDuration":I
    const/16 v1, 0xc8

    .line 556
    .local v1, "time":I
    const/4 v2, 0x0

    .line 558
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "time":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/view/View;

    .line 563
    const/16 v4, 0xc8

    .line 565
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v1, v2, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 566
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 568
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 570
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v5, v7, v3

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "i":I
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oneplus/lib/widget/listview/OPListView$3;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/listview/OPListView$3;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 592
    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 10

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 487
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 488
    .local v1, "size":I
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 489
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 490
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 493
    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 495
    return-void

    .line 499
    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 500
    const/16 v3, 0xc8

    .line 504
    .local v3, "time":I
    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 506
    .local v4, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    move v5, v2

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 507
    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 508
    .local v6, "child":Landroid/view/View;
    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 509
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 510
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v0, [Landroid/animation/Animator;

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 506
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 515
    .end local v5    # "i":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/lib/widget/listview/OPListView$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/listview/OPListView$2;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 546
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 114
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 117
    .local v2, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 118
    .local v3, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 119
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 120
    .local v7, "drawOverscrollFooter":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 122
    .local v8, "drawDividers":Z
    :goto_2
    if-nez v8, :cond_4

    if-nez v6, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    .line 232
    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v27, v6

    move/from16 v28, v7

    goto/16 :goto_13

    .line 124
    :cond_4
    :goto_3
    iget-object v9, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 125
    .local v9, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingLeft()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v10

    .line 129
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getHeaderViewsCount()I

    move-result v11

    .line 130
    .local v11, "headerCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getCount()I

    move-result v12

    .line 131
    .local v12, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFooterViewsCount()I

    move-result v13

    sub-int v13, v12, v13

    .line 132
    .local v13, "footerLimit":I
    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 133
    .local v14, "headerDividers":Z
    iget-boolean v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 134
    .local v15, "footerDividers":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v16

    .line 135
    .local v16, "first":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    .line 141
    .local v17, "adapter":Landroid/widget/ListAdapter;
    const/16 v18, 0x0

    .line 142
    .local v18, "effectivePaddingTop":I
    const/16 v19, 0x0

    .line 143
    .local v19, "effectivePaddingBottom":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isClipToPadding()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingTop()I

    move-result v18

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingBottom()I

    move-result v19

    .line 148
    .end local v18    # "effectivePaddingTop":I
    .local v5, "effectivePaddingTop":I
    :cond_5
    move/from16 v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v20

    sub-int v18, v18, v20

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v20

    add-int v4, v18, v20

    .line 149
    .local v4, "listBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isStackFromBottom()Z

    move-result v18

    move-object/from16 v21, v2

    .end local v2    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v21, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-nez v18, :cond_14

    .line 150
    const/16 v18, 0x0

    .line 153
    .local v18, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v20

    .line 154
    .local v20, "scrollY":I
    if-lez v10, :cond_6

    if-gez v20, :cond_6

    .line 155
    if-eqz v8, :cond_6

    .line 156
    const/4 v2, 0x0

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 158
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 162
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v10, :cond_13

    .line 163
    move-object/from16 v23, v3

    add-int v3, v16, v2

    .line 164
    .local v3, "itemIndex":I
    .local v23, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-ge v3, v11, :cond_7

    const/16 v22, 0x1

    goto :goto_5

    :cond_7
    const/16 v22, 0x0

    .line 165
    .local v22, "isHeader":Z
    :goto_5
    if-lt v3, v13, :cond_8

    const/16 v24, 0x1

    goto :goto_6

    :cond_8
    const/16 v24, 0x0

    .line 166
    .local v24, "isFooter":Z
    :goto_6
    if-nez v14, :cond_9

    if-nez v22, :cond_a

    :cond_9
    if-nez v15, :cond_b

    if-nez v24, :cond_a

    goto :goto_7

    .line 162
    .end local v3    # "itemIndex":I
    .end local v22    # "isHeader":Z
    .end local v24    # "isFooter":Z
    :cond_a
    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    goto :goto_b

    .line 167
    .restart local v3    # "itemIndex":I
    .restart local v22    # "isHeader":Z
    .restart local v24    # "isFooter":Z
    :cond_b
    :goto_7
    move/from16 v25, v12

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 168
    .local v12, "child":Landroid/view/View;
    .local v25, "itemCount":I
    move/from16 v26, v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 169
    .end local v18    # "bottom":I
    .local v5, "bottom":I
    .local v26, "effectivePaddingTop":I
    move/from16 v27, v6

    add-int/lit8 v6, v10, -0x1

    .end local v6    # "drawOverscrollHeader":Z
    .local v27, "drawOverscrollHeader":Z
    if-ne v2, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    .line 171
    .local v6, "isLastItem":Z
    :goto_8
    if-eqz v8, :cond_11

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v18

    if-lez v18, :cond_11

    if-ge v5, v4, :cond_11

    if-eqz v7, :cond_e

    if-nez v6, :cond_d

    goto :goto_9

    .line 162
    .end local v3    # "itemIndex":I
    .end local v6    # "isLastItem":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v22    # "isHeader":Z
    .end local v24    # "isFooter":Z
    :cond_d
    move/from16 v28, v7

    goto :goto_a

    .line 172
    .restart local v3    # "itemIndex":I
    .restart local v6    # "isLastItem":Z
    .restart local v12    # "child":Landroid/view/View;
    .restart local v22    # "isHeader":Z
    .restart local v24    # "isFooter":Z
    :cond_e
    :goto_9
    move/from16 v28, v7

    add-int/lit8 v7, v3, 0x1

    .line 176
    .local v7, "nextIndex":I
    .local v28, "drawOverscrollFooter":Z
    if-nez v14, :cond_f

    if-nez v22, :cond_12

    if-lt v7, v11, :cond_12

    :cond_f
    if-nez v6, :cond_10

    if-nez v15, :cond_10

    if-nez v24, :cond_12

    if-ge v7, v13, :cond_12

    .line 179
    :cond_10
    move/from16 v29, v3

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .end local v3    # "itemIndex":I
    .local v29, "itemIndex":I
    float-to-int v3, v3

    .line 180
    .local v3, "translationOffsetY":I
    move/from16 v30, v6

    add-int v6, v5, v3

    .end local v6    # "isLastItem":Z
    .local v30, "isLastItem":Z
    iput v6, v9, Landroid/graphics/Rect;->top:I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    .line 182
    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .end local v3    # "translationOffsetY":I
    .end local v7    # "nextIndex":I
    .end local v12    # "child":Landroid/view/View;
    .end local v22    # "isHeader":Z
    .end local v24    # "isFooter":Z
    .end local v29    # "itemIndex":I
    .end local v30    # "isLastItem":Z
    goto :goto_a

    .line 162
    .end local v28    # "drawOverscrollFooter":Z
    .local v7, "drawOverscrollFooter":Z
    :cond_11
    move/from16 v28, v7

    .end local v7    # "drawOverscrollFooter":Z
    .restart local v28    # "drawOverscrollFooter":Z
    :cond_12
    :goto_a
    move/from16 v18, v5

    .end local v5    # "bottom":I
    .restart local v18    # "bottom":I
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v23

    move/from16 v12, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_4

    .line 188
    .end local v2    # "i":I
    .end local v18    # "bottom":I
    .end local v20    # "scrollY":I
    .end local v23    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v25    # "itemCount":I
    .end local v26    # "effectivePaddingTop":I
    .end local v27    # "drawOverscrollHeader":Z
    .end local v28    # "drawOverscrollFooter":Z
    .local v3, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v5, "effectivePaddingTop":I
    .local v6, "drawOverscrollHeader":Z
    .restart local v7    # "drawOverscrollFooter":Z
    .local v12, "itemCount":I
    :cond_13
    move-object/from16 v23, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    .end local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v5    # "effectivePaddingTop":I
    .end local v6    # "drawOverscrollHeader":Z
    .end local v7    # "drawOverscrollFooter":Z
    .end local v12    # "itemCount":I
    .restart local v23    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "itemCount":I
    .restart local v26    # "effectivePaddingTop":I
    .restart local v27    # "drawOverscrollHeader":Z
    .restart local v28    # "drawOverscrollFooter":Z
    goto/16 :goto_13

    .line 190
    .end local v23    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v25    # "itemCount":I
    .end local v26    # "effectivePaddingTop":I
    .end local v27    # "drawOverscrollHeader":Z
    .end local v28    # "drawOverscrollFooter":Z
    .restart local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "effectivePaddingTop":I
    .restart local v6    # "drawOverscrollHeader":Z
    .restart local v7    # "drawOverscrollFooter":Z
    .restart local v12    # "itemCount":I
    :cond_14
    move-object/from16 v23, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    .end local v3    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v5    # "effectivePaddingTop":I
    .end local v6    # "drawOverscrollHeader":Z
    .end local v7    # "drawOverscrollFooter":Z
    .end local v12    # "itemCount":I
    .restart local v23    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "itemCount":I
    .restart local v26    # "effectivePaddingTop":I
    .restart local v27    # "drawOverscrollHeader":Z
    .restart local v28    # "drawOverscrollFooter":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v2

    .line 191
    .local v2, "scrollY":I
    if-eqz v27, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    .line 193
    .local v3, "start":I
    :goto_c
    move v5, v3

    .local v5, "i":I
    :goto_d
    if-ge v5, v10, :cond_21

    .line 194
    add-int v6, v16, v5

    .line 195
    .local v6, "itemIndex":I
    if-ge v6, v11, :cond_16

    const/4 v7, 0x1

    goto :goto_e

    :cond_16
    const/4 v7, 0x0

    .line 196
    .local v7, "isHeader":Z
    :goto_e
    if-lt v6, v13, :cond_17

    const/4 v12, 0x1

    goto :goto_f

    :cond_17
    const/4 v12, 0x0

    .line 197
    .local v12, "isFooter":Z
    :goto_f
    if-nez v14, :cond_19

    if-nez v7, :cond_18

    goto :goto_10

    .line 193
    .end local v6    # "itemIndex":I
    .end local v7    # "isHeader":Z
    .end local v12    # "isFooter":Z
    :cond_18
    move/from16 v32, v2

    move/from16 v34, v3

    move/from16 v31, v4

    move/from16 v4, v26

    goto :goto_12

    .line 197
    .restart local v6    # "itemIndex":I
    .restart local v7    # "isHeader":Z
    .restart local v12    # "isFooter":Z
    :cond_19
    :goto_10
    if-nez v15, :cond_1a

    if-nez v12, :cond_18

    .line 198
    :cond_1a
    move/from16 v31, v4

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 199
    .local v4, "child":Landroid/view/View;
    .local v31, "listBottom":I
    move/from16 v32, v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    .line 200
    .local v2, "top":I
    .local v32, "scrollY":I
    if-eqz v8, :cond_1f

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v18

    if-eqz v18, :cond_1f

    move-object/from16 v33, v4

    move/from16 v4, v26

    if-le v2, v4, :cond_1e

    .line 201
    .end local v26    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .local v33, "child":Landroid/view/View;
    if-ne v5, v3, :cond_1b

    const/16 v18, 0x1

    goto :goto_11

    :cond_1b
    const/16 v18, 0x0

    .line 202
    .local v18, "isFirstItem":Z
    :goto_11
    move/from16 v34, v3

    add-int/lit8 v3, v6, -0x1

    .line 206
    .local v3, "previousIndex":I
    .local v34, "start":I
    if-nez v14, :cond_1c

    if-nez v7, :cond_20

    if-lt v3, v11, :cond_20

    :cond_1c
    if-nez v18, :cond_1d

    if-nez v15, :cond_1d

    if-nez v12, :cond_20

    if-ge v3, v13, :cond_20

    .line 208
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v20

    move/from16 v35, v3

    sub-int v3, v2, v20

    .end local v3    # "previousIndex":I
    .local v35, "previousIndex":I
    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 209
    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 214
    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v0, v1, v9, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .end local v2    # "top":I
    .end local v6    # "itemIndex":I
    .end local v7    # "isHeader":Z
    .end local v12    # "isFooter":Z
    .end local v18    # "isFirstItem":Z
    .end local v33    # "child":Landroid/view/View;
    .end local v35    # "previousIndex":I
    goto :goto_12

    .line 193
    .end local v34    # "start":I
    .local v3, "start":I
    :cond_1e
    move/from16 v34, v3

    .end local v3    # "start":I
    .restart local v34    # "start":I
    goto :goto_12

    .end local v4    # "effectivePaddingTop":I
    .end local v34    # "start":I
    .restart local v3    # "start":I
    .restart local v26    # "effectivePaddingTop":I
    :cond_1f
    move/from16 v34, v3

    move/from16 v4, v26

    .end local v3    # "start":I
    .end local v26    # "effectivePaddingTop":I
    .restart local v4    # "effectivePaddingTop":I
    .restart local v34    # "start":I
    :cond_20
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v26, v4

    move/from16 v4, v31

    move/from16 v2, v32

    move/from16 v3, v34

    goto :goto_d

    .line 220
    .end local v5    # "i":I
    .end local v31    # "listBottom":I
    .end local v32    # "scrollY":I
    .end local v34    # "start":I
    .local v2, "scrollY":I
    .restart local v3    # "start":I
    .local v4, "listBottom":I
    .restart local v26    # "effectivePaddingTop":I
    :cond_21
    move/from16 v32, v2

    move/from16 v34, v3

    move/from16 v31, v4

    move/from16 v4, v26

    .end local v2    # "scrollY":I
    .end local v3    # "start":I
    .end local v26    # "effectivePaddingTop":I
    .local v4, "effectivePaddingTop":I
    .restart local v31    # "listBottom":I
    .restart local v32    # "scrollY":I
    .restart local v34    # "start":I
    if-lez v10, :cond_22

    if-lez v32, :cond_22

    .line 221
    if-eqz v8, :cond_22

    .line 222
    move/from16 v2, v31

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 223
    .end local v31    # "listBottom":I
    .local v2, "listBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 224
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v9, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 232
    .end local v2    # "listBottom":I
    .end local v4    # "effectivePaddingTop":I
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v10    # "count":I
    .end local v11    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "headerDividers":Z
    .end local v15    # "footerDividers":Z
    .end local v16    # "first":I
    .end local v17    # "adapter":Landroid/widget/ListAdapter;
    .end local v19    # "effectivePaddingBottom":I
    .end local v25    # "itemCount":I
    .end local v32    # "scrollY":I
    .end local v34    # "start":I
    :cond_22
    :goto_13
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 233
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelDropAnimation()V

    .line 236
    :cond_23
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 272
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p3

    .line 275
    .local v1, "positionInAdapter":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v2

    .line 276
    .local v2, "dividerType":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v3, :cond_1

    .line 277
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 279
    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 281
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 283
    const/16 v3, 0x64

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 284
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x20

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 287
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    return v0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 1

    .line 771
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 0
    .param p1, "clipToPadding"    # Z

    .line 265
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 266
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    .line 267
    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 374
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 375
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 376
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 381
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 382
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    .line 384
    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 385
    return-void

    .line 388
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 389
    .local v1, "listLength":I
    if-nez v1, :cond_3

    .line 390
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 391
    return-void

    .line 394
    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 395
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v3, :cond_4

    .line 396
    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 398
    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v3

    .line 402
    .local v3, "childCount":I
    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_5

    .line 403
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    goto :goto_0

    .line 405
    :cond_5
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    .line 408
    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    .line 409
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    .line 411
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 412
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 414
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 415
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    goto :goto_1

    .line 417
    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 419
    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 420
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    goto :goto_2

    .line 422
    :cond_7
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 424
    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 425
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    goto :goto_3

    .line 427
    :cond_8
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 430
    :goto_3
    const/4 v4, 0x0

    .line 431
    .local v4, "delPos":I
    const/4 v5, 0x0

    .line 432
    .local v5, "belowDeleteCount":I
    move v6, v5

    move v5, v4

    move v4, v0

    .local v4, "i":I
    .local v5, "delPos":I
    .local v6, "belowDeleteCount":I
    :goto_4
    if-ge v4, v1, :cond_b

    .line 433
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 434
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    if-ge v5, v7, :cond_9

    .line 435
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    goto :goto_5

    .line 436
    :cond_9
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v7, v3

    if-ge v5, v7, :cond_a

    .line 437
    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_5

    .line 441
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 432
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 445
    .end local v4    # "i":I
    :cond_b
    const/4 v4, 0x0

    .line 447
    .local v4, "isDel":Z
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz v7, :cond_c

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 448
    :cond_c
    const/4 v4, 0x1

    .line 450
    :cond_d
    const/4 v7, 0x0

    .line 451
    .local v7, "pos":I
    if-nez v4, :cond_e

    .line 452
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    .line 453
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    .line 454
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 455
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_12

    .line 456
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 457
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_8

    .line 460
    :cond_e
    const/4 v8, 0x0

    .line 461
    .local v8, "child":Landroid/view/View;
    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 462
    .local v9, "size":I
    nop

    .local v0, "i":I
    :goto_6
    if-ge v0, v3, :cond_11

    .line 463
    if-lez v9, :cond_f

    .line 464
    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int v7, v10, v0

    .line 465
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 466
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 467
    if-eqz v8, :cond_10

    .line 468
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 471
    :cond_f
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 472
    if-eqz v8, :cond_10

    .line 473
    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 477
    .end local v0    # "i":I
    :cond_11
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v0

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    .line 478
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v10

    sub-int/2addr v0, v10

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    .line 480
    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V

    .line 482
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "size":I
    :cond_12
    :goto_8
    return-void

    .line 371
    .end local v1    # "listLength":I
    .end local v3    # "childCount":I
    .end local v4    # "isDel":Z
    .end local v5    # "delPos":I
    .end local v6    # "belowDeleteCount":I
    .end local v7    # "pos":I
    :cond_13
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    .line 372
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The input parameter d is null!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 768
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    .line 769
    return-void
.end method

.method public setDeleteAnimationListener(Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .line 366
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    .line 367
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 249
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->requestLayout()V

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->invalidate()V

    .line 252
    return-void
.end method

.method public setDividerController(Lcom/oneplus/lib/widget/listview/IOPDividerController;)V
    .locals 0
    .param p1, "dividerController"    # Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 300
    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    .line 301
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    .line 110
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 106
    return-void
.end method
