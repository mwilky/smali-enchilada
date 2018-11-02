.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeLockAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLockAnomalyChecker"


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mWakeLockThresholdMs:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    return-void
.end method


# virtual methods
.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_4

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    iget-object v10, v9, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v10, :cond_2

    iget-object v11, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v11, v9}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    if-eq v5, v11, :cond_0

    nop

    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    invoke-virtual {v0, v10, v3, v4}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v13

    move-wide v15, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mWakeLockThresholdMs:J

    cmp-long v3, v13, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v17, v1

    new-instance v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    move/from16 v18, v5

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeLockTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    iget-object v5, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeLockAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v5, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    move/from16 v18, v5

    goto :goto_1

    :cond_2
    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-wide v3, v15

    move-object/from16 v1, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_4
    move-object/from16 v17, v1

    move-wide v15, v3

    move/from16 v18, v5

    return-object v2
.end method

.method getBackgroundTotalDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2
.end method

.method getCurrentDurationMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
