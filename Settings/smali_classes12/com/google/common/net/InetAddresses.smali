.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 118
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .line 114
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "addr"    # [B

    .line 331
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 938
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 5
    .param p0, "hextets"    # [I

    .line 381
    const/4 v0, -0x1

    .line 382
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 383
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 384
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_3

    .line 385
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget v4, p0, v3

    if-nez v4, :cond_0

    .line 386
    if-gez v2, :cond_2

    .line 387
    move v2, v3

    goto :goto_1

    .line 389
    :cond_0
    if-ltz v2, :cond_2

    .line 390
    sub-int v4, v3, v2

    .line 391
    .local v4, "runLength":I
    if-le v4, v1, :cond_1

    .line 392
    move v0, v2

    .line 393
    move v1, v4

    .line 395
    :cond_1
    const/4 v2, -0x1

    .line 384
    .end local v4    # "runLength":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x2

    if-lt v1, v3, :cond_4

    .line 399
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 401
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .line 286
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 287
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 290
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 291
    const/4 v2, 0x0

    return-object v2

    .line 293
    :cond_0
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 981
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 982
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 983
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    .line 984
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 985
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 988
    :cond_0
    const/4 v3, 0x0

    if-ltz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "Decrementing %s would wrap."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 990
    aget-byte v3, v0, v1

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 991
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "ipString"    # Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    .local v0, "addr":[B
    if-eqz v0, :cond_0

    .line 157
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 154
    const-string v3, "\'%s\' is not an IP string literal."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 485
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "ipString":Ljava/lang/String;
    const/16 v2, 0x10

    .local v2, "expectBytes":I
    goto :goto_0

    .line 494
    .end local v0    # "ipString":Ljava/lang/String;
    .end local v2    # "expectBytes":I
    :cond_0
    move-object v0, p0

    .line 495
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v2, 0x4

    .line 499
    .restart local v2    # "expectBytes":I
    :goto_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 500
    .local v3, "addr":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-ne v4, v2, :cond_1

    .line 505
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 501
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v1, v5

    .line 502
    const-string v5, "Not a valid URI IP literal: \'%s\'"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .line 949
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 964
    array-length v0, p0

    new-array v0, v0, [B

    .line 965
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 966
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 968
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 603
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 604
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 603
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 606
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 872
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 873
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 877
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 878
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 879
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xf

    if-ge v3, v4, :cond_2

    .line 880
    aget-byte v5, v0, v3

    if-eqz v5, :cond_1

    .line 881
    const/4 v1, 0x0

    .line 882
    goto :goto_1

    .line 879
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 885
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    aget-byte v3, v0, v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 886
    sget-object v2, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 887
    :cond_3
    if-eqz v1, :cond_4

    aget-byte v3, v0, v4

    if-nez v3, :cond_4

    .line 888
    sget-object v2, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 891
    :cond_4
    move-object v3, p0

    check-cast v3, Ljava/net/Inet6Address;

    .line 892
    .local v3, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v4, 0x0

    .line 893
    .local v4, "addressAsLong":J
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 894
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Inet4Address;->hashCode()I

    move-result v2

    int-to-long v4, v2

    goto :goto_2

    .line 898
    :cond_5
    invoke-virtual {v3}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v2, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 902
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v2

    .line 905
    .local v2, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v2, v6

    .line 909
    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 910
    const/4 v2, -0x2

    .line 913
    :cond_6
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 570
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 571
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 570
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 795
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 803
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 808
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "\'%s\' has no embedded IPv4 address."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "bytes"    # [B

    .line 130
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Byte array has invalid length for an IPv4 address: %s != 4."

    new-array v2, v2, [Ljava/lang/Object;

    array-length v4, p0

    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 130
    invoke-static {v0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 759
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 760
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 759
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 7
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 694
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 695
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 694
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 698
    .local v0, "bytes":[B
    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v2

    .line 700
    .local v2, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v1}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v1

    const v3, 0xffff

    and-int/2addr v1, v3

    .line 703
    .local v1, "flags":I
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v5

    not-int v5, v5

    and-int/2addr v3, v5

    .line 705
    .local v3, "port":I
    const/16 v5, 0xc

    const/16 v6, 0x10

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 706
    .local v5, "clientBytes":[B
    nop

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 708
    aget-byte v6, v5, v4

    not-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 710
    .end local v4    # "i":I
    :cond_0
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v4

    .line 712
    .local v4, "client":Ljava/net/Inet4Address;
    new-instance v6, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v2, v4, v3, v1}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 778
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

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

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 6
    .param p0, "hextets"    # [I

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 419
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 420
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "lastWasNumber":Z
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 421
    aget v4, p0, v1

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v2

    .line 422
    .local v4, "thisIsNumber":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 423
    if-eqz v3, :cond_1

    .line 424
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :cond_1
    aget v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 428
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v3, :cond_4

    .line 429
    :cond_3
    const-string v5, "::"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_4
    :goto_2
    move v3, v4

    .line 420
    .end local v4    # "thisIsNumber":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1004
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1005
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1006
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1007
    aput-byte v3, v0, v1

    .line 1008
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1011
    :cond_0
    if-ltz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    const-string v5, "Incrementing %s would wrap."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1014
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 175
    .local v1, "hasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 177
    .local v3, "c":C
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    .line 178
    const/4 v1, 0x1

    goto :goto_1

    .line 179
    :cond_0
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_2

    .line 180
    if-eqz v1, :cond_1

    .line 181
    return-object v4

    .line 183
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 184
    :cond_2
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 185
    return-object v4

    .line 175
    .end local v3    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_6

    .line 191
    if-eqz v1, :cond_5

    .line 192
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    if-nez p0, :cond_5

    .line 194
    return-object v4

    .line 197
    :cond_5
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 198
    :cond_6
    if-eqz v1, :cond_7

    .line 199
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 201
    :cond_7
    return-object v4
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 591
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 592
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    aget-byte v2, v0, v3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 549
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    return v1

    .line 553
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 554
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    .line 556
    :cond_1
    return v1

    .line 559
    :cond_2
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 734
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 735
    return v1

    .line 738
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 740
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 744
    return v1

    .line 747
    :cond_1
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .line 834
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 835
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 836
    move v2, v1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 837
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 838
    return v1

    .line 836
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v2    # "i":I
    :cond_1
    nop

    .local v3, "i":I
    :goto_1
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 842
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 843
    return v1

    .line 841
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 846
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 848
    :cond_4
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 1026
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1027
    .local v0, "addr":[B
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1028
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1029
    return v1

    .line 1027
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1032
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 681
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 682
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    aget-byte v2, v0, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    move v1, v3

    nop

    :cond_0
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipString"    # Ljava/lang/String;

    .line 517
    :try_start_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    const/4 v0, 0x1

    return v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 311
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, "hextet":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 315
    int-to-short v1, v0

    return v1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 306
    :cond_0
    int-to-byte v1, v0

    return v1

    .line 304
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .line 205
    const-string v0, "\\."

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "address":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 207
    return-object v2

    .line 210
    :cond_0
    new-array v1, v3, [B

    .line 212
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 213
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    .end local v3    # "i":I
    :cond_1
    nop

    .line 219
    return-object v1

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return-object v2
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10
    .param p0, "ipString"    # Ljava/lang/String;

    .line 224
    const-string v0, ":"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_d

    array-length v1, v0

    const/16 v3, 0x9

    if-le v1, v3, :cond_0

    goto/16 :goto_6

    .line 231
    :cond_0
    const/4 v1, -0x1

    .line 232
    .local v1, "skipIndex":I
    const/4 v3, 0x1

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "skipIndex":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_3

    .line 233
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 234
    if-ltz v4, :cond_1

    .line 235
    return-object v2

    .line 237
    :cond_1
    move v4, v1

    .line 232
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    if-ltz v4, :cond_5

    .line 245
    move v5, v4

    .line 246
    .local v5, "partsHi":I
    array-length v6, v0

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    .line 247
    .local v6, "partsLo":I
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_4

    .line 248
    return-object v2

    .line 250
    :cond_4
    array-length v7, v0

    sub-int/2addr v7, v3

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_6

    .line 251
    return-object v2

    .line 256
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    :cond_5
    array-length v5, v0

    .line 257
    .restart local v5    # "partsHi":I
    move v6, v1

    .line 262
    .restart local v6    # "partsLo":I
    :cond_6
    add-int v7, v5, v6

    rsub-int/lit8 v7, v7, 0x8

    .line 263
    .local v7, "partsSkipped":I
    if-ltz v4, :cond_7

    if-lt v7, v3, :cond_8

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    .line 264
    :cond_8
    return-object v2

    .line 268
    :cond_9
    :goto_1
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 270
    .local v3, "rawBytes":Ljava/nio/ByteBuffer;
    move v8, v1

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_a

    .line 271
    :try_start_0
    aget-object v9, v0, v8

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 279
    .end local v8    # "i":I
    :catch_0
    move-exception v1

    goto :goto_5

    .line 273
    :cond_a
    move v8, v1

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_b

    .line 274
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 276
    .end local v8    # "i":I
    :cond_b
    move v1, v6

    .restart local v1    # "i":I
    :goto_4
    if-lez v1, :cond_c

    .line 277
    array-length v8, v0

    sub-int/2addr v8, v1

    aget-object v8, v0, v8

    invoke-static {v8}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 279
    .end local v1    # "i":I
    :goto_5
    nop

    .line 280
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return-object v2

    .line 281
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_c
    nop

    .line 282
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 226
    .end local v3    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v4    # "skipIndex":I
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    .end local v7    # "partsSkipped":I
    :cond_d
    :goto_6
    return-object v2
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 355
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 361
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 362
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 363
    .local v1, "hextets":[I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 364
    const/4 v4, 0x2

    mul-int v5, v4, v3

    aget-byte v5, v0, v5

    mul-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v2, v2, v5, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v4

    aput v4, v1, v3

    .line 363
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v3    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 368
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 463
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
