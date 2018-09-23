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

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static synthetic lambda$addPreference$0(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->launchDeviceDetails(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->hideSecondTarget(Z)V

    new-instance v2, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/-$$Lambda$ConnectedBluetoothDeviceUpdater$cbcA1LEPXmJVOc_WhespijdA8X8;-><init>(Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    nop

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isA2dpDevice()Z

    move-result v4

    xor-int/2addr v2, v4

    move v3, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHfpDevice()Z

    move-result v4

    xor-int/2addr v2, v4

    move v3, v2

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

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    :goto_0
    return-void
.end method
