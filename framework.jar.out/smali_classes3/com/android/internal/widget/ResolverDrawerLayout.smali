.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final ANIM_TITLE_BAR_DUR:I = 0x190

.field private static final TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private mActivePointerId:I

.field private mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

.field private mAnimTitleBarBg:Landroid/widget/ImageView;

.field private mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

.field private mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

.field private mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mAnimTitleBarDivider:Landroid/widget/ImageView;

.field private mAnimTitleBarIcon:Landroid/widget/ImageView;

.field private mAnimTitleBarText:Landroid/widget/TextView;

.field private mAnimatedTitleBar:Z

.field private mAnimationTitleBar:Landroid/widget/RelativeLayout;

.field private mAnimationTitleBarMaxHeight:I

.field private mCollapseOffset:F

.field private mCollapsibleHeight:I

.field private mCollapsibleHeightReserved:I

.field private mDismissLocked:Z

.field private mDismissOnScrollerFinished:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mMaxCollapsedHeight:I

.field private mMaxCollapsedHeightSmall:I

.field private mMaxWidth:I

.field private final mMinFlingVelocity:F

.field private mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

.field private mOpenOnClick:Z

.field private mOpenOnLayout:Z

.field private mOrigTitle:Landroid/widget/TextView;

.field private mOrigTitleBar:Landroid/widget/RelativeLayout;

.field private mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mShowAtTop:Z

.field private mSmallCollapsed:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private final mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final mTouchSlop:I

.field private mUncollapsibleHeight:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimatedTitleBar:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimationTitleBar:Landroid/widget/RelativeLayout;

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimationTitleBarMaxHeight:I

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    sget-object v2, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x1080719

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method private abortAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ResolverDrawerLayout;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ResolverDrawerLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    return v0
.end method

