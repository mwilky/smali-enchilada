.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# static fields
.field private static final IFNAME_LINKLAYERS:[I

.field private static final IFNAME_PREFIXES:[Ljava/lang/String;

.field private static final KNOWN_PREFIX:I = 0x7

.field private static final TRANSPORT_LINKLAYER_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput v4, v1, v5

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v5, v1, v3

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/4 v6, 0x3

    aput v6, v1, v6

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v2, v1, v4

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/16 v7, 0x8

    const/4 v8, 0x5

    aput v7, v1, v8

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/16 v9, 0x9

    const/4 v10, 0x6

    aput v9, v1, v10

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v11, "rmnet"

    aput-object v11, v1, v2

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v3, v1, v2

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v2, "wlan"

    aput-object v2, v1, v5

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v4, v1, v5

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string v2, "bt-pan"

    aput-object v2, v1, v3

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v5, v1, v3

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v2, "p2p"

    aput-object v2, v1, v6

    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v0, v1, v6

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string v1, "aware"

    aput-object v1, v0, v4

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v7, v0, v4

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string v1, "eth"

    aput-object v1, v0, v8

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v6, v0, v8

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "wpan"

    aput-object v1, v0, v10

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v9, v0, v10

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    iput-wide p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    if-eqz p3, :cond_0

    iput-object p3, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V

    return-object v0
.end method

.method private static bytesToInts([B)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static ifnameToLinkLayer(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aget v0, v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ifnameToLinkLayer(Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    return-void
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isBitSet(II)Z
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    iget-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v1

    if-gtz v1, :cond_0

    if-lez p0, :cond_1

    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    :cond_1
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    :cond_0
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iget-wide v1, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2

    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/DhcpErrorEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    return v1

    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/DhcpClientEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    return v1

    :cond_1
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/IpManagerEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    return v1

    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/IpReachabilityEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    return v1

    :cond_3
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/NetworkEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    return v1

    :cond_4
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ValidationProbeEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    return v1

    :cond_5
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ApfProgramEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    return v1

    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ApfStats;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    return v1

    :cond_7
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/net/metrics/RaEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    iget-wide v1, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    iget-wide v1, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iget-wide v1, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method private static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .locals 5

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    iget v0, p0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v3, p0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-nez v2, :cond_0

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v1}, Landroid/net/metrics/DnsEvent;->resize(I)V

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityMetricsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static transportToLinkLayer(I)I
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aget v0, v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static transportsToLinkLayer(J)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    return v0

    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportToLinkLayer(I)I

    move-result v1

    return v1

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
