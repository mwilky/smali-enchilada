.class public Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppBatteryPreferenceController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/BasePreferenceController;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;"
    }
.end annotation


# static fields
.field private static final KEY_BATTERY:Ljava/lang/String; = "battery"


# instance fields
.field mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mBatteryPercent:Ljava/lang/String;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field mSipper:Lcom/android/internal/os/BatterySipper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "battery"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const-string v0, "battery"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/settings/SettingsActivity;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v9, v1

    invoke-static/range {v5 .. v11}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method isBatteryStatsAvailable()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->findTargetSipper(Lcom/android/internal/os/BatteryStatsHelper;I)Lcom/android/internal/os/BatterySipper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->updateBattery()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->onLoadFinished(Landroid/content/Loader;Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method updateBattery()V
    .locals 14
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->isBatteryStatsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v3

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v3, v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v12

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    move-wide v8, v12

    move v10, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120252

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryPercent:Ljava/lang/String;

    aput-object v7, v1, v2

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1209b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
