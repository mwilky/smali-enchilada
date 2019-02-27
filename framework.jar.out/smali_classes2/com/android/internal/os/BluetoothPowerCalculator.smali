.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalculator"


# instance fields
.field private mAppTotalPowerMah:D

.field private mAppTotalTimeMs:J

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/BluetoothPowerCalculator;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    add-long v11, v5, v9

    add-long/2addr v11, v7

    invoke-virtual {v4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    long-to-double v13, v13

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double/2addr v13, v15

    const-wide/16 v17, 0x0

    cmpl-double v19, v13, v17

    if-nez v19, :cond_1

    move-wide/from16 v20, v13

    long-to-double v13, v5

    move-object/from16 v22, v4

    move-wide/from16 v23, v5

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v13, v4

    long-to-double v4, v7

    move-wide/from16 v25, v7

    iget-wide v6, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr v4, v6

    add-double/2addr v13, v4

    long-to-double v4, v9

    iget-wide v6, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v4, v6

    add-double/2addr v13, v4

    div-double/2addr v13, v15

    goto :goto_0

    :cond_1
    move-object/from16 v22, v4

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    move-wide/from16 v20, v13

    :goto_0
    sget-boolean v4, Lcom/android/internal/os/BluetoothPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_2

    cmpg-double v4, v13, v17

    if-gez v4, :cond_2

    const-string v4, "BluetoothPowerCalculator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] Bluetooth active: time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-wide v13, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    add-double/2addr v4, v13

    iput-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    add-long/2addr v4, v11

    iput-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    add-long v10, v4, v6

    add-long/2addr v10, v8

    invoke-virtual {v3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v14, 0x414b774000000000L    # 3600000.0

    div-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpl-double v16, v12, v14

    if-nez v16, :cond_0

    long-to-double v14, v4

    move-object/from16 v17, v3

    iget-wide v2, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v14, v2

    long-to-double v2, v8

    move-wide/from16 v18, v4

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v14, v2

    long-to-double v2, v6

    iget-wide v4, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v14, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v12, v14, v2

    goto :goto_0

    :cond_0
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_0
    iget-wide v2, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    sub-double v2, v12, v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    const-wide/16 v4, 0x0

    iget-wide v12, v0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    sub-long v12, v10, v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalPowerMah:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mAppTotalTimeMs:J

    return-void
.end method
