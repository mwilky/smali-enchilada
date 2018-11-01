.class public Lcom/android/systemui/fingerprint/QLRootView;
.super Landroid/widget/FrameLayout;
.source "QLRootView.java"


# instance fields
.field private TRACK_INTERVAL:I

.field private mHint:Landroid/widget/TextView;

.field private mIsCancel:Z

.field private mLabel:Landroid/widget/TextView;

.field private mQLCancelView:Landroid/view/View;

.field private mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

.field private mQLTrackView:Landroid/view/View;

.field private mQLTrackViewBackground:Landroid/view/View;

.field private mTrackViewPadding:I

.field private mTrackViewWidth:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewPadding:I

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewWidth:I

    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onEnterCancelView()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onEnterCancelView()V

    return-void
.end method

.method private onLeaveCancelView()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onLeaveCancelView()V

    return-void
.end method

.method private updateTrackBarVisibility()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRootView;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getItemCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f4

    const v4, 0x100050a

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "QuickLaunch"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v1, 0x7f120010

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const v0, 0x7f0a019e

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    const v0, 0x7f0a0421

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    const v0, 0x7f0a0422

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackViewBackground:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->updateTrackBarVisibility()V

    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLabelView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x4b

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewPadding:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    nop

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewWidth:I

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewWidth:I

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    const/16 v1, 0x700

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onQLExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onQLExit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRootView;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onVelocityChanged(F)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewPadding:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewWidth:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mTrackViewWidth:I

    int-to-float v1, v2

    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    int-to-float v2, v2

    div-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->onEnterCancelView()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->onLeaveCancelView()V

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onScrollProgress(F)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->launch()V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQLConfig(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setQLConfig(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->updateTrackBarVisibility()V

    return-void
.end method
