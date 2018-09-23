.class public Lcom/android/settings/development/LogdSizePreferenceController;
.super Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;
.source "LogdSizePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/AbstractLogdSizePreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/LogdSizePreferenceController;->writeLogdSizeOption(Ljava/lang/Object;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/development/LogdSizePreferenceController;->updateLogdSizeValues()V

    return-void
.end method
