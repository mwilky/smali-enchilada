.class Landroid/app/ExitTransitionCoordinator;
.super Landroid/app/ActivityTransitionCoordinator;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ExitTransitionCoordinator"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mExitNotified:Z

.field private mExitSharedElementBundle:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

.field private mIsBackgroundReady:Z

.field private mIsCanceled:Z

.field private mIsExitStarted:Z

.field private mIsHidden:Z

.field private mSharedElementBundle:Landroid/os/Bundle;

.field private mSharedElementNotified:Z

.field private mSharedElementsHidden:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Window;",
            "Landroid/app/SharedElementCallback;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p4, p3, p7}, Landroid/app/ActivityTransitionCoordinator;-><init>(Landroid/view/Window;Ljava/util/ArrayList;Landroid/app/SharedElementCallback;Z)V

    invoke-virtual {p0, p5, p6}, Landroid/app/ExitTransitionCoordinator;->mapSharedElements(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->viewsReady(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->stripOffscreenViews()V

    xor-int/lit8 v0, p7, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ExitTransitionCoordinator;->startSharedElementExit(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/app/ExitTransitionCoordinator;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ExitTransitionCoordinator;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->beginTransitions()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->startExitTransition()V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ExitTransitionCoordinator;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return v0
.end method

.method static synthetic access$502(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    return p1
.end method

.method static synthetic access$600(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V

    return-void
.end method

.method static synthetic access$802(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$902(Landroid/app/ExitTransitionCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    return p1
.end method

.method private beginTransitions()V
    .locals 6

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5, v5}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_0
    invoke-static {v3, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    invoke-virtual {p0, v5}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4, v5}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    :goto_0
    return-void
.end method

.method private captureExitSharedElementsState()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    :goto_0
    move v7, v1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/View;

    move-object v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    :goto_1
    add-int/lit8 v1, v7, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private delayCancel()V
    .locals 4

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private fadeOutBackground()V
    .locals 5

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v3, "alpha"

    new-array v1, v1, [I

    const/4 v4, 0x0

    aput v4, v1, v4

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/app/ExitTransitionCoordinator$7;

    invoke-direct {v3, p0}, Landroid/app/ExitTransitionCoordinator$7;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getFadeDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    iput-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private finish()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->clear()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    return-void
.end method

.method private finishIfNecessary()V
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    :cond_1
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    :cond_2
    return-void
.end method

.method private getExitTransition()Landroid/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getViewsTransition()Landroid/transition/Transition;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->removeExcludedViews(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->viewsTransitionComplete()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/ExitTransitionCoordinator$8;

    invoke-direct {v2, p0, v1}, Landroid/app/ExitTransitionCoordinator$8;-><init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :goto_0
    return-object v0
.end method

.method private getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->configureTransition(Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/ExitTransitionCoordinator$9;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$9;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-object v0
.end method

.method private hideSharedElements()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    invoke-interface {v0}, Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;->hideSharedElements()V

    :cond_0
    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->hideViews(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementsHidden:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    return-void
.end method

.method public static synthetic lambda$startSharedElementExit$0(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, p1}, Landroid/app/ExitTransitionCoordinator;->setSharedElementState(Landroid/os/Bundle;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method private notifyExitComplete()V
    .locals 3

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isViewsTransitionComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitNotified:Z

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finishIfNecessary()V

    :cond_1
    return-void
.end method

.method private sharedElementExitBack()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/ExitTransitionCoordinator$1;

    invoke-direct {v1, p0, v0}, Landroid/app/ExitTransitionCoordinator$1;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    :goto_0
    return-void
.end method

.method private startExitTransition()V
    .locals 4

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->transitionStarted()V

    :goto_0
    return-void
.end method

.method private startSharedElementExit(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    new-instance v1, Landroid/app/ExitTransitionCoordinator$2;

    invoke-direct {v1, p0}, Landroid/app/ExitTransitionCoordinator$2;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->createSnapshots(Landroid/os/Bundle;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/app/-$$Lambda$ExitTransitionCoordinator$QSAvMs76ZWnO0eiLyXWkcGxkRIY;

    invoke-direct {v2, p0, v1}, Landroid/app/-$$Lambda$ExitTransitionCoordinator$QSAvMs76ZWnO0eiLyXWkcGxkRIY;-><init>(Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->scheduleGhostVisibilityChange(I)V

    invoke-virtual {p0, v2}, Landroid/app/ExitTransitionCoordinator;->setGhostVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private stopCancel()V
    .locals 2

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected clearState()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->clearState()V

    return-void
.end method

.method protected getSharedElementTransition()Landroid/transition/Transition;
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsTransition()Landroid/transition/Transition;
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected isReadyToNotify()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsBackgroundReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected moveSharedElementWithParent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected notifyComplete()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->isReadyToNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNotified:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/16 v1, 0x67

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mListener:Landroid/app/SharedElementCallback;

    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$10;

    invoke-direct {v5, p0, v0, v1}, Landroid/app/ExitTransitionCoordinator$10;-><init>(Landroid/app/ExitTransitionCoordinator;Landroid/os/ResultReceiver;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->notifyExitComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x6a

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->sharedElementExitBack()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->hideSharedElements()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->stopCancel()V

    const-string v1, "android:remoteReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsCanceled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    nop

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTransitionsComplete()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    return-void
.end method

.method public resetViews()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, v2, v3}, Landroid/app/ExitTransitionCoordinator;->setTransitioningViewsVisiblity(IZ)V

    :cond_1
    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    iput-boolean v3, p0, Landroid/app/ExitTransitionCoordinator;->mIsHidden:Z

    iget-boolean v1, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsFromOverlay()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->clearState()V

    return-void
.end method

.method setHideSharedElementsCallback(Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator;->mHideSharedElementsCallback:Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;

    return-void
.end method

.method protected sharedElementTransitionComplete()V
    .locals 1

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mExitSharedElementBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->captureSharedElementState()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->captureExitSharedElementsState()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementBundle:Landroid/os/Bundle;

    invoke-super {p0}, Landroid/app/ActivityTransitionCoordinator;->sharedElementTransitionComplete()V

    return-void
.end method

.method public startExit()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    new-instance v0, Landroid/app/ExitTransitionCoordinator$3;

    invoke-direct {v0, p0}, Landroid/app/ExitTransitionCoordinator$3;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v0}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public startExit(ILandroid/content/Intent;)V
    .locals 6

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsExitStarted:Z

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->pauseInput()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    new-instance v2, Landroid/app/ExitTransitionCoordinator$4;

    invoke-direct {v2, p0}, Landroid/app/ExitTransitionCoordinator$4;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    iput-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->delayCancel()V

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->moveSharedElementsToOverlay()V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/app/ExitTransitionCoordinator;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    nop

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mSharedElementNames:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/app/ExitTransitionCoordinator;->mAllSharedElementNames:Ljava/util/ArrayList;

    :goto_1
    iget-object v3, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    invoke-static {v3, p0, v2, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/app/ExitTransitionCoordinator;Ljava/util/ArrayList;ILandroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    new-instance v5, Landroid/app/ExitTransitionCoordinator$5;

    invoke-direct {v5, p0}, Landroid/app/ExitTransitionCoordinator$5;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    new-instance v4, Landroid/app/ExitTransitionCoordinator$6;

    invoke-direct {v4, p0}, Landroid/app/ExitTransitionCoordinator$6;-><init>(Landroid/app/ExitTransitionCoordinator;)V

    invoke-virtual {p0, v4}, Landroid/app/ExitTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/ExitTransitionCoordinator;->mIsReturning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    invoke-direct {p0}, Landroid/app/ExitTransitionCoordinator;->finish()V

    :cond_0
    return-void
.end method
