.class public Lcom/android/settings/bluetooth/SavedBluetoothTwsDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "SavedBluetoothTwsDeviceUpdater.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p2, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
    .param p3, "localBluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 74
    return-void
.end method


# virtual methods
.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 87
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 88
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 78
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothTwsDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 80
    :cond_0
    if-nez p2, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothTwsDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 83
    :cond_1
    :goto_0
    return-void
.end method
