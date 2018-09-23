.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BgOptimizeSwitch.java"


# static fields
.field private static final KEY_SLEEP_STANDBY:Ljava/lang/String; = "sleep_standby"

.field private static final OPTIMAL_POWER_SAVE_MODE_ENABLED:Ljava/lang/String; = "optimal_power_save_mode_enabled"

.field private static final PREF_BG_OPTIMIZE_SWITCH:Ljava/lang/String; = "bg_optimize_switch"


# instance fields
.field private mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 6

    const-string v0, "bg_optimize_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlState(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    const-string v3, "sleep_standby"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "optimal_power_save_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160023

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->initData()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "bg_optimize_switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState(II)I

    return v1

    :cond_0
    const-string v0, "sleep_standby"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "optimal_power_save_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
