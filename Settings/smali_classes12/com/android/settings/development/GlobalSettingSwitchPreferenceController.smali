.class public abstract Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "GlobalSettingSwitchPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final SETTING_VALUE_OFF:I = 0x0

.field private static final SETTING_VALUE_ON:I = 0x1


# instance fields
.field private final mDefault:I

.field private final mOff:I

.field private final mOn:I

.field private final mSettingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOn:I

    iput p4, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOff:I

    iput p5, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mDefault:I

    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOff:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOn:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOff:I

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mSettingsKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iget v2, p0, Lcom/android/settings/development/GlobalSettingSwitchPreferenceController;->mOff:I

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
