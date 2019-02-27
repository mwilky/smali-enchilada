.class public final Landroid/net/IpSecTransform;
.super Ljava/lang/Object;
.source "IpSecTransform.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecTransform$Builder;,
        Landroid/net/IpSecTransform$NattKeepaliveCallback;,
        Landroid/net/IpSecTransform$EncapType;
    }
.end annotation


# static fields
.field public static final ENCAP_ESPINUDP:I = 0x2

.field public static final ENCAP_ESPINUDP_NON_IKE:I = 0x1

.field public static final ENCAP_NONE:I = 0x0

.field public static final MODE_TRANSPORT:I = 0x0

.field public static final MODE_TUNNEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IpSecTransform"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mConfig:Landroid/net/IpSecConfig;

.field private final mContext:Landroid/content/Context;

.field private mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

.field private final mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

.field private mResourceId:I

.field private mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IpSecConfig;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Landroid/net/IpSecTransform$1;

    invoke-direct {v0, p0}, Landroid/net/IpSecTransform$1;-><init>(Landroid/net/IpSecTransform;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iput-object p1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0, p2}, Landroid/net/IpSecConfig;-><init>(Landroid/net/IpSecConfig;)V

    iput-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return-void
.end method

.method static synthetic access$000(Landroid/net/IpSecTransform;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/IpSecTransform;Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform$NattKeepaliveCallback;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/IpSecTransform;->activate()Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0
.end method

.method private activate()Landroid/net/IpSecTransform;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iget-object v3, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/net/IIpSecService;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v1

    iget v2, v1, Landroid/net/IpSecTransformResponse;->status:I

    invoke-direct {p0, v2}, Landroid/net/IpSecTransform;->checkResultStatus(I)V

    iget v3, v1, Landroid/net/IpSecTransformResponse;->resourceId:I

    iput v3, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const-string v3, "IpSecTransform"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added Transform with Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v4, "build"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v0}, Landroid/net/IpSecManager;->rethrowUncheckedExceptionFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private checkResultStatus(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "IpSecTransform"

    const-string v1, "Attempting to use an SPI that was somehow not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string v1, "Failed to allocate a new IpSecTransform"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    return-void

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to Create a Transform with status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/IpSecTransform;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/IpSecConfig;->equals(Landroid/net/IpSecConfig;Landroid/net/IpSecConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget v3, p1, Landroid/net/IpSecTransform;->mResourceId:I

    if-ne v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method private getIpSecService()Landroid/net/IIpSecService;
    .locals 3

    const-string v0, "ipsec"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/IIpSecService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Failed to connect to IpSecService"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5

    const-string v0, "IpSecTransform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing Transform with Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/net/IpSecTransform;->getIpSecService()Landroid/net/IIpSecService;

    move-result-object v0

    iget v2, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-interface {v0, v2}, Landroid/net/IIpSecService;->deleteTransform(I)V

    invoke-virtual {p0}, Landroid/net/IpSecTransform;->stopNattKeepalive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "IpSecTransform"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to close "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    iget-object v1, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecTransform;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecTransform;->close()V

    return-void
.end method

.method getConfig()Landroid/net/IpSecConfig;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    return v0
.end method

.method public startNattKeepalive(Landroid/net/IpSecTransform$NattKeepaliveCallback;ILandroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x14

    if-lt p2, v0, :cond_2

    const/16 v0, 0xe10

    if-gt p2, v0, :cond_2

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Landroid/net/IpSecTransform;->mResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/net/IpSecTransform;->mUserKeepaliveCallback:Landroid/net/IpSecTransform$NattKeepaliveCallback;

    iget-object v1, p0, Landroid/net/IpSecTransform;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v3

    iget-object v5, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const/16 v7, 0x1194

    iget-object v1, p0, Landroid/net/IpSecTransform;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {v1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    move v4, p2

    invoke-virtual/range {v2 .. v8}, Landroid/net/ConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;

    move-result-object v1

    iput-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    iput-object p3, p0, Landroid/net/IpSecTransform;->mCallbackHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Keepalive already active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Packet keepalive cannot be started for an inactive transform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid NAT-T keepalive interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopNattKeepalive()V
    .locals 3

    iget-object v0, p0, Landroid/net/IpSecTransform;->mKeepaliveCallback:Landroid/net/ConnectivityManager$PacketKeepaliveCallback;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    if-nez v1, :cond_0

    const-string v1, "IpSecTransform"

    const-string v2, "No active keepalive to stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/net/IpSecTransform;->mKeepalive:Landroid/net/ConnectivityManager$PacketKeepalive;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager$PacketKeepalive;->stop()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpSecTransform{resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecTransform;->mResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
