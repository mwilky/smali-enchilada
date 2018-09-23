.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.source "ToggleScreenMagnificationPreferenceFragmentForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x170

    return v0
.end method

.method public onStop()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "checked"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    const-string v2, "checked"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x170

    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v4}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onStop()V

    return-void
.end method
