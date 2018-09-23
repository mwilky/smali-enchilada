.class Landroid/net/dhcp/DhcpOfferPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpOfferPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .locals 9

    sget-object v5, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v7, p7

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    move-object v1, p4

    iput-object v1, v0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    goto :goto_0

    :goto_1
    iget-boolean v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/dhcp/DhcpOfferPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    :goto_2
    move-object v4, v1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    goto :goto_2

    :goto_3
    const/4 v8, 0x2

    iget-boolean v9, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcast:Z

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Landroid/net/dhcp/DhcpOfferPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x35

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v2, 0x36

    invoke-static {p1, v2, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    const/16 v2, 0x33

    invoke-static {p1, v2, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    const/16 v0, 0xf

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/lang/String;)V

    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mBroadcastAddress:Ljava/net/Inet4Address;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    const/4 v0, 0x6

    iget-object v1, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/util/List;)V

    invoke-static {p1}, Landroid/net/dhcp/DhcpOfferPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", DNS servers: "

    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OFFER, ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", gateways "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lease time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", domain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/dhcp/DhcpOfferPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
