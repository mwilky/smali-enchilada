.class Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "resumeProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeProcessHandler handleMessage uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v3

    add-int/lit16 v4, v1, -0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$1900(Lcom/android/server/am/OnePlusProcessManager;I)V

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler startResumeUid done "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2000(Lcom/android/server/am/OnePlusProcessManager;I)V

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resumeProcessHandler ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-wide/16 v4, 0x4e20

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$resumeProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v3, v1, v4, v5}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    :cond_5
    :goto_0
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    if-eq v3, v1, :cond_6

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_6
    :goto_1
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v4, "resumeProcessHandler end ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method
