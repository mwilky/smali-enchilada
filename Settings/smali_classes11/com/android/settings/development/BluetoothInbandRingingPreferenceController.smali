.class public Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothInbandRingingPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final BLUETOOTH_DISABLE_INBAND_RINGING_KEY:Ljava/lang/String; = "bluetooth_disable_inband_ringing"

.field static final BLUETOOTH_DISABLE_INBAND_RINGING_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableinbandringing"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "bluetooth_disable_inband_ringing"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;->isInbandRingingSupported()Z

    move-result v0

    return v0
.end method

.method isInbandRingingSupported()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    const-string v0, "persist.bluetooth.disableinbandringing"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 54
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 55
    .local v0, "isChecked":Z
    const-string v1, "persist.bluetooth.disableinbandringing"

    .line 56
    if-eqz v0, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    .line 55
    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 62
    const-string v0, "persist.bluetooth.disableinbandringing"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/settings/development/BluetoothInbandRingingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 65
    return-void
.end method
