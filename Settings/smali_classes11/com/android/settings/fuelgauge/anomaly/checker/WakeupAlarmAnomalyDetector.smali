.class public Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;
.super Ljava/lang/Object;
.source "WakeupAlarmAnomalyDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/checker/AnomalyDetector;


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeupAlarmAnomalyDetector"


# instance fields
.field private mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWakeupAlarmThreshold:J

.field private mWakeupBlacklistedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-wide v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmThreshold:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    iget-object v0, p2, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupBlacklistedTags:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

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

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Ljava/util/List;

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

    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v7, p2

    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v3, v8

    if-ltz v8, :cond_4

    const/4 v8, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v8, v9, :cond_4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    iget-object v11, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v11, :cond_2

    iget-object v12, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v12, v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    if-eq v6, v12, :cond_0

    nop

    move-object/from16 v17, v1

    move-wide v15, v3

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0, v11}, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v3

    double-to-int v12, v12

    int-to-long v13, v12

    move-wide v15, v3

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupAlarmThreshold:J

    cmp-long v3, v13, v3

    if-lez v3, :cond_1

    iget-object v3, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v13, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v13, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    move-object/from16 v17, v1

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setTargetSdkVersion(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    iget-object v14, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v18, v4

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v14, v13, v4, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBackgroundRestrictionEnabled(IILjava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setBackgroundRestrictionEnabled(Z)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setWakeupAlarmCount(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->isActionActive(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    goto :goto_1

    :cond_2
    move-object/from16 v17, v1

    move-wide v15, v3

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move-wide v3, v15

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_4
    move-object/from16 v17, v1

    move-wide v15, v3

    return-object v2
.end method

.method getWakeupAlarmCountFromUid(Landroid/os/BatteryStats$Uid;)I
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    nop

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    nop

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/anomaly/checker/WakeupAlarmAnomalyDetector;->mWakeupBlacklistedTags:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method
