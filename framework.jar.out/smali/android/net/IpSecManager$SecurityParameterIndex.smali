.class public final Landroid/net/IpSecManager$SecurityParameterIndex;
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
    name = "SecurityParameterIndex"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mDestinationAddress:Ljava/net/InetAddress;

.field private mResourceId:I

.field private final mService:Landroid/net/IIpSecService;

.field private mSpi:I


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    iput-object p1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iput-object p2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mDestinationAddress:Ljava/net/InetAddress;

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, v2, p3, v3}, Landroid/net/IIpSecService;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/net/IpSecSpiResponse;->status:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/net/IpSecManager$SpiUnavailableException;

    const-string v3, "Requested SPI is unavailable"

    invoke-direct {v0, v3, p3}, Landroid/net/IpSecManager$SpiUnavailableException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_1
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v3, "No more SPIs may be allocated by this requester."

    invoke-direct {v0, v3}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    nop

    iget v3, v1, Landroid/net/IpSecSpiResponse;->spi:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    iget v3, v1, Landroid/net/IpSecSpiResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    nop

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Resource ID returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid SPI returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status returned by IpSecService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Received null response from IpSecService"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;ILandroid/net/IpSecManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;Ljava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mService:Landroid/net/IIpSecService;

    iget v2, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-interface {v1, v2}, Landroid/net/IIpSecService;->releaseSecurityParameterIndex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

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

    goto :goto_0

    :goto_1
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

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

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$SecurityParameterIndex;->close()V

    return-void
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    return v0
.end method

.method public getSpi()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityParameterIndex{spi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mSpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecManager$SecurityParameterIndex;->mResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
