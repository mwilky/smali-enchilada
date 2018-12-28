.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BgOptimizeSwitch.java"


# static fields
.field private static final KEY_SLEEP_STANDBY:Ljava/lang/String; = "sleep_standby"

.field private static final OPTIMAL_POWER_SAVE_MODE_ENABLED:Ljava/lang/String; = "optimal_power_save_mode_enabled"

.field private static final PREF_BG_OPTIMIZE_SWITCH:Ljava/lang/String; = "bg_optimize_switch"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field switchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private confirmDeepOptimization()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch$1;-><init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120aca

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ac9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initData()V
    .locals 5

    const-string v0, "bg_optimize_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->switchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->switchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->switchPreference:Landroid/support/v14/preference/SwitchPreference;

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
    const-string v0, "sleep_standby"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "optimal_power_save_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

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

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mContext:Landroid/content/Context;

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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->switchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->confirmDeepOptimization()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlState(II)I

    const-string v0, "battery_deep"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :goto_0
    return v1

    :cond_1
    const-string v0, "sleep_standby"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->mSleepStandBySwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeSwitch;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "optimal_power_save_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
