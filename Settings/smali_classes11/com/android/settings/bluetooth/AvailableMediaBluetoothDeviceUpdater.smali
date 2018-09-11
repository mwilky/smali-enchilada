.class public Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;
.super Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
.source "AvailableMediaBluetoothDeviceUpdater.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvailableMediaBluetoothDeviceUpdater"


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

    iput-object v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

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

    iput-object v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method


# virtual methods
.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 6
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 85
    .local v0, "audioMode":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

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
    const/4 v2, 0x0

    .line 96
    .local v2, "isFilterMatched":Z
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const-string v3, "AvailableMediaBluetoothDeviceUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFilterMatched() current audio profile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 108
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isA2dpDevice()Z

    move-result v2

    .line 109
    goto :goto_2

    .line 111
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHfpDevice()Z

    move-result v2

    .line 115
    :goto_2
    const-string v3, "AvailableMediaBluetoothDeviceUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFilterMatched() device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isFilterMatched : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->forceUpdate()V

    .line 59
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 125
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 126
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()Z

    move-result v1

    return v1
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    .line 65
    const-string v0, "AvailableMediaBluetoothDeviceUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileConnectionStateChanged() device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 78
    :cond_2
    :goto_0
    return-void
.end method
