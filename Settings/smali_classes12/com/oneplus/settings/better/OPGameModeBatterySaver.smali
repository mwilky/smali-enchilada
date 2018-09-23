.class public Lcom/oneplus/settings/better/OPGameModeBatterySaver;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGameModeBatterySaver.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final BATTERY_SAVER_CLOSE_VALUE:Ljava/lang/String; = "0_0"

.field private static final BATTERY_SAVER_HIGH_VALUE:Ljava/lang/String; = "56_30"

.field private static final BATTERY_SAVER_LIGHT_VALUE:Ljava/lang/String; = "56_0"

.field public static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final KEY_battery_saver_close:Ljava/lang/String; = "battery_saver_close"

.field private static final KEY_battery_saver_high:Ljava/lang/String; = "battery_saver_high"

.field private static final KEY_battery_saver_light:Ljava/lang/String; = "battery_saver_light"


# instance fields
.field private mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

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

    const v0, 0x7f16007e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mContext:Landroid/content/Context;

    const-string v0, "battery_saver_close"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "battery_saver_light"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "battery_saver_high"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_battery_saver"

    const-string v3, "0_0"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "game_mode_battery_saver"

    const-string v1, "0_0"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_battery_saver"

    const-string v3, "56_0"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "game_mode_battery_saver"

    const-string v1, "56_0"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_battery_saver"

    const-string v3, "56_30"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "game_mode_battery_saver"

    const-string v1, "56_30"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_battery_saver"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveCloseButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "0_0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveLightButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "56_0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameModeBatterySaver;->mBatterySaveHighButton:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v2, "56_30"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
