.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothServerSocket"


# instance fields
.field private mChannel:I

.field private mHandler:Landroid/os/Handler;

.field private mMessage:I

.field final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(IZZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    :cond_0
    return-void
.end method

.method constructor <init>(IZZIZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v11, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v11, v0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    new-instance v12, Landroid/bluetooth/BluetoothSocket;

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v12

    move v2, p1

    move v4, p2

    move/from16 v5, p3

    move v7, v11

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    iput-object v12, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, -0x2

    if-ne v11, v1, :cond_0

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    :cond_0
    return-void
.end method

.method constructor <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return-void
.end method


# virtual methods
.method public accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method public getPsm()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method setChannel(I)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "BluetoothServerSocket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The port set is different that the underlying port. mSocket.getPort(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requested newChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return-void
.end method

.method declared-synchronized setCloseHandler(Landroid/os/Handler;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerSocket: Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "TYPE_L2CAP_LE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "TYPE_L2CAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "TYPE_SCO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "TYPE_RFCOMM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    const-string v1, " Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
