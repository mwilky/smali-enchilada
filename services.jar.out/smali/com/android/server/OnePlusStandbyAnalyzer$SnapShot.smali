.class public final Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mIsEnterDeepIdle:Z

.field private mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

.field private mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field private mmA:F

.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 358
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 360
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F

    .line 362
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 364
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 365
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    .line 366
    iput p5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    .line 367
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 370
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 372
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    if-ne v0, v1, :cond_d

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 377
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 380
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 381
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 382
    const-wide/16 v3, 0x0

    .line 383
    .local v3, "upTimeMs":J
    const-wide/16 v6, 0x3e8

    if-eqz v2, :cond_0

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    mul-long/2addr v8, v6

    invoke-virtual {v2, v8, v9, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v8

    div-long v3, v8, v6

    .line 385
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time on battery of uptime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 390
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/BatteryStatsService;->UpdateKernelWakelocks()V

    .line 392
    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 392
    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 500
    .restart local v0    # "startTime":J
    .restart local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "upTimeMs":J
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string v5, "======CALCULATE======"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 501
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$900(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 502
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_3

    .line 448
    .restart local v0    # "startTime":J
    .restart local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v3    # "upTimeMs":J
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v9, "======END======"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 449
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    .line 450
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v3, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    .line 452
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    invoke-static {v9, v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I

    .line 453
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    invoke-static {v9, v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F

    .line 457
    if-eqz v2, :cond_2

    .line 458
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v9, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v9

    .line 459
    .local v9, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    .line 460
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "End"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-static {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 463
    :cond_1
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    mul-long/2addr v12, v6

    iget-object v14, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v11, v2, v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    .line 464
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_2

    .line 465
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "End-WL"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-static {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 466
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "End"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 471
    .end local v9    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_2
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    .line 473
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    .line 476
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    .line 477
    move v9, v5

    .line 477
    .local v9, "i":I
    :goto_0
    sget v10, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v9, v10, :cond_3

    .line 478
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    mul-long/2addr v10, v6

    invoke-virtual {v2, v9, v10, v11, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 479
    .local v10, "timeMs":J
    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v10    # "timeMs":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 481
    .end local v9    # "i":I
    :cond_3
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End-Signal"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 484
    :cond_4
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "End"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    .line 487
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End"

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$500(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "End"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_End_Map:Ljava/util/Map;

    .line 493
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "End"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    .line 494
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "End"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$600(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@[End] SnapShot in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 497
    goto/16 :goto_3

    .line 395
    :pswitch_2
    const-string v9, "======START======"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v9, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$102(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 398
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    .line 399
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v3, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    .line 403
    if-eqz v2, :cond_8

    .line 404
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v9, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v9

    .line 405
    .local v9, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    .line 406
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-static {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 409
    :cond_6
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    mul-long/2addr v12, v6

    iget-object v14, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v11, v2, v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    .line 410
    sget-boolean v10, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v10, :cond_7

    .line 411
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start-WL"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-static {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 412
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v11, "Start"

    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {v10, v11, v12, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 414
    .end local v9    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_7
    goto :goto_1

    .line 415
    :cond_8
    const-string/jumbo v9, "stats == null"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 419
    :goto_1
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    .line 421
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    .line 424
    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    .line 425
    move v9, v5

    .line 425
    .local v9, "i":I
    :goto_2
    sget v10, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v9, v10, :cond_9

    .line 426
    iget-object v10, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v10, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    mul-long/2addr v10, v6

    invoke-virtual {v2, v9, v10, v11, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v10

    div-long/2addr v10, v6

    .line 427
    .restart local v10    # "timeMs":J
    iget-object v12, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v10    # "timeMs":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 429
    .end local v9    # "i":I
    :cond_9
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "Start-Signal"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 432
    :cond_a
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    .line 435
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "Start"

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$500(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Start_Map:Ljava/util/Map;

    .line 441
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v7, "Start"

    sget-object v9, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    .line 442
    sget-boolean v5, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string v6, "Start"

    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v7, v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-static {v5, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$600(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 444
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@@@[START] SnapShot in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 445
    nop

    .line 506
    .end local v0    # "startTime":J
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v3    # "upTimeMs":J
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    goto :goto_4

    .line 508
    :cond_c
    const-string/jumbo v0, "mBatteryStatsService == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 510
    :cond_d
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
