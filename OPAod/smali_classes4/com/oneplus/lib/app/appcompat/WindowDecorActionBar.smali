.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.super Lcom/oneplus/lib/app/appcompat/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;,
        Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

.field mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    nop

    .line 76
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .line 166
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 132
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 149
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 157
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 167
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 169
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, "decor":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 171
    if-nez p2, :cond_0

    .line 172
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    .line 174
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 176
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 132
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 149
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 157
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 177
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "layout"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 126
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 132
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 149
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 157
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 187
    nop

    .line 188
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .line 733
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 734
    return v0

    .line 735
    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 738
    :cond_1
    return v0

    .line 736
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private cleanupTabs()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeAllTabs()V

    .line 425
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 426
    return-void
.end method

.method private configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V
    .locals 5
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 521
    .local v0, "tabi":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    .line 523
    .local v1, "callback":Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;
    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 528
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 530
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 531
    .local v2, "count":I
    add-int/lit8 v3, p2, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 532
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 531
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 534
    .end local v3    # "i":I
    :cond_0
    return-void

    .line 524
    .end local v2    # "count":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Action Bar Tab must have a Callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private ensureTabsExist()V
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "tabScroller":Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 292
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 295
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 297
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 300
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 302
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 304
    :goto_1
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    .line 305
    return-void
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 234
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    .line 235
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object v0

    .line 236
    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_1

    .line 237
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "null"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .locals 2

    .line 686
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    .line 688
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 691
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 693
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 9
    .param p1, "decor"    # Landroid/view/View;

    .line 192
    sget v0, Lcom/oneplus/commonctrl/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    .line 193
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 196
    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 197
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    .line 199
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    .line 202
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 210
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 211
    .local v0, "current":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 212
    .local v1, "homeAsUp":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 213
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 216
    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v4

    .line 217
    .local v4, "abp":Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;
    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 218
    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 220
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    sget v8, Lcom/oneplus/commonctrl/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 223
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 224
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 226
    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 227
    .local v2, "elevation":I
    if-eqz v2, :cond_6

    .line 228
    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setElevation(F)V

    .line 230
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    return-void

    .line 203
    .end local v0    # "current":I
    .end local v1    # "homeAsUp":Z
    .end local v2    # "elevation":I
    .end local v4    # "abp":Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    .line 261
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 266
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 269
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    .line 270
    if-eqz v0, :cond_2

    .line 271
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 279
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCollapsible(Z)V

    .line 280
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 281
    return-void
.end method

