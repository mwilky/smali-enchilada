.class Lcom/android/internal/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v4, v5

    mul-int v6, p1, p1

    mul-int v7, p2, p2

    add-int/2addr v6, v7

    int-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v6, v7

    if-eqz v3, :cond_1

    iget-object v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v7

    :goto_1
    div-int/lit8 v8, v7, 0x2

    int-to-float v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    int-to-float v11, v7

    div-float/2addr v9, v11

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    int-to-float v11, v8

    int-to-float v12, v8

    invoke-direct {v0, v9}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    if-lez v4, :cond_2

    const/high16 v12, 0x447a0000    # 1000.0f

    int-to-float v10, v4

    div-float v10, v11, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    const/4 v12, 0x4

    mul-int/2addr v10, v12

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    move v12, v1

    goto :goto_2

    :cond_3
    move v12, v2

    :goto_2
    int-to-float v12, v12

    int-to-float v0, v7

    div-float v0, v12, v0

    add-float/2addr v0, v10

    const/high16 v10, 0x43960000    # 300.0f

    mul-float/2addr v0, v10

    float-to-int v10, v0

    :goto_3
    move v0, v10

    const/16 v10, 0x7d0

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    return v10
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

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

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->stop()V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v6, v3, v6

    iget v7, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    iput v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iput v5, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->eatRequestLayout()V

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v12, "RV Scroll"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v8

    sub-int v10, v6, v8

    :cond_1
    if-eqz v7, :cond_2

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v9

    sub-int v11, v7, v9

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->repositionShadowingViews()V

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->onExitLayoutOrScroll()V

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v4}, Lcom/android/internal/widget/RecyclerView;->resumeRequestLayout(Z)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v13

    if-lt v13, v12, :cond_4

    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v2, v13}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    goto :goto_0

    :cond_4
    sub-int v13, v6, v10

    sub-int v14, v7, v11

    invoke-static {v2, v13, v14}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    :cond_5
    :goto_0
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_6
    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_7

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v12, v6, v7}, Lcom/android/internal/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_7
    if-nez v10, :cond_8

    if-eqz v11, :cond_12

    :cond_8
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v12

    float-to-int v12, v12

    const/4 v14, 0x0

    if-eq v10, v3, :cond_b

    if-gez v10, :cond_9

    neg-int v15, v12

    goto :goto_1

    :cond_9
    if-lez v10, :cond_a

    move v15, v12

    goto :goto_1

    :cond_a
    move v15, v4

    :goto_1
    move v14, v15

    :cond_b
    const/4 v15, 0x0

    if-eq v11, v5, :cond_e

    if-gez v11, :cond_c

    neg-int v4, v12

    goto :goto_2

    :cond_c
    if-lez v11, :cond_d

    move v4, v12

    goto :goto_2

    :cond_d
    const/4 v4, 0x0

    :goto_2
    move v15, v4

    :cond_e
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getOverScrollMode()I

    move-result v4

    if-eq v4, v13, :cond_f

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v14, v15}, Lcom/android/internal/widget/RecyclerView;->absorbGlows(II)V

    :cond_f
    if-nez v14, :cond_10

    if-eq v10, v3, :cond_10

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-nez v4, :cond_12

    :cond_10
    if-nez v15, :cond_11

    if-eq v11, v5, :cond_11

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_12
    if-nez v8, :cond_13

    if-eqz v9, :cond_14

    :cond_13
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4, v8, v9}, Lcom/android/internal/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_14
    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v4}, Lcom/android/internal/widget/RecyclerView;->access$500(Lcom/android/internal/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    :cond_15
    const/4 v4, 0x1

    if-eqz v7, :cond_16

    iget-object v12, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v12, v12, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v12

    if-eqz v12, :cond_16

    if-ne v9, v7, :cond_16

    move v12, v4

    goto :goto_3

    :cond_16
    const/4 v12, 0x0

    :goto_3
    if-eqz v6, :cond_17

    iget-object v13, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v13, v13, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v13

    if-eqz v13, :cond_17

    if-ne v8, v6, :cond_17

    move v13, v4

    goto :goto_4

    :cond_17
    const/4 v13, 0x0

    :goto_4
    if-nez v6, :cond_18

    if-eqz v7, :cond_1a

    :cond_18
    if-nez v13, :cond_1a

    if-eqz v12, :cond_19

    goto :goto_5

    :cond_19
    const/4 v4, 0x0

    nop

    :cond_1a
    :goto_5
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1c

    if-nez v4, :cond_1b

    goto :goto_6

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    if-eqz v14, :cond_1d

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mGapWorker:Lcom/android/internal/widget/GapWorker;

    iget-object v15, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v14, v15, v6, v7}, Lcom/android/internal/widget/GapWorker;->postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V

    goto :goto_7

    :cond_1c
    :goto_6
    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->access$600()Z

    move-result v14

    if-eqz v14, :cond_1d

    iget-object v14, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v14, v14, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v14}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_1d
    :goto_7
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->access$400(Lcom/android/internal/widget/RecyclerView$SmoothScroller;II)V

    :cond_1e
    iget-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object v1, Lcom/android/internal/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
