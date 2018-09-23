.class Landroid/net/apf/ApfFilter$Ra;
.super Ljava/lang/Object;
.source "ApfFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ra"
.end annotation


# static fields
.field private static final ICMP6_4_BYTE_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_4_BYTE_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_DNSSL_OPTION_TYPE:I = 0x1f

.field private static final ICMP6_PREFIX_OPTION_LEN:I = 0x20

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_PREFERRED_LIFETIME_OFFSET:I = 0x8

.field private static final ICMP6_PREFIX_OPTION_TYPE:I = 0x3

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_LEN:I = 0x4

.field private static final ICMP6_PREFIX_OPTION_VALID_LIFETIME_OFFSET:I = 0x4

.field private static final ICMP6_RA_CHECKSUM_LEN:I = 0x2

.field private static final ICMP6_RA_CHECKSUM_OFFSET:I = 0x38

.field private static final ICMP6_RA_HEADER_LEN:I = 0x10

.field private static final ICMP6_RA_OPTION_OFFSET:I = 0x46

.field private static final ICMP6_RA_ROUTER_LIFETIME_LEN:I = 0x2

.field private static final ICMP6_RA_ROUTER_LIFETIME_OFFSET:I = 0x3c

.field private static final ICMP6_RDNSS_OPTION_TYPE:I = 0x19

.field private static final ICMP6_ROUTE_INFO_OPTION_TYPE:I = 0x18


# instance fields
.field mLastSeen:J

.field mMinLifetime:J

.field private final mNonLifetimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPacket:Ljava/nio/ByteBuffer;