.method private shouldAnimateContextView()Z
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .locals 2

    .line 661
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    .line 663
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 666
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 668
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3
    .param p1, "fromSystem"    # Z

    .line 744
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 747
    .local v0, "shown":Z
    if-eqz v0, :cond_0

    .line 748
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_1

    .line 749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 750
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doShow(Z)V

    goto :goto_0

    .line 753
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    .line 754
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    .line 755
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doHide(Z)V

    .line 758
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 538
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V

    .line 539
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I

    .line 543
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V

    .line 544
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 558
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V

    .line 561
    if-eqz p3, :cond_0

    .line 562
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 564
    :cond_0
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 548
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 549
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V

    .line 550
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->configureTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;I)V

    .line 551
    if-eqz p2, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 554
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 9
    .param p1, "toActionMode"    # Z

    .line 849
    if-eqz p1, :cond_0

    .line 850
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->showForActionMode()V

    goto :goto_0

    .line 852
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->hideForActionMode()V

    .line 855
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 857
    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v2, v6, v7}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 864
    .local v0, "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .local v1, "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_1

    .line 867
    .end local v0    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 869
    .local v0, "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v2, v1, v6, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 872
    .local v0, "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .restart local v1    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :goto_1
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 873
    .local v2, "set":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    invoke-virtual {v2, v0, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 874
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 875
    .end local v0    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "set":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    goto :goto_2

    .line 876
    :cond_2
    if-eqz p1, :cond_3

    .line 877
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 880
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v3}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    .line 885
    :goto_2
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->collapseActionView()V

    .line 950
    const/4 v0, 0x1

    return v0

    .line 952
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    .line 311
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 313
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .line 342
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_0

    .line 343
    return-void

    .line 345
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 349
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public doHide(Z)V
    .locals 5
    .param p1, "fromSystem"    # Z

    .line 811
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 815
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 818
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTransitioning(Z)V

    .line 819
    new-instance v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 820
    .local v0, "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 821
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 822
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 823
    .local v3, "topLeft":[I
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    .line 824
    aget v1, v3, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    .line 826
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 827
    .local v1, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 828
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 829
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 830
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 832
    :cond_3
    sget-object v3, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 833
    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 834
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 835
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 836
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 837
    .end local v0    # "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .end local v1    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "endingY":F
    goto :goto_0

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 840
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 6
    .param p1, "fromSystem"    # Z

    .line 761
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setVisibility(I)V

    .line 766
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 771
    .local v0, "startingY":F
    if-eqz p1, :cond_2

    .line 772
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 773
    .local v2, "topLeft":[I
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    .line 774
    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 776
    .end local v2    # "topLeft":[I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 777
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 778
    .local v2, "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 779
    .local v3, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 780
    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 781
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 782
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 783
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 785
    :cond_3
    sget-object v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 786
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 794
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 795
    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 796
    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    .line 797
    .end local v0    # "startingY":F
    .end local v2    # "anim":Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
    .end local v3    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_0

    .line 798
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 799
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 800
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 801
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 805
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_6

    .line 806
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 808
    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 649
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    .line 650
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .line 1285
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1291
    const/4 v0, 0x0

    return v0

    .line 1287
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 1279
    return v1

    .line 1275
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v1

    nop

    :cond_0
    return v1

    .line 1277
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 1332
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 895
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 896
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 897
    .local v1, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 898
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 900
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_0

    .line 901
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0

    .line 903
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 906
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "targetThemeRes":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 698
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 700
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 843
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 845
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTitleTruncated()Z
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    .line 568
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 256
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    .line 940
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .line 944
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 316
    iput p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    .line 317
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->cleanupTabs()V

    .line 415
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnMenuVisibilityListener;

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public removeTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 573
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->removeTabAt(I)V

    .line 574
    return-void
.end method

.method public removeTabAt(I)V
    .locals 6
    .param p1, "position"    # I

    .line 578
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-nez v0, :cond_0

    .line 580
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 585
    .local v0, "selectedTabPosition":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeTabAt(I)V

    .line 586
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 587
    .local v1, "removedTab":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;
    if-eqz v1, :cond_2

    .line 588
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 592
    .local v2, "newTabCount":I
    move v3, p1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 593
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 592
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 596
    .end local v3    # "i":I
    :cond_3
    if-ne v0, p1, :cond_5

    .line 597
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 599
    :cond_5
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 440
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 442
    const/4 v1, 0x1

    return v1

    .line 444
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 3
    .param p1, "tab"    # Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    .line 603
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 604
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v1

    nop

    :cond_0
    iput v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 605
    return-void

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .local v0, "trans":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_0

    .line 614
    .end local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    .line 617
    .restart local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_3

    .line 618
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_6

    .line 619
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabReselected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 620
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_1

    .line 623
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getPosition()I

    move-result v1

    nop

    :cond_4
    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setTabSelected(I)V

    .line 624
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_5

    .line 625
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabUnselected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 627
    :cond_5
    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    .line 628
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_6

    .line 629
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;->getCallback()Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSelectedTab:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$TabListener;->onTabSelected(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 633
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 634
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 636
    :cond_7
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 467
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 468
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .line 355
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    .line 356
    invoke-interface {v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 355
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    .line 357
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1257
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1258
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/oneplus/lib/app/appcompat/ActionBar$LayoutParams;

    .line 1262
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 1264
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1365
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1366
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1368
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .line 371
    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 372
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .line 452
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 456
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 459
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 460
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 464
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .line 381
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 382
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .line 366
    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 367
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .line 376
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 377
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 1
    .param p1, "useLogo"    # Z

    .line 361
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    .line 362
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .line 246
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 247
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 724
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 729
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .line 704
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 709
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 710
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 931
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(I)V

    .line 932
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 926
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 927
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 921
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(I)V

    .line 922
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 916
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 917
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 386
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 387
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1338
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    .line 1339
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1343
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1344
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    .line 1268
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1269
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1352
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    .line 1353
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 1357
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1358
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 1302
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 1303
    .local v0, "oldMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1306
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 1307
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 1310
    :goto_0
    if-eq v0, p1, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_1

    .line 1311
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v2, :cond_1

    .line 1312
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1315
    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setNavigationMode(I)V

    .line 1316
    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 1318
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ensureTabsExist()V

    .line 1319
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    .line 1320
    iget v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 1321
    iget v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1322
    iput v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1326
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    const/4 v4, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v5, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    :goto_2
    invoke-interface {v3, v5}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCollapsible(Z)V

    .line 1327
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_5

    move v2, v4

    nop

    :cond_5
    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 1328
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->selectTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V

    .line 403
    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 406
    nop

    .line 411
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 327
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    .line 328
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 331
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 476
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 471
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 396
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 448
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 449
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 391
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 429
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 434
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public show()V
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    .line 656
    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 658
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 673
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public startActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    .line 499
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 504
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->killMode()V

    .line 505
    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V

    .line 506
    .local v0, "mode":Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActionMode:Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;

    .line 510
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 511
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initForMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    .line 512
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->animateToMode(Z)V

    .line 513
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 514
    return-object v0

    .line 516
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
