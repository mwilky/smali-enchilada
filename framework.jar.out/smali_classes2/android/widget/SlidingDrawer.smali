.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v2, v4, :cond_1

    iput v2, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    iput v4, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v6, 0x43160000    # 150.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v6, 0x43480000    # 200.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v6, 0x44fa0000    # 2000.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content and handle attributes must refer to different children."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v5, "The content attribute is required and must refer to a valid child."

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private animateOpen(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private incrementAnimation()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v4, v2

    add-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    mul-float v6, v5, v2

    add-float/2addr v6, v4

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 10

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    :cond_0
    if-ne p1, v3, :cond_1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v3, p1, v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_2

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_4
    if-ne p1, v4, :cond_5

    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_6

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v3, p1, v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_7

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_1

    :cond_7
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_8

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    :cond_8
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v8

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method

.method private openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    :cond_1
    return-void
.end method

.method private performFling(IFZZ)V
    .locals 6

    int-to-float v0, p1

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_0
    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_2
    :goto_1
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_3
    if-nez p3, :cond_6

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_6

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    :cond_5
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpg-float v0, p2, v1

    if-gez v0, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_3

    :cond_6
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_7

    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v2, 0x10

    add-long v4, v0, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    return-void
.end method

.method private prepareContent()V
    .locals 8

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareTracking(I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    :goto_0
    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :goto_1
    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    :goto_2
    return-void
.end method

.method private stopTracking(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateOpen()V
    .locals 3

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void
.end method

.method public animateToggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v3, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    nop

    :cond_5
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    nop

    :cond_6
    :goto_3
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

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

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v6}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_2
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    float-to-int v7, v3

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    float-to-int v7, v2

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    :goto_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    iget-boolean v1, v0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sub-int v2, p4, p2

    sub-int v3, p5, p3

    iget-object v4, v0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v8, v0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    sub-int v8, v2, v5

    div-int/lit8 v8, v8, 0x2

    iget-boolean v10, v0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v10, :cond_1

    iget v10, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_0

    :cond_1
    sub-int v10, v3, v6

    iget v11, v0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v10, v11

    :goto_0
    iget v11, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iget v9, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v6

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v9, v13

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11, v12, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    iget-boolean v1, v0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_3
    sub-int v1, v2, v5

    iget v8, v0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v1, v8

    :goto_1
    move v8, v1

    sub-int v1, v3, v6

    div-int/lit8 v10, v1, 0x2

    iget v1, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v1, v5

    iget v9, v0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v9, v11

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v9, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v1, v8, v5

    add-int v9, v10, v6

    invoke-virtual {v4, v8, v10, v1, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_0
    float-to-int v3, v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    cmpg-float v8, v4, v7

    if-gez v8, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    cmpg-float v7, v5, v7

    if-gez v7, :cond_3

    neg-float v5, v5

    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v7

    goto :goto_3

    :cond_4
    cmpg-float v8, v5, v7

    if-gez v8, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    move v8, v2

    :goto_2
    cmpg-float v7, v4, v7

    if-gez v7, :cond_6

    neg-float v4, v4

    :cond_6
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_7

    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v4, v7

    :cond_7
    :goto_3
    float-to-double v9, v5

    float-to-double v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v7, v9

    if-eqz v8, :cond_8

    neg-float v7, v7

    :cond_8
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_14

    if-eqz v6, :cond_a

    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_9

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v9, v11, :cond_c

    :cond_9
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_12

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v9, v11, :cond_12

    goto :goto_4

    :cond_a
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_b

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_c

    :cond_b
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_12

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_12

    :cond_c
    :goto_4
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v11, :cond_10

    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_e

    if-eqz v6, :cond_d

    move v11, v9

    goto :goto_5

    :cond_d
    move v11, v10

    :goto_5
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_a

    :cond_e
    if-eqz v6, :cond_f

    move v11, v9

    goto :goto_6

    :cond_f
    move v11, v10

    :goto_6
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_a

    :cond_10
    if-eqz v6, :cond_11

    move v11, v9

    goto :goto_7

    :cond_11
    move v11, v10

    :goto_7
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_12
    if-eqz v6, :cond_13

    move v11, v9

    goto :goto_8

    :cond_13
    move v11, v10

    :goto_8
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_a

    :cond_14
    if-eqz v6, :cond_15

    move v11, v9

    goto :goto_9

    :cond_15
    move v11, v10

    :goto_9
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    :cond_16
    :goto_a
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_18

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_b

    :cond_17
    move v1, v2

    nop

    :cond_18
    :goto_b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return-void
.end method
