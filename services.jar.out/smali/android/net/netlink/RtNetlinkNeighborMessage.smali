.class public Landroid/net/netlink/RtNetlinkNeighborMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "RtNetlinkNeighborMessage.java"


# static fields
.field public static final NDA_CACHEINFO:S = 0x3s

.field public static final NDA_DST:S = 0x1s

.field public static final NDA_IFINDEX:S = 0x8s

.field public static final NDA_LLADDR:S = 0x2s

.field public static final NDA_MASTER:S = 0x9s

.field public static final NDA_PORT:S = 0x6s

.field public static final NDA_PROBES:S = 0x4s

.field public static final NDA_UNSPEC:S = 0x0s

.field public static final NDA_VLAN:S = 0x5s

.field public static final NDA_VNI:S = 0x7s


# instance fields
.field private mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

.field private mDestination:Ljava/net/InetAddress;

.field private mLinkLayerAddr:[B

.field private mNdmsg:Landroid/net/netlink/StructNdMsg;

.field private mNumProbes:I


# direct methods
.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    return-void
.end method

.method private static findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 3

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    if-ne v1, p0, :cond_1

    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newGetNeighborsRequest(I)[B
    .locals 5

    const/16 v0, 0x1c

    const/16 v1, 0x1c

    new-array v2, v1, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v4, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v4}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    iput v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v1, 0x1e

    iput-short v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v1, 0x301

    iput-short v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iput p0, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {v4, v3}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    new-instance v1, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v1}, Landroid/net/netlink/StructNdMsg;-><init>()V

    invoke-virtual {v1, v3}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    return-object v2
.end method

.method public static newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B
    .locals 5

    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    const/16 v1, 0x1c

    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v1, 0x105

    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iput p0, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    new-instance v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v1, v0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    new-instance v2, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    iput-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iget-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    goto :goto_0

    :cond_0
    sget v3, Landroid/system/OsConstants;->AF_INET:I

    :goto_0
    int-to-byte v3, v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    iget-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput p3, v2, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    iget-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput-short p2, v2, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    iput-object p1, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    iput-object p4, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-virtual {v1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getRequiredSpace()I

    move-result v2

    new-array v2, v2, [B

    array-length v3, v2

    iput v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->pack(Ljava/nio/ByteBuffer;)V

    return-object v2
.end method

.method private static packNlAttr(S[BLjava/nio/ByteBuffer;)V
    .locals 3

    new-instance v0, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    iput-short p0, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    iput-object p1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iget-object v1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v1, v1

    const/4 v2, 0x4

    add-int/2addr v2, v1

    int-to-short v1, v2

    iput-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, p2}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;
    .locals 6

    new-instance v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    invoke-static {p1}, Landroid/net/netlink/StructNdMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iget-object v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x4

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/netlink/StructNlAttr;->getValueAsInt(I)I

    move-result v3

    iput v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    :cond_3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x3

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/net/netlink/StructNdaCacheInfo;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;

    move-result-object v3

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    :cond_4
    const/16 v3, 0x1c

    iget-object v4, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iget v4, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    add-int/lit8 v4, v4, -0x1c

    invoke-static {v4}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_5
    add-int v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCacheInfo()Landroid/net/netlink/StructNdaCacheInfo;
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    return-object v0
.end method

.method public getDestination()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLinkLayerAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    return-object v0
.end method

.method public getNdHeader()Landroid/net/netlink/StructNdMsg;
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    return-object v0
.end method

.method public getProbes()I
    .locals 1

    iget v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    return v0
.end method

.method public getRequiredSpace()I
    .locals 3

    const/16 v0, 0x1c

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v2

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    array-length v1, v1

    add-int/2addr v2, v1

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    :cond_0
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-static {v0, v1, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RtNetlinkNeighborMessage{ nlmsghdr{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v2}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, ndmsg{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v2}, Landroid/net/netlink/StructNdMsg;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, destination{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} linklayeraddr{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} probes{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} cacheinfo{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    invoke-virtual {v2}, Landroid/net/netlink/StructNdaCacheInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
