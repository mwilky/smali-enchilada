.class public final Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "BluetoothSummaryUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSummaryUpdater"


# instance fields
.field private final mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
    .param p3, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    .line 48
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 51
    return-void
.end method


# virtual methods
.method getConnectedDeviceSummary()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "deviceName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 122
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v2, :cond_0

    .line 123
    const-string v3, "BluetoothSummaryUpdater"

    const-string v4, "getConnectedDeviceSummary, bonded devices are null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v4, 0x7f1202b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 125
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const v4, 0x7f12057d

    if-eqz v3, :cond_1

    .line 126
    const-string v3, "BluetoothSummaryUpdater"

    const-string v5, "getConnectedDeviceSummary, no bonded devices"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 129
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 130
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    add-int/lit8 v1, v1, 0x1

    .line 133
    if-le v1, v6, :cond_2

    .line 134
    goto :goto_1

    .line 137
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    goto :goto_0

    .line 138
    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 139
    const-string v3, "BluetoothSummaryUpdater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConnectedDeviceSummary, deviceName is null, numBondedDevices="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 142
    .restart local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v6, "BluetoothSummaryUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getConnectedDeviceSummary, device="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 147
    :cond_5
    if-le v1, v6, :cond_6

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v4, 0x7f12028e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 148
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v4, 0x7f120296

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 147
    :goto_3
    return-object v3
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getConnectionState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f12057d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f1202c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->getConnectedDeviceSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f120297

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mContext:Landroid/content/Context;

    const v1, 0x7f1202b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 81
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 85
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "bluetoothState"    # I

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    .line 56
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    .line 61
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 69
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 77
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 73
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .param p1, "started"    # Z

    .line 65
    return-void
.end method

.method public register(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->notifyChangeIfNeeded()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 98
    :goto_0
    return-void
.end method
