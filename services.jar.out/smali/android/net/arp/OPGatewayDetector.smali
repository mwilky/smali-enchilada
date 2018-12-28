.class public Landroid/net/arp/OPGatewayDetector;
.super Landroid/net/arp/OPArpPeer;
.source "OPGatewayDetector.java"


# static fields
.field private static final DUP_ARP_COUNT:I = 0x2

.field private static final IO_TIMEOUT:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "arp_OPGatewayDetector"


# instance fields
.field private mNextAvaibleMacIndex:I

.field private mProbeFinished:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/arp/OPArpPeer;-><init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iput-boolean v0, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    return-void
.end method

.method private hasLeftAvaibleGateway()Z
    .locals 4

    const-string v0, "arp_OPGatewayDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in hasLeftAvaibleGateway the mDupTarget.size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mNextAvaibleMacIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iget-object v3, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iget-object v3, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private restoreGatwawayState()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    iget v3, p0, Landroid/net/arp/OPGatewayDetector;->mNextAvaibleMacIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/net/arp/OPGatewayDetector;->updateArpEntry([BS)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private tryToRestoreGatewayState()V
    .locals 2

    invoke-virtual {p0}, Landroid/net/arp/OPGatewayDetector;->isOriginalNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/arp/OPGatewayDetector;->restoreGatwawayState()V

    :cond_0
    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/net/arp/OPGatewayDetector;->mProbeFinished:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateArpEntry([BS)V
    .locals 9

    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v0, p2, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->EPROTO:I

    neg-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    const-string v3, "arp_OPGatewayDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update IP addr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/net/arp/OPGatewayDetector;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v3, Landroid/system/OsConstants;->NETLINK_ROUTE:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    const/4 v5, 0x0

    array-length v6, v0

    const-wide/16 v7, 0x12c

    move-object v3, v2

    move-object v4, v0

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    const/16 v3, 0x5dc

    const-wide/16 v4, 0x12c

    invoke-static {v2, v3, v4, v5}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v5}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v5}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v5

    iget v5, v5, Landroid/net/netlink/StructNlMsgErr;->error:I

    move v1, v5

    if-eqz v1, :cond_2

    const-string v5, "arp_OPGatewayDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Errmsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "raw bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "arp_OPGatewayDetector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Errmsg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Error "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    :cond_3
    return-void

    :goto_3
    if-eqz v2, :cond_4

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    :cond_4
    throw v3
.end method


# virtual methods
.method public fetchGatewayMacFromRoute()[B
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/proc/net/arp"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_2

    const-string v4, "[ ]+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x3

    aget-object v6, v4, v6

    iget-object v7, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v6

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/net/arp/OPGatewayDetector;->macAddressToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object v2, v4

    invoke-virtual {p0, v2}, Landroid/net/arp/OPGatewayDetector;->isValidPeerMac([B)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-virtual {p0, v5, v2}, Landroid/net/arp/OPGatewayDetector;->isDupTargetArp(Ljava/util/List;[B)I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    const-string v4, "arp_OPGatewayDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchGatewayMacFromRoute gatway "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/net/arp/OPGatewayDetector;->mTarget:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "  mac "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_6
    :goto_3
    goto :goto_4

    :catchall_1
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Could not read /proc/net/arp to lookup mac address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_6
    const-string v4, "arp_OPGatewayDetector"

    const-string v5, "Could not open /proc/net/arp to lookup mac address"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :goto_4
    return-object v2

    :goto_5
    nop

    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v4

    nop

    :cond_7
    :goto_6
    throw v3
.end method

.method public getMacAccount()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDupGateway()Z
    .locals 2

    iget-object v0, p0, Landroid/net/arp/OPGatewayDetector;->mDupTarget:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onProbeFinished()V
    .locals 2

    const-string v0, "arp_OPGatewayDetector"

    const-string/jumbo v1, "onProbeFinished in GatewayDetector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/arp/OPGatewayDetector;->tryToRestoreGatewayState()V

    return-void
.end method

.method public prepareNextAvailbeGateway([B)V
    .locals 6

    move-object v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/net/arp/OPGatewayDetector;->mNetwork:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-interface {v1, v2}, Landroid/net/INetd;->resolveFlushCacheForNet(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "arp_OPGatewayDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resolveFlushCacheForNet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v2, "arp_OPGatewayDetector"

    const-string v3, "No netd service instance available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/net/arp/OPGatewayDetector;->updateArpEntry([BS)V

    :cond_3
    return-void
.end method
