.class Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "TaskPositioningController.java"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WindowManagerSerivce.mWindowMap"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/wm/InputMonitor;Landroid/app/IActivityManager;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    iput-object p4, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$finishTaskPositioning$1(Lcom/android/server/wm/TaskPositioningController;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static synthetic lambda$handleTapOutsideTask$0(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V
    .locals 9

    const/4 v0, -0x1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->isGestureButtonRegion(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureButton: skip handleTapOutsideTask x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    int-to-float v7, p1

    int-to-float v8, p2

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(II)I

    move-result v3

    move v0, v3

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-ltz v0, :cond_3

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPositioningLocked: win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", resize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", preserveOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    :goto_0
    const/4 v1, 0x0

    if-eqz v7, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v7, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_2

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has no input channel,  probably being removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    if-nez v12, :cond_3

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: Invalid display content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    move-object v2, v7

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, v7, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    :cond_4
    move-object v15, v2

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v4, v4, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "WindowManager"

    const-string/jumbo v3, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return v1

    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    return v14

    :cond_6
    :goto_1
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPositioningLocked: Bad window "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method finishTaskPositioning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getDragWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$WvS6bGwsoNKniWwQXf4LtUhPblY;-><init>(Lcom/android/server/wm/TaskPositioningController;IILcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method isPositioningLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object v0, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, v0

    move v9, p2

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->setFocusedTask(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
