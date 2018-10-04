.class Landroid/net/Network$NetworkBoundSocketFactory;
.super Ljavax/net/SocketFactory;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoundSocketFactory"
.end annotation


# instance fields
.field private final mNetId:I

.field final synthetic this$0:Landroid/net/Network;


# direct methods
.method public constructor <init>(Landroid/net/Network;I)V
    .locals 0

    iput-object p1, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    iput p2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->mNetId:I

    return-void
.end method

.method private connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {v3, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v5, Ljava/net/InetSocketAddress;

    aget-object v6, v0, v1

    invoke-direct {v5, v6, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    nop

    if-eqz v4, :cond_1

    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    return-object v3

    :goto_2
    if-eqz v4, :cond_2

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    array-length v4, v0

    sub-int/2addr v4, v2

    if-eq v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    throw v3

    :cond_4
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/net/Network$NetworkBoundSocketFactory;->this$0:Landroid/net/Network;

    invoke-virtual {v2, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p0, p1, p2, v0}, Landroid/net/Network$NetworkBoundSocketFactory;->connectToHost(Ljava/lang/String;ILjava/net/SocketAddress;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/Network$NetworkBoundSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    :cond_1
    throw v2
.end method
