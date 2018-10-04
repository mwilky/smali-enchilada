.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    }
.end annotation


# static fields
.field private static final MAX_OVERFLOW_SIZE:I = 0x4

.field private static final MIN_OVERFLOW_SIZE:I = 0x2


# instance fields
.field private final mArrow:Landroid/graphics/drawable/Drawable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mIconTextSpacing:I

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsOverflowOpen:Z

.field private final mLineHeight:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mMainPanel:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowUpwards:Z

.field private final mOverflow:Landroid/graphics/drawable/Drawable;

.field private final mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mOverflowButton:Landroid/widget/ImageButton;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

.field private mOverflowPanelSize:Landroid/util/Size;

.field private final mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private final mTmpCoords:[I

.field private final mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTransitionDurationScale:I

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$77YZy6kisO5OnjlgtKp0Zi1V8EY;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$77YZy6kisO5OnjlgtKp0Zi1V8EY;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->access$600(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar;->access$700(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/FloatingToolbar$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10802da

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10802d8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10802d9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10802db

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$900(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    const/16 v2, 0x96

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$1100(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$1100(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isOverflowAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method private calculateOverflowHeight(I)I
    .locals 4

    nop

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method private clearPanels()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private closeOverflow()V
    .locals 15

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v9, v8, v1

    new-instance v10, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;

    move-object v1, v10

    move-object v2, p0

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    new-instance v5, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getX()F

    move-result v6

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v10

    if-eqz v10, :cond_0

    int-to-float v10, v7

    sub-float v10, v6, v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    :cond_0
    int-to-float v10, v7

    add-float/2addr v10, v6

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    invoke-direct {v11, p0, v6, v10, v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v12, 0xfa

    invoke-direct {p0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->clear()V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v12, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x96

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    return-object v0
.end method

.method private createOverflowButton()Landroid/widget/ImageButton;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$-uEfRwR-_1oHxMvRVdmbNRdukDM;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$-uEfRwR-_1oHxMvRVdmbNRdukDM;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$E8FwnPCl7gZpcTlX_UaRPIBRnT0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/-$$Lambda$FloatingToolbar$FloatingToolbarPopup$E8FwnPCl7gZpcTlX_UaRPIBRnT0;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private getAdjustedDuration(I)I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x32

    return v0

    :cond_1
    int-to-float v0, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAdjustedToolbarWidth(I)I
    .locals 4

    move v0, p1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getOverflowWidth()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private hasOverflow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInRTLMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOverflowAnimating()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method public static synthetic lambda$createOverflowButton$1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$createOverflowPanel$2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getOverflowWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v3

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v4, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    return-void
.end method

.method private maybeComputeTransitionDurationScale()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    :cond_0
    return-void
.end method

.method private static measure(Landroid/view/View;)Landroid/util/Size;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private openOverflow()V
    .locals 15

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v11

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v12, v11, v1

    new-instance v13, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;

    move-object v1, v13

    move-object v2, p0

    move v3, v0

    move v4, v8

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;

    invoke-direct {v2, p0, v7, v9, v10}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v4

    if-eqz v4, :cond_0

    int-to-float v4, v0

    add-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_0

    :cond_0
    int-to-float v4, v0

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    :goto_0
    new-instance v5, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v5, p0, v3, v4, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v6, 0xfa

    invoke-direct {p0, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v2, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v6

    int-to-long v13, v6

    invoke-virtual {v5, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v13, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v13, 0xfa

    invoke-virtual {v6, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v6, v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    return-void
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :cond_0
    return-void
.end method

.method private preparePopupContent()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/2addr v6, v4

    iget v7, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v7, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_3

    if-lt v3, v7, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v7

    :goto_0
    move v12, v4

    goto/16 :goto_1

    :cond_0
    if-lt v5, v7, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    if-lt v5, v4, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v4, v8

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_3
    nop

    invoke-direct {v0, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v4

    add-int/2addr v4, v6

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v11

    add-int/2addr v8, v7

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v11, v7

    if-lt v3, v4, :cond_4

    sub-int v12, v3, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    iput-boolean v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_1

    :cond_4
    if-lt v3, v7, :cond_5

    if-lt v8, v4, :cond_5

    sub-int v12, v8, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v7

    iput-boolean v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_1

    :cond_5
    if-lt v5, v4, :cond_6

    sub-int v12, v5, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iput-boolean v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_1

    :cond_6
    if-lt v5, v7, :cond_7

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-lt v12, v4, :cond_7

    sub-int v12, v11, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v7

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    iput-boolean v9, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_1

    :cond_7
    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-direct {v0, v12}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    iget-object v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iput-boolean v10, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    :goto_1
    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v4, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v4, v4, v10

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v8, v8, v9

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v11, v13}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v11, v11, v10

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v9, v13, v9

    sub-int v13, v4, v11

    sub-int v14, v8, v9

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v0, v2, v13

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, v12, v14

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private refreshViewPort()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040246

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :goto_1
    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v5, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    :goto_3
    return-void
.end method

.method private static setSize(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method private static setWidth(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    div-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_0

    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    :cond_3
    return-void
.end method

.method private updatePopupSize()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v1, p2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const v6, 0x1020041

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    if-eq v7, v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v4, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    const/4 v4, -0x1

    const/4 v7, 0x1

    move v8, v4

    move v4, v1

    move v1, v7

    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/MenuItem;

    if-nez v1, :cond_2

    invoke-interface {v9}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v10

    if-eqz v10, :cond_2

    nop

    move/from16 v7, p2

    move/from16 v16, v8

    goto/16 :goto_8

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v9}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    if-ne v10, v6, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v5

    :goto_3
    iget-object v11, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v12, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    invoke-static {v11, v9, v12, v10}, Lcom/android/internal/widget/FloatingToolbar;->access$2000(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v11

    if-nez v10, :cond_4

    instance-of v12, v11, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_4

    move-object v12, v11

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v13, 0x11

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    if-eqz v1, :cond_5

    nop

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v14, v12

    double-to-int v14, v14

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v11, v14, v15, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v5, v7, :cond_6

    move v5, v7

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    nop

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v15

    move/from16 v16, v8

    int-to-double v7, v15

    mul-double/2addr v12, v7

    double-to-int v7, v12

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v11, v6, v14, v7, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_5

    :cond_7
    move/from16 v16, v8

    :goto_5
    const/4 v6, 0x0

    invoke-virtual {v11, v6, v6}, Landroid/view/View;->measure(II)V

    nop

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move/from16 v7, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int v8, v4, v8

    if-gt v6, v8, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v5, :cond_9

    if-gt v6, v4, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    if-nez v8, :cond_a

    if-eqz v12, :cond_c

    :cond_a
    invoke-direct {v0, v11, v9}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    invoke-interface {v9}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v13, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iput v6, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v11, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v4, v6

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    invoke-interface {v9}, Landroid/view/MenuItem;->getGroupId()I

    move-result v13

    const/4 v1, 0x0

    nop

    move v8, v13

    const/4 v5, 0x0

    const v6, 0x1020041

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_b
    move/from16 v7, p2

    move/from16 v16, v8

    :cond_c
    :goto_8
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v6, v8}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_d
    iget-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-static {v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object v2
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    invoke-direct {p0, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    return-void
.end method

.method public setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v1

    xor-int/2addr v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return v0
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
