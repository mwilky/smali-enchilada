.class public Landroid/net/dns/ResolvUtil;
.super Ljava/lang/Object;
.source "ResolvUtil.java"


# static fields
.field private static final NETID_USE_LOCAL_NAMESERVERS:J = 0x80000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    invoke-static {p0, p1, v0}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Landroid/system/StructAddrinfo;

    invoke-direct {v0}, Landroid/system/StructAddrinfo;-><init>()V

    iput p2, v0, Landroid/system/StructAddrinfo;->ai_flags:I

    sget v1, Landroid/system/OsConstants;->AF_UNSPEC:I

    iput v1, v0, Landroid/system/StructAddrinfo;->ai_family:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    iput v1, v0, Landroid/system/StructAddrinfo;->ai_socktype:I

    invoke-static {p0}, Landroid/net/dns/ResolvUtil;->getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;

    move-result-object v1

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v3, v1, Landroid/net/Network;->netId:I

    invoke-interface {v2, p1, v0, v3}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": TLS-bypass resolution failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/system/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    const/4 v3, 0x0

    return-object v3
.end method

.method public static getNetworkWithUseLocalNameserversFlag(Landroid/net/Network;)Landroid/net/Network;
    .locals 4

    iget v0, p0, Landroid/net/Network;->netId:I

    int-to-long v0, v0

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    new-instance v2, Landroid/net/Network;

    long-to-int v3, v0

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(I)V

    return-object v2
.end method

.method public static makeNetworkWithPrivateDnsBypass(Landroid/net/Network;)Landroid/net/Network;
    .locals 1

    new-instance v0, Landroid/net/dns/ResolvUtil$1;

    invoke-direct {v0, p0, p0}, Landroid/net/dns/ResolvUtil$1;-><init>(Landroid/net/Network;Landroid/net/Network;)V

    return-object v0
.end method
