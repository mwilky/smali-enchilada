.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "BatteryTipLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryTipLoader"

.field private static final USE_FAKE_DATA:Z = false


# instance fields
.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method private getFakeData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;-><init>(IJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    const-string v3, "Fake data"

    invoke-direct {v1, v2, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;-><init>(IZLjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v4, "BatteryTipLoader"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-boolean v6, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    invoke-direct {v4, v3, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/ContentResolver;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;

    invoke-direct {v4, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;

    iget-wide v5, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    invoke-direct {v4, v1, v5, v6}, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;J)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;

    invoke-direct {v4, v3, v1}, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/RestrictAppDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
