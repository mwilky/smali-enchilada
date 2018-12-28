.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInForegroundDischargeDurationTimer"
.end annotation


# instance fields
.field isTiming:Z

.field lock:Ljava/lang/Object;

.field statsForPause:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field statsForStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->getCumulativeTime()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->startTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->pauseTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->resetTime()V

    return-void
.end method

.method private getCumulativeTime()Ljava/util/HashMap;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v6

    const-wide/32 v7, 0x5265c00

    sub-long v7, v3, v7

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-wide/from16 v16, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/usage/UsageStats;

    move-object/from16 v19, v18

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v18

    move-wide/from16 v7, v18

    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_1

    nop

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v18

    move-wide/from16 v9, v18

    :cond_1
    const-wide/16 v11, 0x0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v11, v18

    :cond_2
    add-long v18, v11, v7

    sub-long v13, v18, v9

    const-wide/16 v18, 0x0

    cmp-long v15, v13, v18

    if-lez v15, :cond_3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v3

    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime pkg:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime_start:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundTime_t:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeTime:"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    move-object/from16 v15, v22

    :cond_4
    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_5
    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: true"

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v2

    return-object v0

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "AppInForegroundDischargeDurationTimer getCumulativeTime isTiming: false"

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pauseTiming()Z
    .locals 21

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    monitor-exit v2

    return v3

    :cond_0
    iput-boolean v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v0

    const-wide/32 v5, 0x5265c00

    sub-long v5, v3, v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    if-eqz v0, :cond_6

    nop

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v17

    move-wide/from16 v5, v17

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_3

    nop

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v17

    move-wide/from16 v7, v17

    :cond_3
    const-wide/16 v9, 0x0

    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v9, v17

    :cond_4
    add-long v17, v9, v5

    sub-long v11, v17, v7

    const-wide/16 v17, 0x0

    cmp-long v13, v11, v17

    if-lez v13, :cond_5

    iget-object v13, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v13}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;

    move-result-object v13

    move-object/from16 v20, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object/from16 v20, v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AppInForegroundDischargeDurationTimer pauseTiming pkg:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime_start:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |foregroundTime_pause:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " |cumulativeTime:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    move-object/from16 v13, v20

    :cond_6
    move-object/from16 v0, v16

    goto/16 :goto_0

    :cond_7
    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AppInForegroundDischargeDurationTimer pauseTiming currentTime:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetTime()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForPause:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    const-string v1, "AppInForegroundDischargeDurationTimer resetTime"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTiming()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->isTiming:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    sub-long v5, v2, v5

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    :cond_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->statsForStart:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppInForegroundDischargeDurationTimer startTiming currentTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
