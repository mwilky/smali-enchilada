.class Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "suspendProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$300()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_2

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :cond_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->isUidSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_5
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, v0, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler mCharging  so skip uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, v0, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler hasMessages alreay so skip uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    sput v0, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendProcessHandler handleMessage uid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$600(Lcom/android/server/am/OnePlusProcessManager;I)D

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$800(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/util/ArrayList;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$700(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v6

    cmpl-double v2, v4, v6

    const/4 v6, 0x0

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z

    move-result v2

    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_6
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_10

    move v3, v6

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_10

    iget-object v7, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$900(Lcom/android/server/am/OnePlusProcessManager;I)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    :cond_a
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1000(Lcom/android/server/am/OnePlusProcessManager;I)J

    move-result-wide v7

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1100(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_b

    const-string v2, "OnePlusProcessManager"

    const-string/jumbo v9, "suspendProcessHandler skip suspend: SUSPEND_FAIL_NOTRY"

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_8
    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sput v6, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    return-void

    :catchall_2
    move-exception v6

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v6

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1200(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-nez v2, :cond_d

    const-wide/16 v9, 0x5

    mul-long/2addr v7, v9

    goto :goto_1

    :cond_d
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    cmpl-double v2, v4, v9

    if-lez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$1300(Lcom/android/server/am/OnePlusProcessManager;)D

    move-result-wide v9

    sub-double v9, v4, v9

    double-to-long v9, v9

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long v7, v9, v11

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mAlarmAdjust:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$1500(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    :try_start_a
    iget-object v9, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v9, v9, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    const/4 v10, 0x1

    invoke-interface {v9, v2, v10, v10}, Landroid/app/IAlarmManager;->setBlockAlarmUid(Ljava/lang/String;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    :cond_f
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$suspendProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2, v0, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    sget-object v9, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_b
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mUnFrozenReasonUids:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "suspendReturn ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move v2, v3

    :cond_10
    if-eqz v2, :cond_11

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_c
    sget-object v7, Lcom/android/server/am/OnePlusProcessManager;->mAdjustUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_3
    move-exception v6

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v6

    :cond_11
    :goto_2
    sput v6, Lcom/android/server/am/OnePlusProcessManager;->mPendingUid:I

    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v3, :cond_12

    const-string v3, "OnePlusProcessManager"

    const-string/jumbo v6, "suspendProcessHandler end"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    :catchall_5
    move-exception v1

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    :catchall_6
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v2

    :cond_13
    :goto_3
    return-void
.end method
