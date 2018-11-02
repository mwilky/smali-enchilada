.class public Lcom/android/settings/development/LogPersistPreferenceController;
.super Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.source "LogPersistPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public dismissConfirmationDialog()V
    .locals 0

    return-void
.end method

.method public isConfirmationDialogShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/development/LogPersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogPersistPreferenceController;->setLogpersistOff(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method

.method public showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1    # Landroid/support/v7/preference/Preference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->show(Lcom/android/settings/development/LogPersistDialogHost;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/LogPersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method
