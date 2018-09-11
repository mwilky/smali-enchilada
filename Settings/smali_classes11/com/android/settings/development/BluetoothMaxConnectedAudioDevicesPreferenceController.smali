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
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    .line 46
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 57
    .local v0, "listPreference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 58
    .local v1, "entries":[Ljava/lang/CharSequence;
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

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "bluetooth_max_connected_audio_devices"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 113
    const-string v0, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 115
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 108
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 64
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "newValueString":Ljava/lang/String;
    move-object v1, p1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    .line 66
    .local v1, "listPreference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 68
    const-string v0, ""

    .line 70
    :cond_0
    const-string v2, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 72
    const/4 v2, 0x1

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 78
    .local v0, "listPreference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 80
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    .local v2, "entriesvalue":[Ljava/lang/CharSequence;
    iget v3, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 82
    .local v3, "supportentries":[Ljava/lang/CharSequence;
    iget v4, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 83
    .local v4, "supportentriesvalue":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    if-gt v5, v6, :cond_0

    .line 84
    aget-object v6, v1, v5

    aput-object v6, v3, v5

    .line 85
    aget-object v6, v2, v5

    aput-object v6, v4, v5

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 90
    const-string v5, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "currentValue":Ljava/lang/String;
    const/4 v6, 0x0

    .line 92
    .local v6, "index":I
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 93
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 94
    if-gez v6, :cond_1

    .line 96
    const-string v7, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v6, 0x0

    .line 100
    :cond_1
    invoke-virtual {v0, v6}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 101
    aget-object v7, v1, v6

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
