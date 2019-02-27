.class public Lcom/android/internal/os/FlashlightPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "FlashlightPowerCalculator.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "FlashlightPowerCalculator"


# instance fields
.field private final mFlashlightPowerOnAvg:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/FlashlightPowerCalculator;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 35
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 36
    const-string v0, "camera.flashlight"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    .line 37
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 14
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    move-object v0, p0

    move-object v1, p1

    .line 45
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 46
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 47
    move-wide/from16 v5, p3

    move/from16 v7, p7

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 48
    .local v8, "totalTime":J
    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 49
    long-to-double v10, v8

    iget-wide v12, v0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    mul-double/2addr v10, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v10, v12

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 52
    sget-boolean v10, Lcom/android/internal/os/FlashlightPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_0

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v3, v10, v3

    if-gez v3, :cond_0

    .line 53
    const-string v3, "FlashlightPowerCalculator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] FlashlightPower, time="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " mFlashlightPowerOnAvg="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/internal/os/FlashlightPowerCalculator;->mFlashlightPowerOnAvg:D

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, " power="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 55
    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v8    # "totalTime":J
    :cond_0
    goto :goto_0

    .line 59
    :cond_1
    move-wide/from16 v5, p3

    move/from16 v7, p7

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 60
    iput-wide v3, v1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 62
    :goto_0
    return-void
.end method
