.class Landroid/bluetooth/BluetoothGatt$1;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothGatt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;II[B)V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v0, v1

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)I

    move-result v3

    invoke-interface {v1, v3, p1, p3, v0}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1308(Landroid/bluetooth/BluetoothGatt;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothGatt;->access$1302(Landroid/bluetooth/BluetoothGatt;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v1, "BluetoothGatt"

    const-string/jumbo v2, "onCharacteristicRead() failed to find characteristic!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$6;

    invoke-direct {v2, p0, p2, v0, p4}, Landroid/bluetooth/BluetoothGatt$1$6;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCharacteristicWrite(Ljava/lang/String;II)V
    .locals 11

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/16 v1, 0xf

    if-ne p2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v9, v3

    goto :goto_1

    :cond_3
    goto :goto_0

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v4

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v10

    move-object v6, p1

    move v7, p3

    invoke-interface/range {v4 .. v10}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1308(Landroid/bluetooth/BluetoothGatt;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$1302(Landroid/bluetooth/BluetoothGatt;I)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$7;

    invoke-direct {v2, p0, v0, p2}, Landroid/bluetooth/BluetoothGatt$1$7;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 5

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientConnectionState() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v4, Landroid/bluetooth/BluetoothGatt$1$4;

    invoke-direct {v4, p0, p1, v2}, Landroid/bluetooth/BluetoothGatt$1$4;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4, v0}, Landroid/bluetooth/BluetoothGatt;->access$402(Landroid/bluetooth/BluetoothGatt;I)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$402(Landroid/bluetooth/BluetoothGatt;I)I

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onClientRegistered(II)V
    .locals 8

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGatt;->access$002(Landroid/bluetooth/BluetoothGatt;I)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1$1;-><init>(Landroid/bluetooth/BluetoothGatt$1;)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$300(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$402(Landroid/bluetooth/BluetoothGatt;I)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)I

    move-result v2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$600(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$700(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$800(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v6

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$900(Landroid/bluetooth/BluetoothGatt;)I

    move-result v7

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onConfigureMTU(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigureMTU() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$13;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$13;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionUpdated(Ljava/lang/String;IIII)V
    .locals 8

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionUpdated() - Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " latency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v7, Landroid/bluetooth/BluetoothGatt$1$14;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothGatt$1$14;-><init>(Landroid/bluetooth/BluetoothGatt$1;IIII)V

    invoke-static {v0, v7}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDescriptorRead(Ljava/lang/String;II[B)V
    .locals 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/16 v1, 0xf

    if-ne p2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v3, 0x1

    nop

    :cond_3
    move v1, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v4}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)I

    move-result v4

    invoke-interface {v3, v4, p1, p3, v1}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGatt;->access$1308(Landroid/bluetooth/BluetoothGatt;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$1302(Landroid/bluetooth/BluetoothGatt;I)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$9;

    invoke-direct {v2, p0, p2, v0, p4}, Landroid/bluetooth/BluetoothGatt$1$9;-><init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onDescriptorWrite(Ljava/lang/String;II)V
    .locals 10

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/bluetooth/BluetoothGatt;->getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    const/16 v1, 0xf

    if-ne p2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1300(Landroid/bluetooth/BluetoothGatt;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v8, v3

    goto :goto_1

    :cond_3
    goto :goto_0

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v4

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$000(Landroid/bluetooth/BluetoothGatt;)I

    move-result v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v9

    move-object v6, p1

    move v7, p3

    invoke-interface/range {v4 .. v9}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[B)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$1308(Landroid/bluetooth/BluetoothGatt;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$1302(Landroid/bluetooth/BluetoothGatt;I)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$10;

    invoke-direct {v2, p0, v0, p2}, Landroid/bluetooth/BluetoothGatt$1$10;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$11;

    invoke-direct {v1, p0, p2}, Landroid/bluetooth/BluetoothGatt$1$11;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNotify(Ljava/lang/String;I[B)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/bluetooth/BluetoothGatt;->getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v2, Landroid/bluetooth/BluetoothGatt$1$8;

    invoke-direct {v2, p0, v0, p3}, Landroid/bluetooth/BluetoothGatt$1$8;-><init>(Landroid/bluetooth/BluetoothGatt$1;Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPhyRead(Ljava/lang/String;III)V
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhyRead() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " txPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rxPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$3;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$3;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPhyUpdate(Ljava/lang/String;III)V
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPhyUpdate() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " txPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rxPhy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$2;

    invoke-direct {v1, p0, p2, p3, p4}, Landroid/bluetooth/BluetoothGatt$1$2;-><init>(Landroid/bluetooth/BluetoothGatt$1;III)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$12;

    invoke-direct {v1, p0, p2, p3}, Landroid/bluetooth/BluetoothGatt$1$12;-><init>(Landroid/bluetooth/BluetoothGatt$1;II)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSearchComplete() = Device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1200(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$1200(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v6}, Landroid/bluetooth/BluetoothGatt;->access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/bluetooth/BluetoothGatt;->getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto :goto_3

    :cond_2
    const-string v6, "BluetoothGatt"

    const-string v7, "Broken GATT database: can\'t find included service."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1$5;

    invoke-direct {v1, p0, p3}, Landroid/bluetooth/BluetoothGatt$1$5;-><init>(Landroid/bluetooth/BluetoothGatt$1;I)V

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothGatt;->access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V

    return-void
.end method
