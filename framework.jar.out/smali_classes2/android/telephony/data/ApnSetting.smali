.class public Landroid/telephony/data/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/ApnSetting$Builder;,
        Landroid/telephony/data/ApnSetting$MvnoType;,
        Landroid/telephony/data/ApnSetting$ProtocolType;,
        Landroid/telephony/data/ApnSetting$AuthType;,
        Landroid/telephony/data/ApnSetting$ApnType;
    }
.end annotation


# static fields
.field private static final APN_TYPE_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APN_TYPE_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUTH_TYPE_CHAP:I = 0x2

.field public static final AUTH_TYPE_NONE:I = 0x0

.field public static final AUTH_TYPE_PAP:I = 0x1

.field public static final AUTH_TYPE_PAP_OR_CHAP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ApnSetting"

.field public static final MVNO_TYPE_GID:I = 0x2

.field public static final MVNO_TYPE_ICCID:I = 0x3

.field public static final MVNO_TYPE_IMSI:I = 0x1

.field private static final MVNO_TYPE_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MVNO_TYPE_SPN:I = 0x0

.field private static final MVNO_TYPE_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_IN_MAP_INT:I = -0x1

.field private static final NO_PORT_SPECIFIED:I = -0x1

.field private static final PROTOCOL_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_IP:I = 0x0

.field public static final PROTOCOL_IPV4V6:I = 0x2

.field public static final PROTOCOL_IPV6:I = 0x1

.field public static final PROTOCOL_PPP:I = 0x3

.field private static final PROTOCOL_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ALL_BUT_IA:I = 0x2ff

.field public static final TYPE_CBS:I = 0x80

.field public static final TYPE_DEFAULT:I = 0x11

.field public static final TYPE_DUN:I = 0x8

.field public static final TYPE_EMERGENCY:I = 0x200

.field public static final TYPE_FOTA:I = 0x20

.field public static final TYPE_HIPRI:I = 0x10

.field public static final TYPE_IA:I = 0x100

.field public static final TYPE_IMS:I = 0x40

.field public static final TYPE_MMS:I = 0x2

.field public static final TYPE_SUPL:I = 0x4

.field private static final VDBG:Z = false


# instance fields
.field private final mApnName:Ljava/lang/String;

.field private final mApnTypeBitmask:I

.field private final mAuthType:I

.field private final mCarrierEnabled:Z

.field private final mEntryName:Ljava/lang/String;

.field private final mId:I

.field private final mMaxConns:I

.field private final mMaxConnsTime:I

.field private final mMmsProxyAddress:Ljava/net/InetAddress;

.field private final mMmsProxyPort:I

.field private final mMmsc:Landroid/net/Uri;

.field private final mModemCognitive:Z

.field private final mMtu:I

.field private final mMvnoMatchData:Ljava/lang/String;

.field private final mMvnoType:I

.field private final mNetworkTypeBitmask:I

.field private final mOperatorNumeric:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanentFailed:Z

.field private final mProfileId:I

.field private final mProtocol:I

.field private final mProxyAddress:Ljava/net/InetAddress;

.field private final mProxyPort:I

.field private final mRoamingProtocol:I

.field private final mUser:Ljava/lang/String;