.field private final mPrefixOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRdnssOptionOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field seenCount:I

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method constructor <init>(Landroid/net/apf/ApfFilter;[BI)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfFilter$InvalidRaException;
        }
    .end annotation

    iput-object p1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/apf/ApfFilter$Ra;->seenCount:I

    const/16 v1, 0x46

    if-lt p3, v1, :cond_5

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v2

    sget v3, Landroid/system/OsConstants;->ETH_P_IPV6:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v2

    sget v3, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v2

    const/16 v3, 0x86

    if-ne v2, v3, :cond_4

    new-instance v2, Landroid/net/metrics/RaEvent$Builder;

    invoke-direct {v2}, Landroid/net/metrics/RaEvent$Builder;-><init>()V

    const/16 v3, 0xf

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, v4}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    const/16 v5, 0x38

    const/4 v6, 0x2

    invoke-direct {p0, v3, v5, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    const/16 v5, 0x3c

    invoke-direct {p0, v3, v5, v6}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v7, v5}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Landroid/net/metrics/RaEvent$Builder;->updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-static {v5, v1}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iget-object v7, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v7

    const/16 v8, 0x8

    mul-int/2addr v7, v8

    if-eq v5, v4, :cond_1

    const/16 v8, 0x1f

    if-eq v5, v8, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetimeU32(I)I

    move-result v3

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x4

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    goto :goto_1

    :cond_1
    const/4 v9, 0x4

    invoke-direct {p0, v3, v9, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    iget-object v10, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v11, v1, 0x4

    invoke-static {v10, v11}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    invoke-direct {p0, v3, v8, v9}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v3

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v1, 0x8

    invoke-static {v8, v9}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/net/metrics/RaEvent$Builder;->updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;

    iget-object v10, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    if-lez v7, :cond_2

    iget-object v8, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int v9, v1, v7

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_2
    new-instance v4, Landroid/net/apf/ApfFilter$InvalidRaException;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v8, 0x1

    aput-object v0, v6, v8

    const-string v0, "Invalid option length opt=%d len=%d"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-direct {p0, v3, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    invoke-virtual {p0, p2, p3}, Landroid/net/apf/ApfFilter$Ra;->minLifetime([BI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    invoke-static {p1}, Landroid/net/apf/ApfFilter;->access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/metrics/RaEvent$Builder;->build()Landroid/net/metrics/RaEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    return-void

    :cond_4
    new-instance v0, Landroid/net/apf/ApfFilter$InvalidRaException;

    const-string v1, "Not an ICMP6 router advertisement"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Landroid/net/apf/ApfFilter$InvalidRaException;

    const-string v1, "Not an ICMP6 router advertisement"

    invoke-direct {v0, v1}, Landroid/net/apf/ApfFilter$InvalidRaException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private IPv6AddresstoString(I)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    if-ltz p1, :cond_1

    add-int/lit8 v1, p1, 0x10

    array-length v2, v0

    if-gt v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x10

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x10

    invoke-static {v0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    :goto_0
    const-string v1, "???"
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "???"

    return-object v1

    :catch_1
    move-exception v0

    const-string v1, "???"

    return-object v1
.end method

.method private addNonLifetime(III)I
    .locals 4

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sub-int v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v0, p2, p3

    return v0
.end method

.method private addNonLifetimeU32(I)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, v0}, Landroid/net/apf/ApfFilter$Ra;->addNonLifetime(III)I

    move-result v0

    return v0
.end method

.method private prefixOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 10

    add-int/lit8 v0, p2, 0x10

    invoke-direct {p0, v0}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, p2, 0x4

    invoke-static {v2, v3}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, p2, 0x8

    invoke-static {v4, v5}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    const-string v6, "%s/%d %ds/%ds "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private rdnssOptionToString(Ljava/lang/StringBuffer;I)V
    .locals 8

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->getUint8(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p2, 0x4

    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v1

    add-int/lit8 v3, v0, -0x8

    const/16 v4, 0x10

    div-int/2addr v3, v4

    const-string v5, "DNS "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "s"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, p2, 0x8

    mul-int v7, v4, v5

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method currentLifetime()J
    .locals 6

    iget-wide v0, p0, Landroid/net/apf/ApfFilter$Ra;->mMinLifetime:J

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-virtual {v2}, Landroid/net/apf/ApfFilter;->currentTimeSeconds()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/apf/ApfFilter$Ra;->mLastSeen:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method generateFilterLocked(Landroid/net/apf/ApfGenerator;)J
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ApfFilter.this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/apf/ApfGenerator$IllegalInstructionException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v1}, Landroid/net/apf/ApfFilter;->access$600(Landroid/net/apf/ApfFilter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0NotEquals(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v1

    const-wide/16 v3, 0x6

    div-long/2addr v1, v3

    long-to-int v1, v1

    sget-object v2, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    const/16 v3, 0xf

    invoke-virtual {p1, v2, v3}, Landroid/net/apf/ApfGenerator;->addLoadFromMemory(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0GreaterThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/net/apf/ApfGenerator;->addLoadImmediate(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    sget-object v5, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-virtual {p1, v5, v6, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfBytesNotEqual(Landroid/net/apf/ApfGenerator$Register;[BLjava/lang/String;)Landroid/net/apf/ApfGenerator;

    :cond_0
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v6, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x38

    if-ne v6, v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v8, v6}, Landroid/net/apf/ApfGenerator;->addLoad32(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bogus lifetime size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    sget-object v8, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    invoke-virtual {p1, v8, v6}, Landroid/net/apf/ApfGenerator;->addLoad16(Landroid/net/apf/ApfGenerator$Register;I)Landroid/net/apf/ApfGenerator;

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/net/apf/ApfGenerator;->addJumpIfR0LessThan(ILjava/lang/String;)Landroid/net/apf/ApfGenerator;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    sget-object v3, Landroid/net/apf/ApfFilter$Counter;->DROPPED_RA:Landroid/net/apf/ApfFilter$Counter;

    invoke-static {v2, p1, v3}, Landroid/net/apf/ApfFilter;->access$700(Landroid/net/apf/ApfFilter;Landroid/net/apf/ApfGenerator;Landroid/net/apf/ApfFilter$Counter;)V

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v2}, Landroid/net/apf/ApfFilter;->access$800(Landroid/net/apf/ApfFilter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/apf/ApfGenerator;->addJump(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    invoke-virtual {p1, v0}, Landroid/net/apf/ApfGenerator;->defineLabel(Ljava/lang/String;)Landroid/net/apf/ApfGenerator;

    int-to-long v2, v1

    return-wide v2
.end method

.method getLastMatchingPacket()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isExpired()Z
    .locals 4

    invoke-virtual {p0}, Landroid/net/apf/ApfFilter$Ra;->currentLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method matches([BI)Z
    .locals 7

    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    aget-byte v5, p1, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method minLifetime([BI)J
    .locals 9

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    const/16 v5, 0x38

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroid/net/apf/ApfFilter$Ra;->mNonLifetimes:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    invoke-static {v2, v4}, Lcom/android/internal/util/BitUtils;->getUint32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bogus lifetime size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-static {v2, v4}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v6

    int-to-long v6, v6

    nop

    :goto_1
    nop

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "RA %s -> %s %ds "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x16

    invoke-direct {p0, v4}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x26

    invoke-direct {p0, v4}, Landroid/net/apf/ApfFilter$Ra;->IPv6AddresstoString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/net/apf/ApfFilter$Ra;->mPacket:Ljava/nio/ByteBuffer;

    const/16 v5, 0x3c

    invoke-static {v4, v5}, Lcom/android/internal/util/BitUtils;->getUint16(Ljava/nio/ByteBuffer;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mPrefixOptionOffsets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter$Ra;->prefixOptionToString(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$Ra;->mRdnssOptionOffsets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/net/apf/ApfFilter$Ra;->rdnssOptionToString(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "<Malformed RA>"

    return-object v1
.end method
