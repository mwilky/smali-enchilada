.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNextSubnetId:S

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueLocalPrefix:[B

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->generateUniqueLocalPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    return-void
.end method

.method private static generateUniqueLocalPrefix()[B
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    return-object v1
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 6

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x40

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    if-ne v4, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v5

    if-gt v5, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    :cond_3
    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    return-object v0
.end method

.method private getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    iget-short v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getUniqueLocalConfig([BS)Landroid/net/LinkProperties;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v2, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v3, v3, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method private static getUniqueLocalConfig([BS)Landroid/net/LinkProperties;
    .locals 6

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-static {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v1

    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    const/16 v2, 0x40

    invoke-static {p0, p1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v3

    new-instance v4, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    const/16 v2, 0x5dc

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setMtu(I)V

    return-object v0
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .locals 1

    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;
    .locals 3

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    int-to-byte v1, p1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, v0, p2}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object v1
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 8

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    const/4 v2, 0x0

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v5, Landroid/net/Network;

    iget-object v1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v5, v1}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpstreamNetworkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x50071

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, "NetworkState{null}"

    return-object v0

    :cond_0
    const-string v0, "NetworkState{%s, %s, %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateIPv6TetheringInterfaces()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;

    move-result-object v1

    const v2, 0x50071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    nop

    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    iget-short v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;IS)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    :cond_1
    return-void
.end method

.method findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    iget-object v2, v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Tethering notify list empty, IPv6 downstreams non-empty."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    :cond_2
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    return-void
.end method
