.class public Lcom/android/server/OnePlusPowerController$LocalService;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 847
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAggressive()Z
    .locals 1

    .line 857
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$700()Z

    move-result v0

    return v0
.end method

.method public isChinaRegion()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public isInDeepSleep()Z
    .locals 1

    .line 878
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1600()Z

    move-result v0

    return v0
.end method

.method public isInSleep()Z
    .locals 2

    .line 861
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1300()I

    move-result v0

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndiaRegion()Z
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public notifyScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 871
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1500(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusPowerController;->notifyScreenStateInternal(I)V

    .line 874
    :cond_0
    return-void
.end method

.method public setDozeState(I)V
    .locals 8
    .param p1, "state"    # I

    .line 882
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$1702(Lcom/android/server/OnePlusPowerController;I)I

    .line 887
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$900(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    if-lez v0, :cond_4

    .line 888
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 890
    .local v0, "awake":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_1

    .line 891
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1300()I

    move-result v1

    const/16 v2, 0x15be

    if-ne v1, v2, :cond_1

    .line 892
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 893
    .local v1, "now":Ljava/time/LocalDateTime;
    invoke-static {v1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    .line 894
    .local v3, "duration":Ljava/time/Duration;
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1800()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 896
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 900
    .end local v0    # "awake":Ljava/time/LocalDateTime;
    .end local v1    # "now":Ljava/time/LocalDateTime;
    .end local v3    # "duration":Ljava/time/Duration;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v0

    const/16 v1, 0x1e6c

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    :cond_4
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController;->shutdownLocked()V

    .line 867
    monitor-exit v0

    .line 868
    return-void

    .line 867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
