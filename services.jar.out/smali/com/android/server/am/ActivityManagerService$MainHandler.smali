.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const v6, 0x108079b

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_21

    :sswitch_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)V

    goto/16 :goto_21

    :sswitch_1
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/RestartProcessManager;->updateLaunchTime(Ljava/lang/String;J)V

    goto/16 :goto_21

    :sswitch_3
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/RestartProcessManager;->updateDuration(Ljava/lang/String;J)V

    goto/16 :goto_21

    :sswitch_4
    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mNetLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    invoke-virtual {v0, v7, v4, v6, v10}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    monitor-exit v5

    return-void

    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    invoke-virtual {v0, v7, v4, v9, v11}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    :cond_2
    goto/16 :goto_21

    :sswitch_5
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "servicerecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    :sswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v0, v10

    :goto_1
    move v5, v0

    if-ge v5, v4, :cond_3

    :try_start_3
    invoke-virtual {v3, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, v10, v8}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    add-int/lit8 v0, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_21

    :sswitch_7
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    goto/16 :goto_21

    :sswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    move v10, v11

    nop

    :cond_4
    move v0, v10

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_3
    if-ltz v3, :cond_5

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    goto/16 :goto_21

    :sswitch_9
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    move v10, v11

    nop

    :cond_6
    move v0, v10

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_4
    if-ltz v3, :cond_7

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    goto/16 :goto_21

    :sswitch_a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    :goto_5
    move v4, v0

    if-ltz v4, :cond_9

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_8

    :try_start_5
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_6
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to handle trust storage update for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_6
    add-int/lit8 v0, v4, -0x1

    goto :goto_5

    :cond_9
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_b
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/VrController;->onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    if-eqz v0, :cond_b

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-array v5, v11, [I

    aput v7, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    :cond_b
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_c
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_21

    :sswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    move-object v3, v0

    :try_start_c
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v4, v0

    const-string v4, "ActivityManager"

    const-string v5, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$1702(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_21

    :sswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_21

    :sswitch_10
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v14, 0x3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_11
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    if-nez v12, :cond_c

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v0, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    move-object v12, v13

    :cond_c
    if-eqz v12, :cond_d

    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    goto :goto_8

    :cond_d
    const-wide/16 v13, 0x0

    nop

    :goto_8
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v7, v0

    move-wide v12, v13

    if-nez v7, :cond_e

    return-void

    :cond_e
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_f

    const-string v0, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Showing dump heap notification from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    if-nez v14, :cond_10

    return-void

    :cond_10
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x10401da

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v7, v3, v10

    invoke-virtual {v0, v15, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    const-string v0, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "android"

    const-class v10, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v22

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "process"

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "size"

    invoke-virtual {v11, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v8, :cond_11

    const-string v0, "direct_launch"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1060157

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x10000000

    const/16 v20, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v16, v4

    move-object/from16 v18, v11

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-static {v4, v6, v15, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    :try_start_10
    const-string v16, "android"

    const-string v17, "android"
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5

    const/16 v18, 0x0

    const/16 v19, 0xc

    move-object v4, v15

    move-object v15, v14

    move/from16 v21, v10

    :try_start_11
    invoke-interface/range {v15 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v4, v15

    :goto_9
    goto :goto_c

    :catch_6
    move-exception v0

    move-object v4, v15

    :goto_a
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for dump heap"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    nop

    :goto_c
    goto/16 :goto_21

    :catchall_6
    move-exception v0

    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_12
    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    const/16 v23, 0x0

    :goto_d
    move/from16 v6, v23

    :try_start_13
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_13

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v7, v0

    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-ne v0, v3, :cond_12

    :try_start_14
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_e

    :catch_7
    move-exception v0

    :cond_12
    :goto_e
    add-int/lit8 v23, v6, 0x1

    goto :goto_d

    :cond_13
    :try_start_15
    monitor-exit v5

    goto/16 :goto_21

    :catchall_7
    move-exception v0

    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v0

    :sswitch_13
    :try_start_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v4

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Storing locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for decryption UI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SystemLocale"

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8

    goto/16 :goto_21

    :catch_8
    move-exception v0

    const-string v3, "ActivityManager"

    const-string v4, "Error storing locale for decryption UI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    :sswitch_14
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_14

    const-string v0, "FinishBooting"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_14
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_21

    :sswitch_15
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_17

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_17

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-eqz v0, :cond_17

    :try_start_18
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v5}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v5, v0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v6, 0x3f

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move-object v15, v0

    :try_start_19
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLocker: start app locker hint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.oneplus.applocker"

    const-string v6, "com.oneplus.applocker.AppLockerHintActivity"

    invoke-virtual {v15, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-nez v0, :cond_15

    :try_start_1a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    const-string v6, "AppLocker_ENTER_ANIMATION_COMPLETE_MSG"

    invoke-virtual {v0, v15, v6}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfirmResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move-object/from16 v24, v15

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v24, v15

    goto :goto_10

    :cond_15
    :try_start_1b
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v10, ""

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v13, v0, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x2710

    move-object v9, v15

    move-object/from16 v24, v15

    move-object v15, v0

    :try_start_1c
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/am/ActivityManagerService;->oemStartActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    :goto_f
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "op_applocker_hint_confirmed"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    move-object/from16 v24, v15

    :goto_10
    :try_start_1d
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocker: No activity to handle start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :cond_16
    :goto_11
    goto :goto_12

    :catch_c
    move-exception v0

    :cond_17
    :goto_12
    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_8
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_16
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_13
    move v4, v0

    if-ltz v4, :cond_19

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    if-eqz v0, :cond_18

    :try_start_21
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto :goto_14

    :catch_d
    move-exception v0

    :try_start_22
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update preferences for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_14
    add-int/lit8 v0, v4, -0x1

    goto :goto_13

    :cond_19
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_9
    move-exception v0

    :try_start_23
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_17
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_21

    :sswitch_18
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1a

    const/16 v23, 0x1

    goto :goto_15

    :cond_1a
    const/16 v23, 0x0

    :goto_15
    move/from16 v0, v23

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v3

    if-eq v3, v0, :cond_27

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v3, :cond_1b

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying new update lock state \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    if-eqz v0, :cond_1c

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_21

    :cond_1c
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_21

    :sswitch_19
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_21

    :sswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/ProxyInfo;

    const-string v0, ""

    const-string v4, ""

    const-string v5, ""

    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    :cond_1d
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_24
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    :goto_16
    move v9, v0

    if-ltz v9, :cond_1f

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v10, v0

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1e

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    if-nez v0, :cond_1e

    :try_start_25
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_e
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    goto :goto_17

    :catch_e
    move-exception v0

    :try_start_26
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to update http proxy for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_17
    add-int/lit8 v0, v9, -0x1

    goto :goto_16

    :cond_1f
    monitor-exit v8
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_a
    move-exception v0

    :try_start_27
    monitor-exit v8
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_1b
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_18
    move v4, v0

    if-ltz v4, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    if-eqz v0, :cond_20

    :try_start_29
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_f
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    goto :goto_19

    :catch_f
    move-exception v0

    :try_start_2a
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_19
    add-int/lit8 v0, v4, -0x1

    goto :goto_18

    :cond_21
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_b
    move-exception v0

    :try_start_2b
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_1c
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_c
    move-exception v0

    :try_start_2d
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_1d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    if-nez v3, :cond_22

    return-void

    :cond_22
    :try_start_2e
    const-string v0, "android"

    const/16 v4, 0xb

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v0, v8, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_10

    goto :goto_1a

    :catch_10
    move-exception v0

    goto :goto_1b

    :catch_11
    move-exception v0

    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    nop

    :goto_1b
    goto/16 :goto_21

    :sswitch_1e
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    if-nez v3, :cond_23

    return-void

    :cond_23
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v5, :cond_24

    return-void

    :cond_24
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040285

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v0, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1060157

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040286

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_2f} :catch_14

    :try_start_30
    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const/16 v10, 0xb

    iget v12, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v6, v3

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_30} :catch_14

    :goto_1c
    goto :goto_1d

    :catch_12
    move-exception v0

    goto :goto_1d

    :catch_13
    move-exception v0

    :try_start_31
    const-string v6, "ActivityManager"

    const-string v7, "Error showing notification for heavy-weight app"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_31} :catch_14

    goto :goto_1c

    :goto_1d
    goto :goto_1e

    :catch_14
    move-exception v0

    const-string v6, "ActivityManager"

    const-string v7, "Unable to create context for heavy notification"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    goto/16 :goto_21

    :sswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_21

    :sswitch_20
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v12, v2, Landroid/os/Message;->arg2:I

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_d
    move-exception v0

    :try_start_33
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_21

    :catchall_e
    move-exception v0

    :try_start_35
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_22
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_1f
    move v4, v0

    if-ltz v4, :cond_26

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    if-eqz v0, :cond_25

    :try_start_37
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v6, "updateTimeZone"

    invoke-static {v0, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_15
    .catchall {:try_start_37 .. :try_end_37} :catchall_f

    goto :goto_20

    :catch_15
    move-exception v0

    :try_start_38
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_20
    add-int/lit8 v0, v4, -0x1

    goto :goto_1f

    :cond_26
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_21

    :catchall_f
    move-exception v0

    :try_start_39
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_23
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_21

    :sswitch_24
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_21

    :catchall_10
    move-exception v0

    :try_start_3b
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :sswitch_25
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    nop

    :cond_27
    :goto_21
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_25
        0x5 -> :sswitch_24
        0xc -> :sswitch_23
        0xd -> :sswitch_22
        0x14 -> :sswitch_21
        0x16 -> :sswitch_20
        0x17 -> :sswitch_1f
        0x18 -> :sswitch_1e
        0x19 -> :sswitch_1d
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1a
        0x21 -> :sswitch_19
        0x25 -> :sswitch_18
        0x26 -> :sswitch_17
        0x29 -> :sswitch_16
        0x2c -> :sswitch_15
        0x2d -> :sswitch_14
        0x2f -> :sswitch_13
        0x31 -> :sswitch_12
        0x32 -> :sswitch_11
        0x33 -> :sswitch_10
        0x36 -> :sswitch_f
        0x38 -> :sswitch_e
        0x39 -> :sswitch_d
        0x3a -> :sswitch_c
        0x3d -> :sswitch_b
        0x3f -> :sswitch_a
        0x40 -> :sswitch_9
        0x41 -> :sswitch_8
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x45 -> :sswitch_5
        0x58 -> :sswitch_4
        0x457 -> :sswitch_3
        0x458 -> :sswitch_2
        0x459 -> :sswitch_1
        0x45e -> :sswitch_0
    .end sparse-switch
.end method
