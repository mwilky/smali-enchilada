.class public Lcom/android/settings/connecteddevice/AddDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AddDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    return-void
.end method

.method private setBluetoothDiscoverableState()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    .line 80
    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "mBluetoothScanMode":I
    if-ne v0, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    goto :goto_0

    .line 87
    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 90
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 99
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x2

    .line 103
    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, ""

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120423

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->setBluetoothDiscoverableState()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_oneplus_devicename"

    .line 62
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "mOPDeviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 70
    .end local v0    # "mOPDeviceName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method updateState()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 117
    return-void
.end method
