.class final Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
.super Landroid/animation/ValueAnimator;
.source "BoundsAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundsAnimator"
.end annotation


# instance fields
.field private final mFrom:Landroid/graphics/Rect;

.field private final mFrozenTaskHeight:I

.field private final mFrozenTaskWidth:I

.field private mMoveFromFullscreen:Z

.field private mMoveToFullscreen:Z

.field private mPrevSchedulePipModeChangedState:I

.field private final mResumeRunnable:Ljava/lang/Runnable;

.field private mSchedulePipModeChangedState:I

.field private mSkipAnimationEnd:Z

.field private mSkipFinalResize:Z

.field private final mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTaskBounds:Landroid/graphics/Rect;

.field private final mTo:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$BoundsAnimator$eIPNx9WcD7moTPCByy2XhPMSdCs;-><init>(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    iput p6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    iput-boolean p7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    iput-boolean p8, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    return v0
.end method

.method private cancelAndCallAnimationEnd()V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAndCallAnimationEnd: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "pause: timed out waiting for windows drawn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    return-void
.end method


# virtual methods
.method animatingToLargerSize()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    invoke-super {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$700(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$700(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method isAnimatingTo(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAnimationEnd: mTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mSkipFinalResize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFinishAnimationAfterTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mAppTransitionIsRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$600(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$100(Lcom/android/server/wm/BoundsAnimationController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0, v2}, Lcom/android/server/wm/BoundsAnimationController;->access$102(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipAnimationEnd:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnimationEnd: mTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " moveToFullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSkipFinalResize:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    invoke-interface {v0, v2, v1, v3}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationEnd(ZLandroid/graphics/Rect;Z)V

    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$300(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$500(Lcom/android/server/wm/BoundsAnimationController;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationStart: mTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPrevSchedulePipModeChangedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSchedulePipModeChangedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->access$102(Lcom/android/server/wm/BoundsAnimationController;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$500(Lcom/android/server/wm/BoundsAnimationController;)V

    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZ)V

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {v0}, Lcom/android/server/wm/BoundsAnimationTarget;->shouldDeferStartOnMoveToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mPrevSchedulePipModeChangedState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-interface {v0, v2, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->onAnimationStart(ZZ)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->animatingToLargerSize()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->pause()V

    :cond_4
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateUpdate: mTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrom:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mTo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTo:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " remains="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mFrozenTaskHeight:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTarget:Lcom/android/server/wm/BoundsAnimationTarget;

    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mTmpTaskBounds:Landroid/graphics/Rect;

    invoke-interface {v2, v3, v4}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "animateUpdate: cancelled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancelAndCallAnimationEnd()V

    :cond_3
    return-void
.end method

.method public pause()V
    .locals 4

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "pause: waiting for windows drawn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->pause()V

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lcom/android/server/wm/BoundsAnimationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "resume:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mResumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/animation/ValueAnimator;->resume()V

    return-void
.end method
