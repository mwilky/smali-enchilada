.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final ENTERING_SHARED_ELEMENTS:Ljava/lang/String; = "android:enteringSharedElements"

.field private static final EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"


# instance fields
.field private mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private mEnterActivityOptions:Landroid/app/ActivityOptions;

.field private mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private mEnteringNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinatorsKey:I

.field private mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasExited:Z

.field private mIsEnterPostponed:Z

.field private mIsEnterTriggered:Z

.field private mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    return-void
.end method

.method static synthetic access$000(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityTransitionState;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    return-void
.end method

.method public static synthetic lambda$startExitBackTransition$0(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iget v1, p1, Landroid/app/Activity;->mResultCode:I

    iget-object v2, p1, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private restoreExitedViews()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    :cond_0
    return-void
.end method

.method private restoreReenteringViews()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isCrossTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private startEnter()V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0, v1, v1}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getAllSharedElementNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    :goto_0
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return v1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    return-void
.end method

.method public enterReady(Landroid/app/Activity;)V
    .locals 9

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v8

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v0, Landroid/app/EnterTransitionCoordinator;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v6

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isCrossTask()Z

    move-result v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, v8

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->isCrossTask()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    :cond_2
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public isTransitionRunning()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume(Landroid/app/Activity;Z)V
    .locals 4

    if-nez p2, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityTransitionState$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->stop()V

    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    :cond_1
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    return-void
.end method

.method public readState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "android:enteringSharedElements"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v0, :cond_2

    const-string v0, "android:exitingMappedFrom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    const-string v0, "android:exitingMappedTo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v0, "android:enteringSharedElements"

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "android:exitingMappedFrom"

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android:exitingMappedTo"

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isReturning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultData()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public startExitBackTransition(Landroid/app/Activity;)Z
    .locals 13

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iput-boolean v1, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    move-result-object v0

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    move-result v3

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    :cond_1
    new-instance v12, Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget-object v7, p1, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    iget-object v8, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v12

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/view/Window;Landroid/app/SharedElementCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v12, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    move-object v4, v2

    new-instance v5, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;

    invoke-direct {v5, p0, p1}, Landroid/app/-$$Lambda$ActivityTransitionState$yioLR6wQWjZ9DcWK5bibElIbsXc;-><init>(Landroid/app/ActivityTransitionState;Landroid/app/Activity;)V

    invoke-static {v2, v5}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iget v5, p1, Landroid/app/Activity;->mResultCode:I

    iget-object v6, p1, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getExitCoordinatorKey()I

    move-result v1

    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ExitTransitionCoordinator;

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    :cond_0
    return-void
.end method
