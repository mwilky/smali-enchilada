.class public Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothMaxConnectedAudioDevicesPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MAX_CONNECTED_AUDIO_DEVICES_PREFERENCE_KEY:Ljava/lang/String; = "bluetooth_max_connected_audio_devices"

.field static final MAX_CONNECTED_AUDIO_DEVICES_PROPERTY:Ljava/lang/String; = "persist.bluetooth.maxconnectedaudiodevices"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDefaultMaxConnectedAudioDevices:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bluetooth_max_connected_audio_devices"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v0, ""

    :cond_0
    const-string v2, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    const/4 v2, 0x1

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    if-gt v5, v6, :cond_0

    aget-object v6, v1, v5

    aput-object v6, v3, v5

    aget-object v6, v2, v5

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v5, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    const-string v7, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_1
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
