.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-object v4, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    const-wide/16 v8, 0x0

    move-wide v9, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_2

    iget-object v13, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v13, v8}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v13

    move-wide v14, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v13, :cond_1

    invoke-virtual {v2, v8, v9, v3}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v5

    long-to-double v11, v5

    iget-object v7, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v20

    mul-double v11, v11, v20

    sget-boolean v7, Lcom/android/internal/os/CpuPowerCalculator;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_0

    const-wide/16 v20, 0x0

    cmpg-double v7, v11, v20

    if-gez v7, :cond_0

    const-string v7, "CpuPowerCalculator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v13

    const-string v13, "[BGC] UID "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": CPU cluster #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " step #"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " timeUs="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " power="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v5

    const-wide v18, 0x41ead27480000000L    # 3.6E9

    div-double v5, v11, v18

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move-wide/from16 v23, v5

    move/from16 v22, v13

    :goto_2
    add-double/2addr v14, v11

    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v22

    const-wide/16 v6, 0x3e8

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    move-wide v9, v14

    const-wide/16 v6, 0x3e8

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-double v5, v5

    iget-object v7, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    const-string v8, "cpu.active"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v9, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v5

    if-eqz v5, :cond_4

    array-length v6, v5

    if-ne v6, v4, :cond_3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_4

    aget-wide v7, v5, v6

    const-wide/16 v11, 0x3e8

    mul-long/2addr v7, v11

    long-to-double v7, v7

    iget-object v13, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v13, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v13

    mul-double/2addr v7, v13

    add-double/2addr v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const-string v6, "CpuPowerCalculator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " actual # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide v6, 0x41ead27480000000L    # 3.6E9

    div-double v6, v9, v6

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v6, 0x0

    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/16 v17, 0x0

    :goto_4
    move/from16 v12, v17

    if-ge v12, v11, :cond_9

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Proc;

    if-nez v13, :cond_5

    const-string v14, "CpuPowerCalculator"

    const-string v15, "WARNING! getProcessStats()\'s value is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto :goto_7

    :cond_5
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move/from16 v25, v4

    move-object/from16 v26, v5

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v15

    add-long/2addr v4, v15

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v4

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v15

    add-long/2addr v4, v15

    invoke-virtual {v13, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v15

    add-long/2addr v4, v15

    iget-object v15, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v15, :cond_7

    iget-object v15, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    long-to-double v2, v4

    cmpg-double v0, v6, v2

    if-gez v0, :cond_8

    const-string v0, "*"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    long-to-double v2, v4

    iput-object v14, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_6

    :cond_7
    :goto_5
    long-to-double v2, v4

    iput-object v14, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :goto_6
    move-wide v6, v2

    :cond_8
    :goto_7
    add-int/lit8 v17, v12, 0x1

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p7

    goto :goto_4

    :cond_9
    move/from16 v25, v4

    move-object/from16 v26, v5

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_a

    iget-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_a
    return-void
.end method
