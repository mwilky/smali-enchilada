.class public Lcom/android/internal/os/MediaPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MediaPowerCalculator.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final MS_IN_HR:I = 0x36ee80

.field private static final TAG:Ljava/lang/String; = "MediaPowerCalculator"


# instance fields
.field private final mAudioAveragePowerMa:D

.field private final mVideoAveragePowerMa:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/MediaPowerCalculator;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-wide v6, 0x414b774000000000L    # 3600000.0

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-nez v5, :cond_0

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    div-long/2addr v14, v8

    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    long-to-double v8, v14

    iget-wide v10, v0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    mul-double/2addr v8, v10

    div-double/2addr v8, v6

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    :goto_0
    sget-boolean v8, Lcom/android/internal/os/MediaPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1

    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    cmpg-double v8, v8, v12

    if-gez v8, :cond_1

    const-string v8, "MediaPowerCalculator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] Audio: time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " power="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    if-nez v8, :cond_2

    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    const-wide/16 v14, 0x3e8

    div-long/2addr v9, v14

    iput-wide v9, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    long-to-double v14, v9

    iget-wide v12, v0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    mul-double/2addr v14, v12

    div-double/2addr v14, v6

    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    :goto_1
    sget-boolean v6, Lcom/android/internal/os/MediaPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_3

    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    const-wide/16 v9, 0x0

    cmpg-double v6, v6, v9

    if-gez v6, :cond_3

    const-string v6, "MediaPowerCalculator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BGC] Video: time="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " power="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
