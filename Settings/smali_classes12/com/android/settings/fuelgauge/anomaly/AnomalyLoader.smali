.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "AnomalyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnomalyLoader"

.field private static final USE_FAKE_DATA:Z = false


# instance fields
.field mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mPackageName:Ljava/lang/String;

.field mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mUserManager:Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsHelper;Ljava/lang/String;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;)V

    return-void
.end method


# virtual methods
.method generateFakeData()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "Settings"

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "AnomalyLoader"

    const-string v6, "Cannot find package by name: com.android.settings"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPolicy:Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->detectAnomalies(Lcom/android/internal/os/BatteryStatsHelper;Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