.field private final mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "*"

    const/16 v2, 0x2ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "default"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v1, "mms"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v1, "supl"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "dun"

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "hipri"

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "fota"

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "ims"

    const/16 v8, 0x40

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "cbs"

    const/16 v9, 0x80

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "ia"

    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "emergency"

    const/16 v11, 0x200

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "supl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "dun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hipri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fota"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ims"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cbs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "emergency"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v1, "IP"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v1, "IPV6"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v1, "IPV4V6"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string v1, "PPP"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "IP"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "IPV6"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "IPV4V6"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "PPP"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v1, "spn"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "imsi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "gid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string v1, "iccid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "spn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "imsi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iccid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/data/ApnSetting$1;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$1;-><init>()V

    sput-object v0, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/telephony/data/ApnSetting$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$000(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$100(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$300(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$400(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$500(Landroid/telephony/data/ApnSetting$Builder;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$600(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$700(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$800(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$900(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1000(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1100(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1200(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1300(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1400(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1500(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1600(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1700(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1800(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$1900(Landroid/telephony/data/ApnSetting$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$2000(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$2100(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$2200(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$2300(Landroid/telephony/data/ApnSetting$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {p1}, Landroid/telephony/data/ApnSetting$Builder;->access$2400(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;)V

    return-void
.end method

.method private static UriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static UriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic access$2600(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;
    .locals 1

    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->readFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method private deParseTypes(I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/telephony/data/ApnSetting;->APN_TYPE_INT_MAP:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ApnSetting"

    const-string v3, "Can\'t parse InetAddress from string: unknown host."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;
    .locals 17

    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    move/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->access$2500(Landroid/telephony/data/ApnSetting$Builder;I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting$Builder;->setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v6, p5

    invoke-virtual {v0, v6}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-virtual {v0, v7}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v8, p7

    invoke-virtual {v0, v8}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v9, p8

    invoke-virtual {v0, v9}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v10, p9

    invoke-virtual {v0, v10}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v11, p10

    invoke-virtual {v0, v11}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v12, p11

    invoke-virtual {v0, v12}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v13, p12

    invoke-virtual {v0, v13}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v14, p13

    invoke-virtual {v0, v14}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v15, p14

    invoke-virtual {v0, v15}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p19

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p20

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p21

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p22

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtu(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move/from16 v1, p23

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    move-object/from16 v1, p24

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method public static makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;
    .locals 30

    move-object/from16 v0, p0

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->parseTypes(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "network_type_bitmask"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "bearer_bitmask"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    nop

    invoke-static {v3}, Landroid/telephony/ServiceState;->convertBearerBitmaskToNetworkTypeBitmask(I)I

    move-result v2

    :cond_0
    move/from16 v27, v2

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "numeric"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apn"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "proxy"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/data/ApnSetting;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    const-string/jumbo v7, "port"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/data/ApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "mmsc"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/data/ApnSetting;->UriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "mmsproxy"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/data/ApnSetting;->inetAddressFromString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    const-string/jumbo v10, "mmsport"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/data/ApnSetting;->portFromString(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "user"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "password"

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "authtype"

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    sget-object v14, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v15, "protocol"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Landroid/telephony/data/ApnSetting;->nullToNotInMapInt(Ljava/lang/Integer;)I

    move-result v15

    sget-object v14, Landroid/telephony/data/ApnSetting;->PROTOCOL_STRING_MAP:Ljava/util/Map;

    move/from16 v28, v15

    const-string/jumbo v15, "roaming_protocol"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Landroid/telephony/data/ApnSetting;->nullToNotInMapInt(Ljava/lang/Integer;)I

    move-result v16

    const-string v14, "carrier_enabled"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move/from16 v17, v15

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    :goto_0
    const-string/jumbo v14, "profile_id"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string/jumbo v14, "modem_cognitive"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-ne v14, v15, :cond_2

    move/from16 v20, v15

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    const-string/jumbo v14, "max_conns"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const-string/jumbo v14, "wait_time"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string/jumbo v14, "max_conns_time"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string/jumbo v14, "mtu"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    sget-object v14, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_STRING_MAP:Ljava/util/Map;

    const-string/jumbo v15, "mvno_type"

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v14}, Landroid/telephony/data/ApnSetting;->nullToNotInMapInt(Ljava/lang/Integer;)I

    move-result v25

    const-string/jumbo v14, "mvno_match_data"

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move v14, v1

    move/from16 v15, v28

    move/from16 v18, v27

    invoke-static/range {v2 .. v26}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    return-object v2
.end method

.method public static makeApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/ApnSetting;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Landroid/telephony/data/ApnSetting;->mId:I

    iget-object v2, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    iget-object v4, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v5, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    iget v6, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    iget-object v7, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v8, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    iget v9, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    iget-object v10, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v11, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget v12, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    iget v13, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    iget v14, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    move/from16 v26, v15

    iget-boolean v15, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    move/from16 v27, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    move/from16 v28, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    move/from16 v29, v15

    iget-boolean v15, v0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    move/from16 v30, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    move/from16 v31, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    move/from16 v32, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    move/from16 v33, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mMtu:I

    move/from16 v34, v15

    iget v15, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    move/from16 v35, v15

    iget-object v15, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    move-object/from16 v25, v15

    move/from16 v16, v27

    move/from16 v17, v28

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v32

    move/from16 v22, v33

    move/from16 v23, v34

    move/from16 v24, v35

    move/from16 v15, v26

    invoke-static/range {v1 .. v25}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    return-object v1
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static nullToNotInMapInt(Ljava/lang/Integer;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static parseTypes(Ljava/lang/String;)I
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2ff

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    sget-object v5, Landroid/telephony/data/ApnSetting;->APN_TYPE_STRING_MAP:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v0, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static portFromString(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ApnSetting"

    const-string v3, "Can\'t parse port from String"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static portToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/ApnSetting;
    .locals 43

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/net/InetAddress;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v31

    const-class v1, Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Landroid/net/Uri;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v33, v1

    check-cast v33, Ljava/net/InetAddress;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v16, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v42

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v8, v33

    move/from16 v9, v34

    move-object/from16 v10, v35

    move-object/from16 v11, v36

    move/from16 v12, v37

    move/from16 v13, v38

    move/from16 v14, v39

    move/from16 v15, v40

    move/from16 v17, v42

    move/from16 v24, v41

    invoke-static/range {v1 .. v25}, Landroid/telephony/data/ApnSetting;->makeApnSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/InetAddress;ILandroid/net/Uri;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;IIIIZIIZIIIIILjava/lang/String;)Landroid/telephony/data/ApnSetting;

    move-result-object v1

    return-object v1
.end method

.method private typeSameAny(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Z
    .locals 2

    iget v0, p1, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    iget v1, p2, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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

.method private xorEqualsPort(II)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p2, v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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


# virtual methods
.method public canHandleType(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_1

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1
.end method

.method public getApnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    return-object v0
.end method

.method public getApnTypeBitmask()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    return v0
.end method

.method public getAuthType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    return v0
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    return v0
.end method

.method public getMaxConns()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    return v0
.end method

.method public getMaxConnsTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    return v0
.end method

.method public getMmsProxyAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMmsProxyPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    return v0
.end method

.method public getMmsc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    return-object v0
.end method

.method public getModemCognitive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    return v0
.end method

.method public getMtu()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMtu:I

    return v0
.end method

.method public getMvnoMatchData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public getMvnoType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    return v0
.end method

.method public getNetworkTypeBitmask()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFailed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    return v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    return v0
.end method

.method public getProtocol()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    return v0
.end method

.method public getProxyAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    return v0
.end method

.method public getRoamingProtocol()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    return v0
.end method

.method public hasMvnoParams()Z
    .locals 2

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    return v0
.end method

.method public setPermanentFailed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    return-void
.end method

.method public similar(Landroid/telephony/data/ApnSetting;)Z
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0, p1}, Landroid/telephony/data/ApnSetting;->typeSameAny(Landroid/telephony/data/ApnSetting;Landroid/telephony/data/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsPort(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p1, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-direct {p0, v0, v1}, Landroid/telephony/data/ApnSetting;->xorEqualsPort(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "numeric"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "proxy"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "port"

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mmsc"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->UriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mmsport"

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mmsproxy"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "user"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "password"

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authtype"

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->deParseTypes(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "protocol"

    sget-object v3, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"

    sget-object v3, Landroid/telephony/data/ApnSetting;->PROTOCOL_INT_MAP:Ljava/util/Map;

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier_enabled"

    iget-boolean v3, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "mvno_type"

    sget-object v3, Landroid/telephony/data/ApnSetting;->MVNO_TYPE_INT_MAP:Ljava/util/Map;

    iget v4, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/telephony/data/ApnSetting;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "network_type_bitmask"

    iget v3, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ApnSettingV4] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->UriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->portToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-direct {p0, v1}, Landroid/telephony/data/ApnSetting;->deParseTypes(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, " | "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mProfileId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mModemCognitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConns:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mWaitTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMaxConnsTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMtu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/ApnSetting;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/telephony/data/ApnSetting;->mPermanentFailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mEntryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mApnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mProxyAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProxyPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsc:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMmsProxyPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/ApnSetting;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mApnTypeBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mRoamingProtocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/ApnSetting;->mCarrierEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mMvnoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/ApnSetting;->mNetworkTypeBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
