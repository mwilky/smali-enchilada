.class public Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryOptimizationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "battery_optimization"


# instance fields
.field private mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mPackageName:Ljava/lang/String;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_optimization"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string v0, "battery_optimization"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12073a

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-string v2, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->launch(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f12073e

    goto :goto_0

    :cond_0
    const v1, 0x7f12073d

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    return-void
.end method
