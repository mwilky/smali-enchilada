.class public Landroid/net/ip/IpReachabilityMonitor;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpReachabilityMonitor$Dependencies;,
        Landroid/net/ip/IpReachabilityMonitor$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "IpReachabilityMonitor"

.field private static final VDBG:Z = false


# instance fields
.field private final mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

.field private final mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

.field private final mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

.field private volatile mLastProbeTimeMs:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private mNeighborWatchList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Landroid/net/ip/IpNeighborMonitor$NeighborEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V
    .locals 8

    iget-object v0, p2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/net/ip/IpReachabilityMonitor$Dependencies;->makeDefault(Landroid/content/Context;Ljava/lang/String;)Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    move-result-object v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;Landroid/net/ip/IpReachabilityMonitor$Dependencies;)V

    return-void
.end method

.method constructor <init>(Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;Landroid/net/ip/IpReachabilityMonitor$Dependencies;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const-string v0, "IpReachabilityMonitor"

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    iput-object p4, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    iput-object p5, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    iput-object p6, p0, Landroid/net/ip/IpReachabilityMonitor;->mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    new-instance v0, Landroid/net/ip/IpNeighborMonitor;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;

    invoke-direct {v2, p0}, Landroid/net/ip/-$$Lambda$IpReachabilityMonitor$5Sg30oRgfU2r5ogQj53SRYnnFiQ;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    invoke-direct {v0, p2, v1, v2}, Landroid/net/ip/IpNeighborMonitor;-><init>(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Landroid/net/ip/IpNeighborMonitor;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null InterfaceParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/net/ip/IpReachabilityMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->describeWatchList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private avoidingBadLinks()Z
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private describeWatchList()Ljava/lang/String;
    .locals 1

    const-string v0, " "

    invoke-direct {p0, v0}, Landroid/net/ip/IpReachabilityMonitor;->describeWatchList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private describeWatchList(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iface{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "},"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ntable=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getProbeWakeLockDuration()J
    .locals 8

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0xdac

    return-wide v6
.end method

.method private handleNeighborLost(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 7

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    iget-short v4, v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/net/InetAddress;

    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    :cond_1
    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/net/ip/IpReachabilityMonitor;->avoidingBadLinks()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v4, v1, Ljava/net/Inet6Address;

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->removeDnsServer(Ljava/net/InetAddress;)Z

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2, v0}, Landroid/net/LinkProperties;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v2

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v2, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAILURE: LOST_PROVISIONING, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IpReachabilityMonitor"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mCallback:Landroid/net/ip/IpReachabilityMonitor$Callback;

    invoke-interface {v4, v1, v3}, Landroid/net/ip/IpReachabilityMonitor$Callback;->notifyLost(Ljava/net/InetAddress;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0, v2}, Landroid/net/ip/IpReachabilityMonitor;->logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V

    return-void
.end method

.method private static isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;",
            "Ljava/net/InetAddress;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/net/RouteInfo;->matches(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$new$0(Landroid/net/ip/IpReachabilityMonitor;Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 4

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v0, v0, Landroid/net/util/InterfaceParams;->index:I

    iget v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    iget-object v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    iget-object v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    iget-short v1, p1, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALERT neighbor went from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->w(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/net/ip/IpReachabilityMonitor;->handleNeighborLost(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    :cond_2
    return-void
.end method

.method private logEvent(II)V
    .locals 4

    and-int/lit16 v0, p2, 0xff

    or-int/2addr v0, p1

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v2, v2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    new-instance v3, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v3, v0}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void
.end method

.method private logNudFailed(Landroid/net/LinkProperties$ProvisioningChange;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v5, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne p1, v5, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-static {v2, v3}, Landroid/net/metrics/IpReachabilityEvent;->nudFailureEventType(ZZ)I

    move-result v4

    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v6, v6, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    new-instance v7, Landroid/net/metrics/IpReachabilityEvent;

    invoke-direct {v7, v4}, Landroid/net/metrics/IpReachabilityEvent;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void
.end method


# virtual methods
.method public clearLinkProperties()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Landroid/net/ip/IpNeighborMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/net/ip/IpReachabilityMonitor$1;

    invoke-direct {v2, p0}, Landroid/net/ip/IpReachabilityMonitor$1;-><init>(Landroid/net/ip/IpReachabilityMonitor;)V

    const-string v4, ""

    const-wide/16 v5, 0x3e8

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method public probeAll()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mDependencies:Landroid/net/ip/IpReachabilityMonitor$Dependencies;

    invoke-static {}, Landroid/net/ip/IpReachabilityMonitor;->getProbeWakeLockDuration()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/net/ip/IpReachabilityMonitor$Dependencies;->acquireWakeLock(J)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v3, v2}, Landroid/net/ip/IpNeighborMonitor;->startKernelNeighborProbe(ILjava/net/InetAddress;)I

    move-result v3

    iget-object v4, p0, Landroid/net/ip/IpReachabilityMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "put neighbor %s into NUD_PROBE state (rval=%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {p0, v4, v3}, Landroid/net/ip/IpReachabilityMonitor;->logEvent(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLastProbeTimeMs:J

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mIpNeighborMonitor:Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Landroid/net/ip/IpNeighborMonitor;->stop()V

    invoke-virtual {p0}, Landroid/net/ip/IpReachabilityMonitor;->clearLinkProperties()V

    return-void
.end method

.method public updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, v0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IpReachabilityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requested LinkProperties interface \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' does not match: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpReachabilityMonitor;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v2, v2, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/net/ip/IpReachabilityMonitor;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v3}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-static {v1, v3}, Landroid/net/ip/IpReachabilityMonitor;->isOnLink(Ljava/util/List;Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    goto :goto_1

    :cond_4
    iput-object v0, p0, Landroid/net/ip/IpReachabilityMonitor;->mNeighborWatchList:Ljava/util/Map;

    return-void
.end method
