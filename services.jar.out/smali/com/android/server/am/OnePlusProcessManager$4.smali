.class Lcom/android/server/am/OnePlusProcessManager$4;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForegroundActivitiesChanged  uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4100(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4002(Lcom/android/server/am/OnePlusProcessManager;I)I

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v0, v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4000(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v1

    if-eq v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GpsFreeze] pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mCurrentFrontUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$4000(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundActivities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mFrontActivityUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_8

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, p3, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4300(Lcom/android/server/am/OnePlusProcessManager;ZI)V

    if-eqz p3, :cond_7

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, p2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    const-string/jumbo v2, "onForegroundActivitiesChanged"

    invoke-static {v1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$4400(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4500(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    :cond_7
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    const-wide/16 v2, 0x4

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    invoke-static {v1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_8

    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onForeground mFrontActivityUids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public onProcessDied(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "onProcessDied"

    const/4 v3, 0x2

    invoke-static {p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out_Delay(ILjava/lang/String;I)V

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
