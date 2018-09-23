.class Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;,
        Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;,
        Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    }
.end annotation


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationStartDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field private mApplyScheduled:Z

.field private final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field private final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mLock:Ljava/lang/Object;

.field final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p1, :cond_0

    nop

    move-object v1, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v1, v2}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    if-eqz p2, :cond_1

    nop

    move-object v0, p2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private applyTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    return-void
.end method

.method private applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->needsEarlyWakeup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    return-void
.end method

.method public static synthetic lambda$9Wa9MhcrSX12liOouHtYXEkDU60(Lcom/android/server/wm/SurfaceAnimationRunner;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(J)V

    return-void
.end method

.method public static synthetic lambda$lSzwjoKEGADoEFOzdEnwriAk0T4(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method public static synthetic lambda$onAnimationCancelled$2(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method public static synthetic lambda$startAnimationLocked$3(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    move-wide v3, v1

    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private scheduleApplyTransaction()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    :cond_0
    return-void
.end method

.method private startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    return-void
.end method

.method private startAnimations(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startPendingAnimationsLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method


# virtual methods
.method continueStartingAnimations()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deferStartingAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$002(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
