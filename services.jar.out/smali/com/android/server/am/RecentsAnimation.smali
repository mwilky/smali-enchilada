.class Lcom/android/server/am/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/am/ActivityStartController;

.field private mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field private final mCallingPid:I

.field private final mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

.field private mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetActivityType:I

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/am/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/UserController;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iput-object p3, p0, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    iput-object p4, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p5, p0, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    iput p6, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    return-void
.end method

.method private finishAnimation(I)V
    .locals 6
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v1}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    iput-object v2, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isGestureButtonForLauncher()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3, v2, v3, v2}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    iput-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GestureButton: finishAnimation supportsEnterPipOnTaskSwitch for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/am/ActivityStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_0

    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$finishAnimation$0(Lcom/android/server/am/RecentsAnimation;I)V
    .locals 9

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    if-nez v5, :cond_1

    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_1
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    nop

    :goto_1
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static synthetic lambda$onAnimationFinished$1(Lcom/android/server/am/RecentsAnimation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    return-void
.end method

.method private notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onAnimationFinished(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onStackOrderChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "stackOrderChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    return-void
.end method

.method startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    const-string v0, "RecentsAnimation#startRecentsActivity"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    return-void

    :cond_0
    nop

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    move-object/from16 v8, p3

    :cond_2
    const/4 v0, 0x2

    :goto_0
    iput v0, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v1, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/android/server/am/RecentsAnimation;->getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecentsActivity, skip start target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v0, 0x1

    if-eqz v3, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    move v1, v7

    :goto_1
    move/from16 v16, v1

    if-eqz v16, :cond_5

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityDisplay;->getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_5

    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    return-void

    :cond_5
    if-eqz v3, :cond_6

    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    :cond_7
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    if-eqz v13, :cond_8

    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/AppOpsManager;

    new-instance v6, Lcom/android/server/am/AssistDataReceiverProxy;

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lcom/android/server/am/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/AssistDataRequester;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v17, 0x31

    const/16 v18, -0x1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v7

    move-object v7, v4

    move-object v4, v9

    move-object v9, v7

    move-object v7, v10

    move/from16 v8, v17

    move-object v13, v9

    move/from16 v9, v18

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v14, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v20, v1

    move/from16 v26, p4

    invoke-virtual/range {v20 .. v27}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    goto/16 :goto_5

    :cond_8
    move-object v15, v3

    move-object v13, v4

    :goto_2
    if-eqz v16, :cond_a

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_9

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const-string/jumbo v2, "startRecentsActivity"

    invoke-virtual {v13, v1, v0, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    :cond_9
    move/from16 v7, p4

    const/4 v8, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    move/from16 v7, p4

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move/from16 v7, p4

    :goto_3
    move-object v3, v15

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    const/high16 v2, 0x10010000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    const-string/jumbo v3, "startRecentsActivity_noTargetActivity"

    invoke-virtual {v2, v11, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v7, p4

    :try_start_2
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v2, v8, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object v1, v2

    move-object v15, v1

    :goto_4
    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "startRecentsActivity"

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v5, v3, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    move-object v3, v12

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, v9, v15}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :goto_5
    :try_start_3
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v15, v3

    :goto_6
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
