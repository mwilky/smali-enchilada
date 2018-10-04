.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WakelockPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerWakelock:D

.field private mTotalAppWakelockTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    const-string v0, "cpu.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    move-wide v7, v2

    move v2, v6

    :goto_0
    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    if-nez v3, :cond_1

    const-string v9, "WakelockPowerCalculator"

    const-string v10, "WARNING! getWakelockStats()\'s value is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_0
    move-wide/from16 v10, p3

    move/from16 v12, p7

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_0

    move-wide/from16 v10, p3

    move/from16 v12, p7

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    add-long/2addr v7, v13

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v10, p3

    move/from16 v12, p7

    const-wide/16 v2, 0x3e8

    div-long v2, v7, v2

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    iget-wide v13, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v2, v13

    iput-wide v2, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double v2, v2

    iget-wide v13, v0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr v2, v13

    const-wide v13, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v13

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 8

    invoke-virtual {p2, p5, p6}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    div-long/2addr v6, v2

    add-long/2addr v4, v6

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-double v2, v0

    iget-wide v4, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr v2, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v4, v0

    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v4, v2

    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    return-void
.end method
