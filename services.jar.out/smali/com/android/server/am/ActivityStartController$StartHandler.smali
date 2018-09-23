.class final Lcom/android/server/am/ActivityStartController$StartHandler;
.super Landroid/os/Handler;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStartController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    invoke-static {v0}, Lcom/android/server/am/ActivityStartController;->access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController$StartHandler;->this$0:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
