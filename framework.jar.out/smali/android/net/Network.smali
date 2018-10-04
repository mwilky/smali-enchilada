.class public Landroid/net/Network;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Network$NetworkBoundSocketFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_MAGIC:J = 0xcafed00dL

.field private static final HANDLE_MAGIC_SIZE:I = 0x20

.field private static final httpKeepAlive:Z

.field private static final httpKeepAliveDurationMs:J

.field private static final httpMaxConnections:I


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

.field private mPrivateDnsBypass:Z

.field private volatile mUrlConnectionFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    sget-boolean v0, Landroid/net/Network;->httpKeepAlive:Z

    if-eqz v0, :cond_0

    const-string v0, "http.maxConnections"

    const-string v1, "5"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroid/net/Network;->httpMaxConnections:I

    const-string v0, "http.keepAliveDuration"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/net/Network;->httpKeepAliveDurationMs:J

    new-instance v0, Landroid/net/Network$1;

    invoke-direct {v0}, Landroid/net/Network$1;-><init>()V

    sput-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    iput p1, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    iget v0, p1, Landroid/net/Network;->netId:I

    iput v0, p0, Landroid/net/Network;->netId:I

    return-void
.end method

.method public static fromNetworkHandle(J)Landroid/net/Network;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p0

    const-wide v4, 0xcafed00dL

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    new-instance v0, Landroid/net/Network;

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value passed to fromNetworkHandle() is not a network handle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network.fromNetworkHandle refusing to instantiate NETID_UNSET Network."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$maybeInitUrlConnectionFactory$0(Landroid/net/Network;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private maybeInitUrlConnectionFactory()V
    .locals 7

    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/Network;->mUrlConnectionFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/-$$Lambda$Network$KD6DxaMRJIcajhj36TU1K7lJnHQ;

    invoke-direct {v1, p0}, Landroid/net/-$$Lambda$Network$KD6DxaMRJIcajhj36TU1K7lJnHQ;-><init>(Landroid/net/Network;)V

    new-instance v2, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-direct {v2}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->setDns(Lcom/android/okhttp/internalandroidapi/Dns;)V

    sget v3, Landroid/net/Network;->httpMaxConnections:I

    sget-wide v4, Landroid/net/Network;->httpKeepAliveDurationMs:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->setNewConnectionPool(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v2, p0, Landroid/net/Network;->mUrlConnectionFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindSocket(Ljava/io/FileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->getpeername(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is connected"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Only AF_INET/AF_INET6 sockets supported"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENOTCONN:I

    if-ne v1, v2, :cond_2

    :goto_0
    nop

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    iget v1, p0, Landroid/net/Network;->netId:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->bindSocketToNetwork(II)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/system/ErrnoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding socket to network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-int v3, v0

    invoke-direct {v1, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1

    :cond_2
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method public bindSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public bindSocket(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getReuseAddress()Z

    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/Network;

    iget v2, p0, Landroid/net/Network;->netId:I

    iget v3, v0, Landroid/net/Network;->netId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getAllByNameOnNet(Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network;->getNetIdForResolv()I

    move-result v0

    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByNameOnNet(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getNetIdForResolv()I
    .locals 4

    iget-boolean v0, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x80000000L

    iget v2, p0, Landroid/net/Network;->netId:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    :goto_0
    return v0
.end method

.method public getNetworkHandle()J
    .locals 4

    iget v0, p0, Landroid/net/Network;->netId:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xcafed00dL

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 3

    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/Network;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/Network$NetworkBoundSocketFactory;

    iget v2, p0, Landroid/net/Network;->netId:I

    invoke-direct {v1, p0, v2}, Landroid/net/Network$NetworkBoundSocketFactory;-><init>(Landroid/net/Network;I)V

    iput-object v1, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/Network;->mNetworkBoundSocketFactory:Landroid/net/Network$NetworkBoundSocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->makeProxy()Ljava/net/Proxy;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ConnectivityManager yet constructed, please construct one"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/net/Network;->maybeInitUrlConnectionFactory()V

    invoke-virtual {p0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iget-object v1, p0, Landroid/net/Network;->mUrlConnectionFactory:Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;->openConnection(Ljava/net/URL;Ljavax/net/SocketFactory;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "proxy is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrivateDnsBypass(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/Network;->mPrivateDnsBypass:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/Network;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/net/Network;->netId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
