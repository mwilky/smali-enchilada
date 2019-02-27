.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mPfd:Landroid/os/ParcelFileDescriptor;

.field private final mPort:I

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p2, v1}, Landroid/net/IIpSecService;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v0

    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v2, "No more Sockets may be allocated by this requester."

    invoke-direct {v1, v2}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    nop

    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->resourceId:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    iget v1, v0, Landroid/net/IpSecUdpEncapResponse;->port:I

    iput v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    iget-object v1, v0, Landroid/net/IpSecUdpEncapResponse;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown status returned by IpSecService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/IpSecUdpEncapResponse;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->closeUdpEncapsulationSocket(I)V

    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "IpSecManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    nop

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close UDP Encapsulation Socket with Port= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IpSecManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    iput v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    return v0
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UdpEncapsulationSocket{port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
