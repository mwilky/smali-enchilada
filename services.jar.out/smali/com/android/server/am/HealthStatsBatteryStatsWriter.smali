.class public Lcom/android/server/am/HealthStatsBatteryStatsWriter;
.super Ljava/lang/Object;
.source "HealthStatsBatteryStatsWriter.java"


# instance fields
.field private final mNowRealtimeMs:J

.field private final mNowUptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    return-void
.end method

.method private addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    iget-wide v2, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p3, v2, v3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    :cond_0
    return-void
.end method

.method private addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V
    .locals 7

    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x2

    invoke-virtual {p4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    iget-wide v3, p0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {p4, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-direct {v0, v2, v3, v4}, Landroid/os/health/TimerStat;-><init>(IJ)V

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/health/HealthStatsWriter;->addTimers(ILjava/lang/String;Landroid/os/health/TimerStat;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4e21

    iget v1, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const/16 v2, 0x4e22

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v0, p2, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V
    .locals 7

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Landroid/os/health/HealthStatsWriter;

    sget-object v3, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V

    const v3, 0x9c41

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v2}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Counter;

    if-eqz v2, :cond_1

    const v3, 0x9c42

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    :cond_1
    goto :goto_1

    :cond_2
    return-void
.end method

.method public writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V
    .locals 4

    nop

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v1

    const/16 v3, 0x7531

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v1

    const/16 v3, 0x7532

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x7533

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x7534

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x7535

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v0

    const/16 v2, 0x7536

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeServ(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg$Serv;)V
    .locals 4

    nop

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v1

    int-to-long v1, v1

    const v3, 0xc351

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    nop

    invoke-virtual {p2, v0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v0

    int-to-long v0, v0

    const v2, 0xc352

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method

.method public writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2711

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2712

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2713

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v4, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5, v8}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v6

    const/16 v9, 0x2714

    invoke-virtual {v1, v9, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const/16 v13, 0x2715

    invoke-direct {v0, v1, v13, v11, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    invoke-virtual {v12, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v10, 0x2716

    invoke-direct {v0, v1, v10, v11, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    invoke-virtual {v12, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v10, 0x2717

    invoke-direct {v0, v1, v10, v11, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v10, 0x12

    invoke-virtual {v12, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v10, 0x2718

    invoke-direct {v0, v1, v10, v11, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/16 v11, 0x2719

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Timer;

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/16 v11, 0x271a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Timer;

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_2

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v11, v9

    :goto_3
    if-ge v11, v5, :cond_4

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    const/16 v13, -0x2710

    if-ne v12, v13, :cond_3

    const/16 v13, 0x271b

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_4

    :cond_3
    const/16 v13, 0x271c

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v12, v9

    :goto_5
    if-ge v12, v5, :cond_5

    new-instance v13, Landroid/os/health/HealthStatsWriter;

    sget-object v14, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pid;)V

    const/16 v14, 0x271d

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    new-instance v14, Landroid/os/health/HealthStatsWriter;

    sget-object v15, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v14, v15}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeProc(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Proc;)V

    const/16 v15, 0x271e

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v15, v10, v14}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    nop

    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    new-instance v13, Landroid/os/health/HealthStatsWriter;

    sget-object v14, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writePkg(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats$Uid$Pkg;)V

    const/16 v14, 0x271f

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v1, v14, v15, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_7

    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    if-eqz v10, :cond_9

    const/16 v12, 0x2720

    invoke-virtual {v10}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v12, 0x2721

    invoke-virtual {v10}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v12, 0x0

    invoke-virtual {v10}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v14

    array-length v15, v14

    move-wide v6, v12

    move v12, v9

    :goto_8
    if-ge v12, v15, :cond_8

    aget-object v13, v14, v12

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v6, v6, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    const/16 v12, 0x2722

    invoke-virtual {v1, v12, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v12, 0x2723

    invoke-virtual {v10}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    invoke-virtual {v1, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    if-eqz v6, :cond_b

    const/16 v7, 0x2724

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2725

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v12, 0x0

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    array-length v10, v7

    move-wide v13, v12

    move v12, v9

    :goto_9
    if-ge v12, v10, :cond_a

    aget-object v15, v7, v12

    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    add-long v13, v13, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    const/16 v7, 0x2726

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2727

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    if-eqz v6, :cond_d

    const/16 v7, 0x2728

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2729

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const-wide/16 v9, 0x0

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    array-length v12, v7

    move-wide v13, v9

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v12, :cond_c

    aget-object v10, v7, v9

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v15

    add-long/2addr v13, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_c
    const/16 v7, 0x272a

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x272b

    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_d
    const/16 v7, 0x272c

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v9, v12

    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x272d

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v9, v12

    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x272e

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v9

    iget-wide v14, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v14, v12

    invoke-virtual {v3, v14, v15, v8}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    div-long/2addr v14, v12

    invoke-virtual {v1, v7, v9, v14, v15}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    const/16 v7, 0x272f

    iget-wide v9, v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    mul-long/2addr v9, v12

    invoke-virtual {v3, v9, v10, v8}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v9

    div-long/2addr v9, v12

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2730

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2731

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2732

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2733

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2734

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2735

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-direct {v0, v1, v7, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2736

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2737

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2738

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x2739

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x273a

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x273b

    const/4 v12, 0x6

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x273c

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-direct {v0, v1, v7, v12}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v7, 0x273d

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v13

    int-to-long v12, v13

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x273e

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v13

    int-to-long v12, v13

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x273f

    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2740

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2741

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2742

    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2743

    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2744

    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    invoke-virtual {v1, v7, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2745

    const/4 v12, 0x5

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2746

    const/4 v13, 0x0

    invoke-virtual {v3, v13, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2747

    const/4 v13, 0x1

    invoke-virtual {v3, v13, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2748

    invoke-virtual {v3, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2749

    invoke-virtual {v3, v10, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    invoke-virtual {v1, v7, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x274a

    invoke-virtual {v3, v9, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x274b

    invoke-virtual {v3, v12, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x274d

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v9

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v12

    invoke-virtual {v1, v7, v9, v12, v13}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    const/16 v7, 0x274e

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v9

    const-wide/16 v12, 0x3e8

    div-long/2addr v9, v12

    invoke-virtual {v1, v7, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x274f

    invoke-virtual {v3, v8}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v7, 0x2750

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    return-void
.end method
