.class public Landroid/net/ip/IpNeighborMonitor$NeighborEvent;
.super Ljava/lang/Object;
.source "IpNeighborMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpNeighborMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeighborEvent"
.end annotation


# instance fields
.field final elapsedMs:J

.field final ifindex:I

.field final ip:Ljava/net/InetAddress;

.field final macAddr:Landroid/net/MacAddress;

.field final msgType:S

.field final nudState:S


# direct methods
.method public constructor <init>(JSILjava/net/InetAddress;SLandroid/net/MacAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->elapsedMs:J

    iput-short p3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    iput p4, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    iput-object p5, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    iput-short p6, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    iput-object p7, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    return-void
.end method


# virtual methods
.method isConnected()Z
    .locals 2

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isValid()Z
    .locals 2

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateValid(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    const-string v2, "NeighborEvent{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->elapsedMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-short v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->msgType:S

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "if="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->ip:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget-short v2, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->nudState:S

    invoke-static {v2}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
