.class Lcom/android/server/am/OnePlusBGController$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x13fe5cd1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.test.bgc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shot_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BGC"

    const-string v2, "==shot_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController;->dumpSnapShotData(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    goto/16 :goto_5

    :cond_3
    const-string v1, "e_d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    const-string v1, "BGC"

    const-string v2, "==e_d=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "enable DEBUG_ONEPLUS"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$302(Z)Z

    goto/16 :goto_5

    :cond_4
    const-string v1, "d_d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "BGC"

    const-string v3, "==d_d=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "disable DEBUG_ONEPLUS"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$302(Z)Z

    goto/16 :goto_5

    :cond_5
    const-string v1, "e_bgc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "BGC"

    const-string v2, "==e_bgc=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "enable DEBUG_BGC"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    goto/16 :goto_5

    :cond_6
    const-string v1, "d_bgc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "BGC"

    const-string v3, "==d_bgc=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "disable DEBUG_BGC"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    goto/16 :goto_5

    :cond_7
    const-string v1, "bg_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "BGC"

    const-string v4, "==bg_dump=="

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BGC"

    const-string v4, "Dump of all UID state stats:"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    move v1, v2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidStat;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->getState()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/OnePlusBGController$UidStat;->update(IZ)V

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->dump()V

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "sipper_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "BGC"

    const-string v2, "==sipper_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BGC"

    const-string v2, "Dump of all UID sipper stats:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$500(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    :cond_9
    const-string/jumbo v1, "sipperlist_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "BGC"

    const-string v2, "==sipperlist_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BGC"

    const-string v2, "Dump of all UID sipper list stats:"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$600(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v1, "sipper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "BGC"

    const-string v2, "==sipper=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump of UID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sipper stats:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->access$700(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->dumpRecords()V

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump of UID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uidstats:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$UidStat;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$UidStat;->dump()V

    :cond_c
    goto/16 :goto_5

    :cond_d
    const-string v1, "budget_reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "BGC"

    const-string v2, "==budget_reset=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$800(Lcom/android/server/am/OnePlusBGController;)V

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v1, "sensor_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "BGC"

    const-string v3, "==sensor_dump=="

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v8

    invoke-virtual {v8, v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v8

    move v6, v8

    goto :goto_3

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StopwatchTimer of sensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dump of UID:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is using sensor:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusBGController;->access$1000(Lcom/android/server/am/OnePlusBGController;I)V

    goto :goto_4

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_10
    :goto_4
    goto :goto_5

    :cond_11
    const-string/jumbo v1, "sensor_dump2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "BGC"

    const-string v2, "==sensor_dump2=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$1100(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_5

    :cond_12
    const-string/jumbo v1, "t_dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "BGC"

    const-string v2, "==t_dump=="

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$1;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->access$1200(Lcom/android/server/am/OnePlusBGController;)V

    :cond_13
    :goto_5
    return-void
.end method
