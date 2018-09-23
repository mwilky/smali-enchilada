.class public Landroid/net/ip/IpClient$InitialConfiguration;
.super Ljava/lang/Object;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public gateway:Ljava/net/Inet4Address;

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    return-void
.end method

.method public static copy(Landroid/net/ip/IpClient$InitialConfiguration;)Landroid/net/ip/IpClient$InitialConfiguration;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/ip/IpClient$InitialConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$InitialConfiguration;-><init>()V

    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpClient$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

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

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpClient$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

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

.method public static synthetic lambda$-qxDAAo5wjq2G7x-F8gQeNSxIxY(Landroid/net/IpPrefix;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$WB134Aq_hrEPp-6UsNJgWvtMzBM(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$guZQ276VyezHQuIEE0CG9osvUes(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$gxc5co5uJUOrlWJ8HYqcngxR5gI(Landroid/net/IpPrefix;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$isProvisionedBy$2(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isProvisionedBy$3(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .locals 1

    invoke-static {p1, p0}, Landroid/net/ip/IpClient$InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$0(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isValid$1(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Yj_oETEniyWPwMk9O1x-JZIJoNo;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {p1, v3}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Id7yPLmMAQz0Sm1dnrJVkXkUQNQ;-><init>(Landroid/net/IpPrefix;)V

    invoke-static {p2, v3}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 6

    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;

    invoke-direct {v4, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$UHB1S125oVRRJ33BRbWLXqGk32M;-><init>(Landroid/net/LinkAddress;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Vb5KM9_T-c7Jv1Lqbet5CRNEyjU;

    invoke-direct {v4, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$Vb5KM9_T-c7Jv1Lqbet5CRNEyjU;-><init>(Ljava/net/InetAddress;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$YwpJbnxCjWZ5CZ7ycLj8DIoOSd8;

    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$gxc5co5uJUOrlWJ8HYqcngxR5gI;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$gxc5co5uJUOrlWJ8HYqcngxR5gI;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$WB134Aq_hrEPp-6UsNJgWvtMzBM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$WB134Aq_hrEPp-6UsNJgWvtMzBM;

    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v2, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$-qxDAAo5wjq2G7x-F8gQeNSxIxY;

    invoke-static {v2}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v2, Ljava/net/Inet4Address;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;

    invoke-direct {v3, v2}, Landroid/net/ip/-$$Lambda$IpClient$InitialConfiguration$guZQ276VyezHQuIEE0CG9osvUes;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s}, v4 gateway: %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpClient;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpClient$InitialConfiguration;->gateway:Ljava/net/Inet4Address;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
