.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SensorPowerCalculator.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "SensorPowerCalculator"


# instance fields
.field private final mGpsPower:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/SensorPowerCalculator;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "stats"    # Landroid/os/BatteryStats;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "statsType"    # I

    .line 42
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 43
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/SensorPowerCalculator;->getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    .line 45
    return-void
.end method

.method private getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D
    .locals 18
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "statsType"    # I

    move-object/from16 v0, p1

    .line 104
    const-string v1, "gps.on"

    .line 105
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v4

    .line 106
    .local v4, "averagePower":D
    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    .line 107
    return-wide v4

    .line 109
    :cond_0
    const-wide/16 v1, 0x0

    .line 110
    .end local v4    # "averagePower":D
    .local v1, "averagePower":D
    const-wide/16 v3, 0x0

    .line 111
    .local v3, "totalTime":J
    const-wide/16 v5, 0x0

    .line 112
    .local v5, "totalPower":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 113
    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v12

    .line 114
    .local v12, "timePerLevel":J
    add-long/2addr v3, v12

    .line 115
    const-string v14, "gps.signalqualitybased"

    invoke-virtual {v0, v14, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v14

    move-wide/from16 v16, v1

    long-to-double v0, v12

    .end local v1    # "averagePower":D
    .local v16, "averagePower":D
    mul-double/2addr v14, v0

    add-double/2addr v5, v14

    .line 112
    .end local v12    # "timePerLevel":J
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v1, v16

    move-object/from16 v0, p1

    goto :goto_0

    .line 118
    .end local v7    # "i":I
    .end local v16    # "averagePower":D
    .restart local v1    # "averagePower":D
    :cond_1
    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-wide/from16 v16, v1

    .end local v1    # "averagePower":D
    .restart local v16    # "averagePower":D
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_2

    .line 119
    long-to-double v0, v3

    div-double v1, v5, v0

    .line 121
    .end local v16    # "averagePower":D
    .restart local v1    # "averagePower":D
    move-wide/from16 v16, v1

    .end local v1    # "averagePower":D
    .restart local v16    # "averagePower":D
    :cond_2
    return-wide v16
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 23
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 52
    .local v2, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 53
    .local v3, "NSE":I
    const/4 v5, 0x0

    .local v5, "ise":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 54
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Sensor;

    .line 55
    .local v6, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 56
    .local v7, "sensorHandle":I
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 60
    .local v8, "timer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v9, 0x0

    .line 61
    .local v9, "sensorTime":J
    if-eqz v8, :cond_0

    .line 62
    move-wide/from16 v11, p3

    move/from16 v13, p7

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v9, v14, v16

    goto :goto_1

    .line 66
    :cond_0
    move-wide/from16 v11, p3

    move/from16 v13, p7

    :goto_1
    const/16 v14, -0x2710

    if-eq v7, v14, :cond_3

    .line 80
    iget-object v14, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 81
    .local v14, "sensorsCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v4, v18

    if-ge v4, v14, :cond_2

    .line 82
    .end local v18    # "i":I
    .local v4, "i":I
    iget-object v15, v0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Sensor;

    .line 83
    .local v15, "s":Landroid/hardware/Sensor;
    move-object/from16 v19, v2

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    .end local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v19, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    if-ne v2, v7, :cond_1

    .line 84
    move/from16 v20, v3

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .end local v3    # "NSE":I
    .local v20, "NSE":I
    move-object/from16 v21, v6

    long-to-float v6, v9

    .end local v6    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .local v21, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual {v15}, Landroid/hardware/Sensor;->getPower()F

    move-result v16

    mul-float v6, v6, v16

    const v16, 0x4a5bba00    # 3600000.0f

    div-float v6, v6, v16

    float-to-double v11, v6

    add-double/2addr v2, v11

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 87
    sget-boolean v2, Lcom/android/internal/os/SensorPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v11, 0x0

    cmpg-double v2, v2, v11

    if-gez v2, :cond_4

    .line 88
    const-string v2, "SensorPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] SendorHandle: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " time="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " getPower()="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v15}, Landroid/hardware/Sensor;->getPower()F

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " power="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 91
    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 81
    .end local v15    # "s":Landroid/hardware/Sensor;
    .end local v20    # "NSE":I
    .end local v21    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v3    # "NSE":I
    .restart local v6    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    :cond_1
    move/from16 v20, v3

    move-object/from16 v21, v6

    .end local v3    # "NSE":I
    .end local v6    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v20    # "NSE":I
    .restart local v21    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    add-int/lit8 v17, v4, 0x1

    .end local v4    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v2, v19

    move-wide/from16 v11, p3

    goto :goto_2

    .line 53
    .end local v7    # "sensorHandle":I
    .end local v8    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v9    # "sensorTime":J
    .end local v14    # "sensorsCount":I
    .end local v17    # "i":I
    .end local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v20    # "NSE":I
    .end local v21    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v3    # "NSE":I
    :cond_2
    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v3    # "NSE":I
    .restart local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v20    # "NSE":I
    goto :goto_3

    .line 68
    .end local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v20    # "NSE":I
    .restart local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v3    # "NSE":I
    .restart local v6    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v7    # "sensorHandle":I
    .restart local v8    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v9    # "sensorTime":J
    :cond_3
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v6

    .end local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v3    # "NSE":I
    .end local v6    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .restart local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v20    # "NSE":I
    .restart local v21    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    iput-wide v9, v1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 69
    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v2, v2

    iget-wide v11, v0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    mul-double/2addr v2, v11

    const-wide v11, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v11

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 73
    sget-boolean v2, Lcom/android/internal/os/SensorPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v11, 0x0

    cmpg-double v2, v2, v11

    if-gez v2, :cond_4

    .line 74
    const-string v2, "SensorPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] GPS active: time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 75
    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .end local v7    # "sensorHandle":I
    .end local v8    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v9    # "sensorTime":J
    .end local v21    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_0

    .line 100
    .end local v5    # "ise":I
    .end local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v20    # "NSE":I
    .restart local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v3    # "NSE":I
    :cond_5
    move/from16 v13, p7

    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v3    # "NSE":I
    .restart local v19    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v20    # "NSE":I
    return-void
.end method
