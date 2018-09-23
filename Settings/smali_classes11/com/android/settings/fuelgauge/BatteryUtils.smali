.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryUtils$StatusType;
    }
.end annotation


# static fields
.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field public static final SDK_NULL:I = -0x1

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field private static final TAG:Ljava/lang/String; = "BatteryUtils"

.field public static final UID_NULL:I = -0x1

.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    :cond_1
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object v0
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    const-string v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "BatteryUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "background time(us): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;IJ)J
    .locals 11

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, v0, v1

    invoke-virtual {p1, v5, p3, p4, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v6

    const-string v8, "BatteryUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " time(us): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "BatteryUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "foreground time(us): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    return-wide v4
.end method

.method private hasLauncherEntry([Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x1c0200

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isDataCorrupted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .locals 8

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    :try_start_0
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    return v6

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "BatteryUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isSystemUid(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static logRuntime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public calculateBatteryPercent(DDDI)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    sub-double v0, p3, p5

    div-double v0, p1, v0

    int-to-double v2, p7

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0
.end method

.method public calculateRunningTimeBasedOnStatsType(Lcom/android/internal/os/BatteryStatsHelper;I)J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    nop

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J
    .locals 3

    nop

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public findBatterySipperByType(Ljava/util/List;Lcom/android/internal/os/BatterySipper$DrainType;)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper$DrainType;",
            ")",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppLongVersionCode(Ljava/lang/String;)J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v12

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/android/settings/fuelgauge/Estimate;

    invoke-virtual {v12, v3, v4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v7

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    :goto_0
    move-object v8, v5

    const-string v5, "BatteryInfoLoader post query"

    invoke-static {p2, v5, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v12

    move-wide v9, v3

    invoke-static/range {v5 .. v11}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v5

    const-string v6, "BatteryInfoLoader.loadInBackground"

    invoke-static {p2, v6, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5
.end method

.method getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J
    .locals 4
    .param p2    # Landroid/os/BatteryStats$Uid;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    return-wide v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-wide v0

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getScreenUsageTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSummaryResIdFromAnomalyType(I)I
    .locals 3
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect anomaly type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v0, 0x7f1201f6

    return v0

    :pswitch_1
    const v0, 0x7f1201f8

    return v0

    :pswitch_2
    const v0, 0x7f1201f7

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "BatteryUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    invoke-virtual {p3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    return-void
.end method

.method public isBackgroundRestrictionEnabled(IILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public isForceAppStandbyEnabled(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPreOApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "BatteryUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isPreOApp([Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    return-wide v0
.end method

.method public setForceAppStandby(ILjava/lang/String;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method

.method public shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemUid(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->hasLauncherEntry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    nop

    :cond_3
    :goto_0
    return v2
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide v3, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 17
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    iget-object v7, v7, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_0

    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-virtual {v9, v8, v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v10

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v4, v8, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    add-long/2addr v2, v10

    goto :goto_1

    :cond_0
    move-object/from16 v9, p0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p0

    const-wide/32 v5, 0x927c0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_3

    if-nez v1, :cond_2

    const-string v5, "BatteryUtils"

    const-string v6, "screen sipper is null even when app screen time is not zero"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-wide v5, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    iget-wide v11, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v10}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v4, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v13, v5

    long-to-double v0, v2

    div-double/2addr v13, v0

    add-double/2addr v11, v13

    iput-wide v11, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_3
    return-void
.end method

.method public sortUsageList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils$1;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
