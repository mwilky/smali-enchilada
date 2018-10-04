.class public final Landroid/se/omapi/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# static fields
.field private static final TAG:Ljava/lang/String; = "OMAPI.Channel"


# instance fields
.field private final mChannel:Landroid/se/omapi/ISecureElementChannel;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/se/omapi/SEService;

.field private mSession:Landroid/se/omapi/Session;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService;Landroid/se/omapi/Session;Landroid/se/omapi/ISecureElementChannel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p1, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    iput-object p2, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    iput-object p3, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    invoke-virtual {p0}, Landroid/se/omapi/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "OMAPI.Channel"

    const-string v3, "Error closing channel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public getSelectResponse()[B
    .locals 3

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->getSelectResponse()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSession()Landroid/se/omapi/Session;
    .locals 1

    iget-object v0, p0, Landroid/se/omapi/Channel;->mSession:Landroid/se/omapi/Session;

    return-object v0
.end method

.method public isBasicChannel()Z
    .locals 3

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isBasicChannel()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 4

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "OMAPI.Channel"

    const-string/jumbo v2, "service not connected to system"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v0}, Landroid/se/omapi/ISecureElementChannel;->isClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "OMAPI.Channel"

    const-string v3, "Exception in isClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public selectNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1}, Landroid/se/omapi/ISecureElementChannel;->selectNext()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transmit([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/se/omapi/Channel;->mService:Landroid/se/omapi/SEService;

    invoke-virtual {v0}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/se/omapi/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/se/omapi/Channel;->mChannel:Landroid/se/omapi/ISecureElementChannel;

    invoke-interface {v1, p1}, Landroid/se/omapi/ISecureElementChannel;->transmit([B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error in communicating with Secure Element"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "service not connected to system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
