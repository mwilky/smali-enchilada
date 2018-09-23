.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$UidFdTagger;,
        Lcom/android/server/IpSecService$EncapSocketRecord;,
        Lcom/android/server/IpSecService$TunnelInterfaceRecord;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$RefcountedResourceArray;,
        Lcom/android/server/IpSecService$OwnedResourceRecord;,
        Lcom/android/server/IpSecService$UserResourceTracker;,
        Lcom/android/server/IpSecService$UserRecord;,
        Lcom/android/server/IpSecService$ResourceTracker;,
        Lcom/android/server/IpSecService$RefcountedResource;,
        Lcom/android/server/IpSecService$IResource;,
        Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DIRECTIONS:[I

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field private static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT_MS:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field static final TUN_INTF_NETID_RANGE:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TUN_INTF_NETID_START:I = 0xfc00
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final WILDCARD_ADDRESSES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextResourceId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "IpSecService.this"
    .end annotation
.end field

.field private mNextTunnelNetIdIndex:I

.field private final mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

.field private final mTunnelNetIds:Landroid/util/SparseBooleanArray;

.field final mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

.field final mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IpSecService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/IpSecService;->DBG:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    const-string v0, "0.0.0.0"

    const-string v1, "::"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;->INSTANCE:Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    new-instance v0, Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-direct {v0}, Lcom/android/server/IpSecService$UserResourceTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    iput-object p3, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    return-object v0
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    :goto_0
    if-lez v0, :cond_1

    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    sget-object v2, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    const-string v3, "IpSecService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v3, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_0

    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed 10 attempts to bind to a port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkDirection(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static checkInetAddress(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inappropriate wildcard address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unspecified address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIpSecConfig(Landroid/net/IpSecConfig;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encap Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remote UDP port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService;->validateAlgorithms(Landroid/net/IpSecConfig;)V

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getOwnedByTransform()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setDestinationAddress(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IpSecTransform.mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    goto :goto_1

    :pswitch_3
    nop

    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mismatched remote addresseses."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SPI already in use; cannot be used in new Transforms"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private connectNativeNetdService()V
    .locals 1

    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/IpSecService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    return-object v0
.end method

.method private createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v21

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v21, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/IpSecService$EncapSocketRecord;->getPort()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    :cond_0
    move/from16 v22, v0

    move/from16 v23, v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v13

    if-nez v14, :cond_2

    if-nez v13, :cond_1

    const-string v0, "ecb(cipher_null)"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v12, v0

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v1

    iget v1, v1, Landroid/net/Network;->netId:I

    move v6, v1

    goto :goto_2

    :cond_3
    nop

    move v6, v5

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v9

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v10, v1

    goto :goto_4

    :cond_4
    const-string v1, ""

    goto :goto_3

    :goto_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    :goto_5
    move-object/from16 v16, v1

    goto :goto_6

    :cond_5
    new-array v1, v5, [B

    goto :goto_5

    :goto_6
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    move/from16 v17, v1

    goto :goto_7

    :cond_6
    nop

    move/from16 v17, v5

    :goto_7
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    :goto_8
    move-object/from16 v18, v1

    goto :goto_9

    :cond_7
    new-array v1, v5, [B

    goto :goto_8

    :goto_9
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    move/from16 v19, v1

    goto :goto_a

    :cond_8
    nop

    move/from16 v19, v5

    :goto_a
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_b
    move-object/from16 v20, v1

    goto :goto_c

    :cond_9
    const-string v1, ""

    goto :goto_b

    :goto_c
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v1

    :goto_d
    move-object/from16 v24, v1

    goto :goto_e

    :cond_a
    new-array v1, v5, [B

    goto :goto_d

    :goto_e
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v1

    move/from16 v25, v1

    goto :goto_f

    :cond_b
    nop

    move/from16 v25, v5

    :goto_f
    move/from16 v1, p2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v26, v13

    move-object/from16 v13, v18

    move-object/from16 v27, v14

    move/from16 v14, v19

    move-object/from16 v28, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v24

    move/from16 v17, v25

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-interface/range {v0 .. v20}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIII)V

    return-void
.end method

.method private enforceTunnelPermissions(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Null calling package cannot create IpSec tunnels"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/IpSecService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    nop

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Request to ignore AppOps for non-legacy API"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 3

    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System Server couldn\'t get AppOps"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$new$0(Ljava/io/FileDescriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    invoke-static {p0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    throw v0
.end method

.method private releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    if-lez v8, :cond_1

    const/16 v0, 0x100

    if-lt v8, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ESP SPI must not be in the range of 0-255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "Null Binder passed to allocateSecurityParameterIndex"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v10, v0

    iget v0, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v0

    const/4 v0, 0x0

    move v1, v0

    const/4 v12, -0x1

    :try_start_1
    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v2}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v12, v1}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v2, v7, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    const-string v3, ""
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p1

    :try_start_3
    invoke-interface {v2, v11, v3, v13, v8}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v14, v2

    :try_start_4
    const-string v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocated SPI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v15, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v5, Lcom/android/server/IpSecService$SpiRecord;

    const-string v4, ""

    move-object v1, v5

    move-object v2, v7

    move v3, v11

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v16, v6

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V

    new-array v1, v0, [Lcom/android/server/IpSecService$RefcountedResource;

    move-object/from16 v2, v16

    invoke-direct {v2, v7, v12, v9, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v15, v11, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    new-instance v1, Landroid/net/IpSecSpiResponse;

    invoke-direct {v1, v0, v11, v14}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    :goto_1
    move v14, v1

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    :goto_3
    move v14, v1

    :goto_4
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v2, Landroid/system/OsConstants;->ENOENT:I

    if-ne v1, v2, :cond_3

    new-instance v1, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v14}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TransformRecord;

    iget v2, v1, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getMode()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Transform mode was not Transport mode; cannot be applied to a socket"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v3}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v10

    move v6, p3

    move v7, p2

    invoke-interface/range {v4 .. v10}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTunnelModeTransform(IIILjava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v10, p2

    move/from16 v11, p3

    monitor-enter p0

    move-object/from16 v12, p4

    :try_start_0
    invoke-direct {v1, v12}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    iget-object v0, v1, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v0, v11}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    move-object v14, v0

    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    move/from16 v15, p1

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    move-object v9, v0

    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v0

    move-object v8, v0

    nop

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface"

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v13, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v4

    check-cast v4, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v0, v4

    :cond_1
    move-object v7, v0

    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$SpiRecord;

    move-object v6, v0

    if-nez v10, :cond_2

    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIkey()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getOkey()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v4, v0

    :try_start_1
    invoke-virtual {v8, v4}, Landroid/net/IpSecConfig;->setMarkValue(I)V

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/net/IpSecConfig;->setMarkMask(I)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v10, v3, :cond_3

    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/IpSecConfig;->setNetwork(Landroid/net/Network;)V

    sget-object v0, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    const/16 v17, 0x0

    move/from16 v18, v2

    invoke-virtual {v14}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v19
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v20, -0x1

    move-object v2, v0

    move v0, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move v4, v10

    move-object/from16 v21, v6

    move-object v6, v5

    move-object/from16 v22, v7

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v17

    move-object/from16 v19, v9

    move/from16 v9, v20

    :try_start_3
    invoke-interface/range {v2 .. v9}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v18, 0x1

    move v3, v0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v9, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v17, v4

    move-object/from16 v19, v9

    move-object v3, v6

    move-object v4, v7

    move-object v2, v8

    goto :goto_3

    :cond_3
    move/from16 v17, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v19, v9

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    :try_start_4
    invoke-direct {v1, v2, v11, v3, v4}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v17, v4

    move-object v3, v6

    move-object v4, v7

    move-object v2, v8

    move-object/from16 v19, v9

    :goto_3
    :try_start_5
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v6, Landroid/system/OsConstants;->EINVAL:I

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeUdpEncapsulationSocket(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/IpSecService;->checkIpSecConfig(Landroid/net/IpSecConfig;)V

    const-string v1, "Null Binder passed to createTransform"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v1

    iget-object v1, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v10, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/net/IpSecTransformResponse;

    invoke-direct {v1, v2}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    check-cast v3, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v1, v3

    :cond_2
    move-object v12, v1

    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    move-object v13, v1

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    move-object v14, v1

    move-object/from16 v15, p1

    invoke-direct {v7, v15, v9, v14, v12}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    iget-object v6, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v5, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v4, Lcom/android/server/IpSecService$TransformRecord;

    move-object v1, v4

    move-object v2, v7

    move v3, v9

    move-object v8, v4

    move-object v4, v15

    move-object/from16 v16, v10

    move-object v10, v5

    move-object v5, v14

    move-object/from16 v17, v13

    move-object v13, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v10, v7, v8, v0, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v13, v9, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    new-instance v1, Landroid/net/IpSecTransformResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;
    .locals 28

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    monitor-enter p0

    move-object/from16 v12, p5

    :try_start_0
    invoke-direct {v10, v12}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    const-string v0, "Null Binder passed to createTunnelInterface"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "No underlying network was specified"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v14, v0

    iget-object v0, v14, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;

    invoke-direct {v0, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, v10, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v10, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v8, v0

    const-string v0, "%s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ipsec"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    :try_start_2
    iget-object v0, v10, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v6

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move v6, v9

    move v0, v7

    move v7, v8

    :try_start_4
    invoke-interface/range {v2 .. v7}, Landroid/net/INetd;->addVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/android/server/IpSecService;->WILDCARD_ADDRESSES:[Ljava/lang/String;

    array-length v3, v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    :try_start_5
    aget-object v20, v2, v4

    sget-object v5, Lcom/android/server/IpSecService;->DIRECTIONS:[I

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v17, v5, v7

    move/from16 v25, v17

    move/from16 v0, v25

    if-ne v0, v1, :cond_1

    move/from16 v23, v8

    goto :goto_2

    :cond_1
    move/from16 v23, v9

    :goto_2
    iget-object v1, v10, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    move/from16 v19, v0

    move-object/from16 v21, v20

    invoke-interface/range {v17 .. v24}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move v2, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    goto/16 :goto_4

    :cond_3
    :try_start_6
    iget-object v0, v14, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v7, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v6, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v6

    move-object v2, v10

    move v3, v15

    move-object/from16 v4, v16

    move-object v5, v13

    move-object v12, v6

    move-object/from16 v6, p1

    move-object v13, v7

    move-object/from16 v7, p2

    move/from16 v26, v8

    move v8, v9

    move-object/from16 v27, v14

    move v14, v9

    move/from16 v9, v26

    :try_start_7
    invoke-direct/range {v1 .. v9}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v13, v10, v12, v11, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v15, v13}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v1, v16

    const/4 v2, 0x0

    :try_start_8
    invoke-direct {v0, v2, v15, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(IILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move/from16 v2, v26

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v1, v16

    move/from16 v2, v26

    goto :goto_4

    :catch_6
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    goto :goto_3

    :catch_7
    move-exception v0

    move-object/from16 v27, v14

    move-object/from16 v1, v16

    move v14, v9

    move v2, v8

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v6

    move-object/from16 v27, v14

    move v14, v9

    move v2, v8

    goto :goto_4

    :catch_9
    move-exception v0

    move-object v1, v6

    move/from16 v26, v8

    move-object/from16 v27, v14

    move v14, v9

    :goto_3
    :try_start_9
    invoke-virtual {v10, v14}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    move/from16 v2, v26

    invoke-virtual {v10, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    throw v0

    :catch_a
    move-exception v0

    move-object v1, v6

    move v2, v8

    move-object/from16 v27, v14

    move v14, v9

    :goto_4
    invoke-virtual {v10, v14}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    invoke-virtual {v10, v2}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTransform(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteTunnelInterface(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IpSecService dump:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "alive"

    goto :goto_0

    :cond_0
    const-string v1, "dead"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "mUserResourceTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isNetdAlive()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "Null Binder passed to openUdpEncapsulationSocket"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    iget v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v5}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_2
    :try_start_2
    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v3, v5

    iget-object v5, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    invoke-interface {v5, v3, v0}, Lcom/android/server/IpSecService$UidFdTagger;->tag(Ljava/io/FileDescriptor;I)V

    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    sget v6, Landroid/system/OsConstants;->UDP_ENCAP:I

    sget v7, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    invoke-static {v3, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    iget-object v5, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v5}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Ljava/io/FileDescriptor;I)V

    if-eqz p1, :cond_3

    const-string v5, "IpSecService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v3, v5, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)I

    move-result v5

    move p1, v5

    :goto_1
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v7, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/android/server/IpSecService$EncapSocketRecord;-><init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v6, p0, v7, p2, v9}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v8, v2, p1, v3}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v5

    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseNetId(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized releaseSecurityParameterIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelPermissions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method reserveNetId()I
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x400

    if-ge v2, v3, :cond_2

    :try_start_0
    iget v4, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const v5, 0xfc00

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    if-lt v6, v3, :cond_0

    iput v1, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    :cond_0
    iget-object v3, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds to allocate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IpSecService"

    const-string v1, "IpSecService is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "IpSecService"

    const-string v1, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method validateAlgorithms(Landroid/net/IpSecConfig;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    const-string v6, "No Encryption or Authentication algorithms specified"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/IpSecAlgorithm;->isAuthentication()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    const-string v6, "Unsupported algorithm for Authentication"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->isEncryption()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v3

    :goto_5
    const-string v6, "Unsupported algorithm for Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->isAead()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v5, v4

    goto :goto_7

    :cond_7
    :goto_6
    move v5, v3

    :goto_7
    const-string v6, "Unsupported algorithm for Authenticated Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    move v3, v4

    nop

    :cond_9
    :goto_8
    const-string v4, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method
