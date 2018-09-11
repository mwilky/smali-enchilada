.class public abstract Lcom/android/settings/development/SystemSettingSwitchPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SystemSettingSwitchPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final SETTING_VALUE_OFF:I = 0x0

.field private static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private final mSettingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemSettingsKey"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 46
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 47
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    .line 48
    nop

    .line 47
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 49
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    .line 54
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 56
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings/development/SystemSettingSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    return-void
.end method
