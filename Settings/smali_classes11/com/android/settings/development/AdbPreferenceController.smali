.class public Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 35
    return-void
.end method


# virtual methods
.method public dismissConfirmationDialog()V
    .locals 0

    .line 53
    return-void
.end method

.method public isConfirmationDialogShowing()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onAdbDialogConfirmed()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    .line 39
    return-void
.end method

.method public onAdbDialogDismissed()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 43
    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/AdbPreferenceController;->writeAdbSetting(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/development/AdbPreferenceController;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 66
    return-void
.end method

.method public showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroid/app/Fragment;)V

    .line 48
    return-void
.end method