.method private animateTitleBar(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    new-array v0, v5, [I

    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    aput v6, v0, v4

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimationTitleBarMaxHeight:I

    aput v6, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/internal/widget/ResolverDrawerLayout$2;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$2;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/internal/widget/ResolverDrawerLayout$3;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$3;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    new-array v0, v5, [I

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimationTitleBarMaxHeight:I

    aput v6, v0, v4

    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    aput v6, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/internal/widget/ResolverDrawerLayout$4;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$4;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_3

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$5;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$5;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimatedTitleBar:Z

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimatedTitleBar:Z

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

    invoke-interface {v0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;->onFullscreenChanged(Z)V

    :cond_4
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimatedTitleBar:Z

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimatedTitleBar:Z

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgAnimatorRev:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarAlphaAnimatorRev:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

    invoke-interface {v0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;->onFullscreenChanged(Z)V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private dismiss()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$1;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findChildUnder(FF)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private findListChildUnder(FF)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getMaxCollapsedHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static isChildUnder(Landroid/view/View;FF)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    cmpl-float v4, p1, v0

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private isDescendantClipped(Landroid/view/View;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    move-object v0, p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eq v1, p0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_2
    if-ge v4, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_4

    move v3, v5

    nop

    :cond_4
    return v3
.end method

.method private isDismissable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDragging()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isListChildUnderClipped(FF)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onCollapsedChanged(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private performDrag(F)F
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v0, p1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float p1, v0, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move p1, v3

    :goto_0
    const/4 v5, 0x1

    if-ge p1, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez p1, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v8, v7

    add-float/2addr v8, v4

    const/high16 v9, 0x41a00000    # 20.0f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->animateTitleBar(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->animateTitleBar(Z)V

    :goto_1
    int-to-float v5, v7

    add-float/2addr v5, v4

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    neg-int v5, v7

    int-to-float v4, v5

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v7, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v7, :cond_3

    float-to-int v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_5

    move p1, v5

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    move v3, v5

    nop

    :cond_6
    move v1, v3

    if-eq p1, v1, :cond_7

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    return v4

    :cond_8
    return v1
.end method

.method private resetTouch()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method private smoothScrollTo(IF)V
    .locals 13

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v0, v0

    sub-int v7, p1, v0

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, v8

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    int-to-float v1, v9

    int-to-float v3, v9

    invoke-direct {p0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v1, v3

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    const/4 v2, 0x4

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v4, v11, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :goto_0
    const/16 v1, 0x12c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v0

    move v5, v7

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method private updateCollapseOffset(IZ)Z
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v4, :cond_3

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    int-to-float v5, p1

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    :goto_1
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_4

    move v1, v3

    nop

    :cond_4
    if-eq v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    :cond_5
    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v0

    :goto_2
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    :goto_3
    return v3
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchOnDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAtTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    return v0
.end method

.method public isCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmallCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    :cond_1
    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v1, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    nop

    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    nop

    :cond_6
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v6

    move v8, v3

    move-object v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    if-eqz v11, :cond_0

    move-object v3, v9

    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    nop

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    iget v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v8

    iget-boolean v12, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v12, :cond_2

    int-to-float v12, v11

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v12, v13

    float-to-int v11, v12

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int v14, v5, v4

    sub-int v15, v14, v13

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v4

    add-int v7, v15, v13

    invoke-virtual {v9, v15, v11, v7, v12}, Landroid/view/View;->layout(IIII)V

    move/from16 v17, v1

    iget v1, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v1

    move v8, v12

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v17

    goto :goto_0

    :cond_3
    move/from16 v17, v1

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int v10, v9, v10

    iget-object v11, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v1, v10, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v11

    xor-int/2addr v11, v7

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_7

    const v1, 0x10204da

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    new-instance v9, Lcom/android/internal/widget/ResolverDrawerLayout$6;

    invoke-direct {v9, v0}, Lcom/android/internal/widget/ResolverDrawerLayout$6;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    if-nez v1, :cond_8

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_9

    const v1, 0x10204dc

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    if-nez v1, :cond_b

    const v1, 0x10204d8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimationTitleBarMaxHeight:I

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBgParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarBg:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_b
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    if-nez v1, :cond_d

    const v1, 0x10204db

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOrigTitle:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    if-nez v1, :cond_f

    const v1, 0x10204d9

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_f
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    if-ne v1, v7, :cond_10

    move/from16 v16, v7

    goto :goto_3

    :cond_10
    const/16 v16, 0x0

    :goto_3
    move/from16 v1, v16

    if-eqz v1, :cond_11

    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v9, -0x1

    invoke-virtual {v2, v9, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    const v7, 0x1effffff

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_4

    :cond_11
    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarIcon:Landroid/widget/ImageView;

    const/high16 v7, 0x66000000

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarText:Landroid/widget/TextView;

    const/high16 v7, -0x1b000000

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAnimTitleBarDivider:Landroid/widget/ImageView;

    const/high16 v7, 0x14000000

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v0, v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v1, :cond_0

    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v9, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v1

    add-int v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v13

    move v15, v0

    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/16 v4, 0x8

    if-ge v5, v13, :cond_2

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_1

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v16, v2

    move v2, v10

    move-object v4, v3

    move v3, v12

    move-object v14, v4

    move v4, v11

    move/from16 v17, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v15, v0

    goto :goto_1

    :cond_1
    move/from16 v17, v5

    :goto_1
    add-int/lit8 v0, v17, 0x1

    goto :goto_0

    :cond_2
    move v14, v15

    const/4 v0, 0x0

    :goto_2
    move v5, v0

    if-ge v5, v13, :cond_4

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_3

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v16, v2

    move v2, v10

    move/from16 v18, v9

    move-object v9, v3

    move v3, v12

    move/from16 v17, v4

    move v4, v11

    move/from16 v19, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v15, v0

    goto :goto_3

    :cond_3
    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v18, v9

    :goto_3
    add-int/lit8 v0, v19, 0x1

    move/from16 v4, v17

    move/from16 v9, v18

    goto :goto_2

    :cond_4
    move/from16 v18, v9

    iget v0, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v1, v15, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    sub-int v1, v15, v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    sub-int v2, v8, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p4, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_0

    cmpl-float v1, p3, v3

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_1

    :cond_0
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    nop

    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_3

    cmpg-float v1, p3, v3

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_1

    :cond_3
    cmpl-float v1, p3, v3

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return v1

    :cond_1
    return v2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    if-lez p3, :cond_0

    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    :cond_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    if-gez p5, :cond_0

    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    goto/16 :goto_9

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v5, :cond_1

    nop

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    return v3

    :pswitch_4
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_2

    const-string v5, "ResolverDrawerLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad pointer id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", resetting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-boolean v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    move v1, v3

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    sub-float/2addr v3, v7

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    add-float/2addr v7, v6

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v3, v5, v3

    invoke-direct {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    :cond_4
    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    goto/16 :goto_9

    :pswitch_5
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v5, :cond_5

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    return v3

    :cond_5
    iget-boolean v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    invoke-direct {p0, v4, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return v3

    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v3

    if-eqz v3, :cond_7

    cmpg-float v3, v6, v2

    if-gez v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_4

    :cond_7
    cmpg-float v2, v6, v2

    if-gez v2, :cond_8

    goto :goto_1

    :cond_8
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_1
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-eqz v7, :cond_a

    cmpl-float v7, v6, v2

    if-lez v7, :cond_a

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v4

    invoke-direct {p0, v2, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_4

    :cond_a
    cmpg-float v2, v6, v2

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_2
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_4

    :cond_c
    nop

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_d

    goto :goto_3

    :cond_d
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_3
    invoke-direct {p0, v4, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :goto_4
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_9

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_5

    :cond_e
    move v6, v4

    :goto_5
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-nez v7, :cond_10

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v7, :cond_f

    goto :goto_6

    :cond_f
    move v7, v4

    goto :goto_7

    :cond_10
    :goto_6
    move v7, v3

    :goto_7
    move v1, v7

    if-eqz v6, :cond_11

    if-eqz v1, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    :goto_8
    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    nop

    :goto_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    invoke-direct {p0, v1, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return v2

    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :cond_0
    return-void
.end method

.method public setCollapsed(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    :goto_1
    return-void
.end method

.method public setCollapsibleHeightReserved(I)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    return-void
.end method

.method public setDismissLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    return-void
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    return-void
.end method

.method public setOnFullscreenChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnFullscreenChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnFullscreenChangedListener;

    return-void
.end method

.method public setShowAtTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    return-void
.end method

.method public setSmallCollapsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    return-void
.end method
