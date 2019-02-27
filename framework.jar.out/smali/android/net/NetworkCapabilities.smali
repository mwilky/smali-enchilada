.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkCapabilities$NameOf;,
        Landroid/net/NetworkCapabilities$Transport;,
        Landroid/net/NetworkCapabilities$NetCapability;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final FORCE_RESTRICTED_CAPABILITIES:J = 0x400000L

.field private static final INVALID_UID:I = -0x1

.field public static final LINK_BANDWIDTH_UNSPECIFIED:I = 0x0

.field private static final MAX_NET_CAPABILITY:I = 0x16

.field public static final MAX_TRANSPORT:I = 0x6

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field public static final MIN_TRANSPORT:I = 0x0

.field private static final MUTABLE_CAPABILITIES:J = 0x3f4000L

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOREGROUND:I = 0x13

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_CONGESTED:I = 0x14

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_ROAMING:I = 0x12

.field public static final NET_CAPABILITY_NOT_SUSPENDED:I = 0x15

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_OEM_PAID:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final NON_REQUESTABLE_CAPABILITIES:J = 0x3f0000L

.field static final RESTRICTED_CAPABILITIES:J = 0x7bcL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field private static final TRANSPORT_NAMES:[Ljava/lang/String;

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field static final UNRESTRICTED_CAPABILITIES:J = 0x1043L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mEstablishingVpnAppUid:I

.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Landroid/net/NetworkSpecifier;

.field private mSSID:Ljava/lang/String;

.field private mSignalStrength:I

.field private mTransportTypes:J

.field private mUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mUnwantedNetworkCapabilities:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "CELLULAR"

    const-string v1, "WIFI"

    const-string v2, "BLUETOOTH"

    const-string v3, "ETHERNET"

    const-string v4, "VPN"

    const-string v5, "WIFI_AWARE"

    const-string v6, "LOWPAN"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    const-wide/32 v0, 0xe000

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->set(Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/NetworkCapabilities;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/NetworkCapabilities;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    return-wide p1
.end method

.method static synthetic access$202(Landroid/net/NetworkCapabilities;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return p1
.end method

.method static synthetic access$702(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    return-object p1
.end method

.method static synthetic access$802(Landroid/net/NetworkCapabilities;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-object p1
.end method

.method public static appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/NetworkCapabilities$NameOf;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p3, v0}, Landroid/net/NetworkCapabilities$NameOf;->nameOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x1

    shr-long/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static capabilityNameOf(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "OEM_PAID"

    return-object v0

    :pswitch_1
    const-string v0, "NOT_SUSPENDED"

    return-object v0

    :pswitch_2
    const-string v0, "NOT_CONGESTED"

    return-object v0

    :pswitch_3
    const-string v0, "FOREGROUND"

    return-object v0

    :pswitch_4
    const-string v0, "NOT_ROAMING"

    return-object v0

    :pswitch_5
    const-string v0, "CAPTIVE_PORTAL"

    return-object v0

    :pswitch_6
    const-string v0, "VALIDATED"

    return-object v0

    :pswitch_7
    const-string v0, "NOT_VPN"

    return-object v0

    :pswitch_8
    const-string v0, "TRUSTED"

    return-object v0

    :pswitch_9
    const-string v0, "NOT_RESTRICTED"

    return-object v0

    :pswitch_a
    const-string v0, "INTERNET"

    return-object v0

    :pswitch_b
    const-string v0, "NOT_METERED"

    return-object v0

    :pswitch_c
    const-string v0, "EIMS"

    return-object v0

    :pswitch_d
    const-string v0, "XCAP"

    return-object v0

    :pswitch_e
    const-string v0, "RCS"

    return-object v0

    :pswitch_f
    const-string v0, "IA"

    return-object v0

    :pswitch_10
    const-string v0, "WIFI_P2P"

    return-object v0

    :pswitch_11
    const-string v0, "CBS"

    return-object v0

    :pswitch_12
    const-string v0, "IMS"

    return-object v0

    :pswitch_13
    const-string v0, "FOTA"

    return-object v0

    :pswitch_14
    const-string v0, "DUN"

    return-object v0

    :pswitch_15
    const-string v0, "SUPL"

    return-object v0

    :pswitch_16
    const-string v0, "MMS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static capabilityNamesOf([I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static checkValidCapability(I)V
    .locals 3

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static checkValidTransportType(I)V
    .locals 3

    nop

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TransportType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    return-void
.end method

.method private combineSSIDs(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t combine two SSIDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private combineSignalStrength(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t combine two networkSpecifiers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-void
.end method

.method private combineUids(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    return-void
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .locals 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, -0x3f0001

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidCapability(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x16

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidTransport(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static maxBandwidth(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static minBandwidth(II)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 10

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    if-eqz p2, :cond_0

    const-wide/32 v6, -0x3f4001

    and-long/2addr v0, v6

    and-long/2addr v2, v6

    :cond_0
    and-long v6, v4, v0

    cmp-long v6, v6, v0

    if-nez v6, :cond_1

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6
.end method

.method private satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByUids(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySSID(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->satisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    instance-of v0, v0, Landroid/net/MatchAllNetworkSpecifier;

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

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

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

.method public static transportNameOf(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    sget-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static transportNamesOf([I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 5

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidCapability(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int v3, v2, p1

    int-to-long v3, v3

    or-long/2addr v0, v3

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public addUnwantedCapability(I)V
    .locals 5

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidCapability(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    const/4 v2, 0x1

    shl-int v3, v2, p1

    int-to-long v3, v3

    or-long/2addr v0, v3

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method public appliesToUid(I)Z
    .locals 4

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    invoke-virtual {v2, p1}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public appliesToUidRange(Landroid/net/UidRange;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    invoke-virtual {v2, p1}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public clearAll()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSignalStrength(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineUids(Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSSIDs(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeFirstNonRequestableCapability()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    or-long/2addr v0, v2

    const-wide/32 v2, 0x3f0000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "signalStrength"

    return-object v2

    :cond_2
    const/4 v2, 0x0

    return-object v2

    :cond_3
    :goto_0
    const-string/jumbo v2, "link bandwidth"

    return-object v2
.end method

.method public describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_0

    const-string/jumbo v0, "other NetworkCapabilities was null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-wide/32 v1, -0x3f4801

    iget-wide v3, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v5, -0x3f4801

    and-long/2addr v3, v5

    iget-wide v7, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v5, v7

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v7, :cond_1

    invoke-static {v3, v4}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "immutable capabilities changed: %s -> %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v7, v13, v9

    aput-object v11, v13, v8

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v11

    const-string/jumbo v12, "specifier changed: %s -> %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v7, v13, v9

    aput-object v11, v13, v8

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "transports changed: %s -> %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v9

    aput-object v11, v10, v8

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/net/NetworkCapabilities;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsUids(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSSID(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsSSID(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsUids(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v2, :cond_2

    return v1

    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/UidRange;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    return v1
.end method

.method public getCapabilities()[I
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return v0
.end method

.method public getTransportTypes()[I
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getUids()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_0
    return-object v0
.end method

.method public getUnwantedCapabilities()[I
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 6

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-int v0, v1, p1

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSignalStrength()Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransport(I)Z
    .locals 6

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shl-int v0, v1, p1

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUnwantedCapability(I)Z
    .locals 6

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    shl-int v0, v1, p1

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/16 v1, 0x20

    shr-long/2addr v4, v1

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    and-long/2addr v4, v2

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    shr-long/2addr v4, v1

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0xb

    add-int/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long v1, v2, v1

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .locals 10

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, 0x400000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-wide v5, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v7, 0x1043

    and-long/2addr v5, v7

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget-wide v6, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v8, 0x7bc

    and-long/2addr v6, v8

    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    move v1, v4

    nop

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    :cond_3
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    :cond_4
    return-void
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidCapability(I)V

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    not-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    and-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public satisfiedBySSID(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public satisfiedByUids(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    iget v3, p1, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    invoke-virtual {v2, v3}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->appliesToUidRange(Landroid/net/UidRange;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public set(Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget v0, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    iget v0, p1, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-void
.end method

.method public setCapabilities([I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    return-void
.end method

.method public setCapabilities([I[I)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    return-void
.end method

.method public setCapability(IZ)Landroid/net/NetworkCapabilities;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    :goto_0
    return-object p0
.end method

.method public setEstablishingVpnAppUid(I)V
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    return-void
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return-object p0
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;
    .locals 2

    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have a single transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p0
.end method

.method public setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-object p0
.end method

.method public setSignalStrength(I)Landroid/net/NetworkCapabilities;
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-object p0
.end method

.method public setSingleUid(I)Landroid/net/NetworkCapabilities;
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    new-instance v1, Landroid/net/UidRange;

    invoke-direct {v1, p1, p1}, Landroid/net/UidRange;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setTransportType(IZ)Landroid/net/NetworkCapabilities;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    :goto_0
    return-object p0
.end method

.method public setTransportTypes([I)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-void
.end method

.method public setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;)",
            "Landroid/net/NetworkCapabilities;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    const-string v1, " Transports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    sget-object v5, Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;->INSTANCE:Landroid/net/-$$Lambda$FpGXkd3pLxeXY58eJ_84mi1PLWQ;

    const-string/jumbo v6, "|"

    invoke-static {v0, v1, v2, v5, v6}, Landroid/net/NetworkCapabilities;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/NetworkCapabilities$NameOf;Ljava/lang/String;)V

    :cond_0
    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    const-string v1, " Capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    sget-object v5, Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;->INSTANCE:Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;

    const-string v6, "&"

    invoke-static {v0, v1, v2, v5, v6}, Landroid/net/NetworkCapabilities;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/NetworkCapabilities$NameOf;Ljava/lang/String;)V

    :cond_1
    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    const-string v1, " Unwanted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    sget-object v3, Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;->INSTANCE:Landroid/net/-$$Lambda$p1_56lwnt1xBuY1muPblbN1Dtkw;

    const-string v4, "&"

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkCapabilities;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/NetworkCapabilities$NameOf;Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-lez v1, :cond_3

    const-string v1, " LinkUpBandwidth>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Kbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v1, :cond_4

    const-string v1, " LinkDnBandwidth>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Kbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v1, :cond_5

    const-string v1, " Specifier: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_7

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    invoke-virtual {v1}, Landroid/net/UidRange;->count()I

    move-result v1

    if-ne v1, v2, :cond_7

    const-string v1, " Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    iget v1, v1, Landroid/net/UidRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string v1, " Uids: <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_0
    iget v1, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    const-string v1, " EstablishingAppUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkCapabilities;->mEstablishingVpnAppUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, " SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mUnwantedNetworkCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v2, v5

    const-wide v7, 0x20e00000001L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    const-wide v6, 0x20e00000002L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v2, :cond_2

    const-wide v2, 0x10900000005L

    iget-object v4, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x11100000007L

    iget v4, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
