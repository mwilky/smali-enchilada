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
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 49
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 50
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V
    .locals 0
    .param p1, "settingsActivity"    # Lcom/android/settings/SettingsActivity;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "backend"    # Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 59
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 60
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 62
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "battery_optimization"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 82
    const-string v0, "battery_optimization"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f12073a

    .line 92
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 93
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-string v2, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    .line 94
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->launch(Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 71
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 72
    .local v0, "isWhitelisted":Z
    if-eqz v0, :cond_0

    const v1, 0x7f12073e

    goto :goto_0

    :cond_0
    const v1, 0x7f12073d

    :goto_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 73
    return-void
.end method
