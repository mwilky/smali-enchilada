.class Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->access$000()Landroid/bluetooth/IBluetooth;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "BluetoothDevice"

    const-string/jumbo v2, "sService is not NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBrEdrDown()V
    .locals 0

    return-void
.end method
