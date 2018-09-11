.class public Lcom/android/settings/development/BluetoothDelayReportsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothDelayReportsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final BLUETOOTH_DISABLE_AVDTP_DELAY_REPORTS_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disabledelayreports"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final BLUETOOTH_DISABLE_AVDTP_DELAY_REPORT_KEY:Ljava/lang/String; = "bluetooth_disable_avdtp_delay_reports"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "bluetooth_disable_avdtp_delay_reports"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/development/BluetoothDelayReportsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 66
    const-string v0, "persist.bluetooth.disabledelayreports"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 48
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 49
    .local v0, "isDisabled":Z
    const-string v1, "persist.bluetooth.disabledelayreports"

    .line 50
    if-eqz v0, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    .line 49
    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 56
    const-string v0, "persist.bluetooth.disabledelayreports"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, "isDisabled":Z
    iget-object v1, p0, Lcom/android/settings/development/BluetoothDelayReportsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 59
    return-void
.end method
