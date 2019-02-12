.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v4, 0x35

    if-eq v0, v4, :cond_4

    const/16 v4, 0x44

    if-eq v0, v4, :cond_3

    const/16 v4, 0x46

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_0

    const v4, 0x104000a

    const/4 v5, -0x1

    const v6, 0x1040075

    const/16 v7, 0x7da

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1200(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    :cond_1
    nop

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    const v3, 0x1040672

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    const v3, 0x1040673

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :pswitch_5
    new-instance v0, Lcom/android/server/am/FactoryErrorDialog;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "msg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->dispatchOomAdjObserver(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->pushTempWhitelist()V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string v2, "app"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_7

    const-string v3, "ActivityManager"

    const-string v4, "App not found when showing strict mode dialog."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2

    :cond_7
    :try_start_4
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_8

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App already has strict mode dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_8
    :try_start_5
    const-string/jumbo v4, "result"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppErrorResult;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_9

    new-instance v3, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v5, v6, v4, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_9
    invoke-virtual {v4, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :goto_0
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v2, :cond_c

    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_b
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    :cond_c
    :goto_1
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    nop

    :cond_d
    :goto_2
    return-void

    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
