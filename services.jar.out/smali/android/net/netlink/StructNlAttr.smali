.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_F_NESTED:I = 0x8000

.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(SB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(SILjava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(SLjava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(SSLjava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public varargs constructor <init>(S[Landroid/net/netlink/StructNlAttr;)V
    .locals 6

    invoke-direct {p0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p2, v0

    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p2

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, p2, v2

    invoke-virtual {v4, v0}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static makeNestedType(S)S
    .locals 1

    const v0, 0x8000

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5

    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-short v2, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x4

    if-lez v2, :cond_1

    new-array v3, v2, [B

    iput-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iget-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    nop

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge v5, v2, :cond_1

    return-object v0

    :cond_1
    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private setValue([B)V
    .locals 2

    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    add-int/2addr v1, v0

    int-to-short v0, v1

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    return-void
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 2

    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1
.end method

.method public getValueAsInt(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1

    :cond_1
    :goto_0
    return p1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    nop

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlAttr{ nla_len{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_type{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_value{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
