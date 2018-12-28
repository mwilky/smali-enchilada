.class public Landroid/net/ip/IpNeighborMonitor;
.super Landroid/net/util/PacketReader;
.source "IpNeighborMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;,
        Landroid/net/ip/IpNeighborMonitor$NeighborEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field public static sArpNudState:S


# instance fields
.field private final mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

.field private final mLog:Landroid/net/util/SharedLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/ip/IpNeighborMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-short v0, Landroid/net/ip/IpNeighborMonitor;->sArpNudState:S

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Landroid/net/util/PacketReader;-><init>(Landroid/os/Handler;I)V

    sget-object v0, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;->INSTANCE:Landroid/net/ip/-$$Lambda$IpNeighborMonitor$4TdKAwtCtq9Ri1cSdW1mKm0JycM;

    :goto_0
    iput-object v0, p0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    return-void
.end method

.method private evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V
    .locals 14

    move-object v0, p0

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v1

    iget-short v1, v1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getNdHeader()Landroid/net/netlink/StructNdMsg;

    move-result-object v10

    if-nez v10, :cond_0

    iget-object v2, v0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "RtNetlinkNeighborMessage without ND message header!"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v11, v10, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getDestination()Ljava/net/InetAddress;

    move-result-object v12

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move v8, v2

    goto :goto_1

    :cond_1
    iget-short v2, v10, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    goto :goto_0

    :goto_1
    new-instance v13, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;

    invoke-virtual {p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getLinkLayerAddress()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/ip/IpNeighborMonitor;->getMacAddress([B)Landroid/net/MacAddress;

    move-result-object v9

    move-object v2, v13

    move-wide/from16 v3, p2

    move v5, v1

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v9}, Landroid/net/ip/IpNeighborMonitor$NeighborEvent;-><init>(JSILjava/net/InetAddress;SLandroid/net/MacAddress;)V

    iget-object v3, v0, Landroid/net/ip/IpNeighborMonitor;->mConsumer:Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;

    invoke-interface {v3, v2}, Landroid/net/ip/IpNeighborMonitor$NeighborEventConsumer;->accept(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V

    return-void
.end method

.method private static getMacAddress([B)Landroid/net/MacAddress;
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse link-layer address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0(Landroid/net/ip/IpNeighborMonitor$NeighborEvent;)V
    .locals 0

    return-void
.end method

.method private parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V
    .locals 7

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    iget v2, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-kernel source portId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v3, v1, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "netlink error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v3, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "non-rtnetlink neighbor msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    check-cast v3, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {p0, v3, p2, p3}, Landroid/net/ip/IpNeighborMonitor;->evaluateRtNetlinkNeighborMessage(Landroid/net/netlink/RtNetlinkNeighborMessage;J)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Landroid/net/ip/IpNeighborMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unparsable netlink msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    nop

    :cond_5
    :goto_2
    return-void
.end method

.method public static startKernelNeighborProbe(ILjava/net/InetAddress;)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "probing ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p0, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v1

    sget-short v2, Landroid/net/ip/IpNeighborMonitor;->sArpNudState:S

    const/4 v3, 0x0

    const/16 v4, 0x80

    if-ne v2, v4, :cond_0

    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v2, v1}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v3

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/ip/IpNeighborMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/system/ErrnoException;->errno:I

    neg-int v3, v3

    return v3
.end method


# virtual methods
.method protected createFd()Ljava/io/FileDescriptor;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Landroid/system/NetlinkSocketAddress;

    sget v3, Landroid/system/OsConstants;->RTMGRP_NEIGH:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    new-instance v2, Landroid/system/NetlinkSocketAddress;

    invoke-direct {v2, v4, v4}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v1, v2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "Failed to create rtnetlink socket"

    invoke-virtual {p0, v3, v2}, Landroid/net/ip/IpNeighborMonitor;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method protected handlePacket([BI)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v0, v1}, Landroid/net/ip/IpNeighborMonitor;->parseNetlinkMessageBuffer(Ljava/nio/ByteBuffer;J)V

    return-void
.end method
