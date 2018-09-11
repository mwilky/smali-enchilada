.class public Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "ConnectedBluetoothDeviceUpdater.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnBluetoothDeviceUpdater"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p3, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 44
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;
    .param p2, "devicePreferenceCallback"    # Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
    .param p3, "localBluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method

.method public static synthetic lambda$addPreference$0(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "p"    # Landroid/support/v7/preference/Preference;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->launchDeviceDetails(Landroid/support/v7/preference/Preference;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 127
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 129
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 130
    .local v1, "btPreference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->hideSecondTarget(Z)V

    .line 132
    new-instance v2, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;-><init>(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    .end local v1    # "btPreference":Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    :cond_0
    return-void
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 5
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 85
    .local v0, "audioMode":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 92
    .local v1, "currentAudioProfile":I
    :goto_1
    nop

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, "isFilterMatched":Z
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isA2dpDevice()Z

    move-result v4

    xor-int/2addr v2, v4

    move v3, v2

    .line 110
    goto :goto_2

    .line 112
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHfpDevice()Z

    move-result v4

    xor-int/2addr v2, v4

    move v3, v2

    .line 120
    :cond_2
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->forceUpdate()V

    .line 59
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    .line 69
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 78
    :cond_2
    :goto_0
    return-void
.end method
