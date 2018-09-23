.class public Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;,
        Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;
    }
.end annotation


# static fields
.field private static final BASE_IFACE:I = 0x50064

.field public static final CMD_INTERFACE_DOWN:I = 0x50068

.field public static final CMD_IPV6_TETHER_UPDATE:I = 0x50071

.field public static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x5006c

.field public static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x5006b

.field public static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0x5006f

.field public static final CMD_START_TETHERING_ERROR:I = 0x5006d

.field public static final CMD_STOP_TETHERING_ERROR:I = 0x5006e

.field public static final CMD_TETHER_CONNECTION_CHANGED:I = 0x50070

.field public static final CMD_TETHER_REQUESTED:I = 0x50066

.field public static final CMD_TETHER_UNREQUESTED:I = 0x50067

.field private static final DBG:Z = false

.field private static final DOUG_ADAMS:B = 0x2at

.field private static final LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

.field private static final TAG:Ljava/lang/String; = "TetherInterfaceSM"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final WIFI_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.43.1"

.field private static final WIFI_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final WIGIG_HOST_IFACE_ADDR:Ljava/lang/String; = "192.168.50.1"

.field private static final WIGIG_HOST_IFACE_PREFIX_LENGTH:I = 0x18

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallerPkg:Ljava/lang/String;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mIfaceName:Ljava/lang/String;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private final mInterfaceType:I

.field private mLastError:I

.field private mLastIPv6LinkProperties:Landroid/net/LinkProperties;

.field private mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

.field private final mLinkProperties:Landroid/net/LinkProperties;

.field private final mLocalHotspotState:Lcom/android/internal/util/State;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

.field private mServingMode:I

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

.field private final mTetheredState:Lcom/android/internal/util/State;

.field private final mUnavailableState:Lcom/android/internal/util/State;

.field private mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/IpPrefix;

    const-string v1, "fe80::/64"

    invoke-direct {v0, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    invoke-virtual {p4, p1}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    invoke-virtual {p8}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getNetdService()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    iput-object p6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    new-instance v0, Landroid/net/ip/InterfaceController;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, p1, p5, v1, v2}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iput-object p8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$InitialState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$UnavailableState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendInterfaceState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv4()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mCallerPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLocalHotspotState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mUnavailableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->startIPv4()Z

    move-result v0

    return v0
.end method

.method private configureIPv4(Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v0, "192.168.42.129"

    const/16 v1, 0x18

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mCallerPkg:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mCallerPkg:Ljava/lang/String;

    const-string v4, "com.oneplus.filemanager"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "192.168.43.1"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomWifiIPv4Address()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x18

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    const-string v0, "192.168.50.1"

    const/16 v1, 0x18

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v5, "Received null interface config"

    invoke-virtual {v3, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    new-instance v6, Landroid/net/LinkAddress;

    invoke-direct {v6, v5, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v6}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    if-nez v7, :cond_4

    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->ignoreInterfaceUpDownStatus()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    :goto_2
    const-string/jumbo v7, "running"

    invoke-virtual {v4, v7}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v7, v8, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;)V

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v6}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    :goto_3
    return v3

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error configuring interface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v2

    :cond_7
    return v3
.end method

.method private configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "No netd service instance available; not setting local IPv6 addresses"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/16 v1, 0x40

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v3, v2, v1}, Landroid/net/ip/InterfaceController;->removeAddress(Ljava/net/InetAddress;I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove local dns IP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->removeLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet6Address;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v4, v3, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add local dns IP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v3, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_1

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNetd:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherApplyDnsInterfaces()Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to update local DNS caching server"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    :cond_7
    :goto_2
    return-void
.end method

.method private configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->removeRoutesFromLocalNetwork(Ljava/util/List;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Failed to remove %d IPv6 routes from local table."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove IPv6 routes from local table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v1, v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->LINK_LOCAL_PREFIX:Landroid/net/IpPrefix;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add IPv6 routes to local table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method private static getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;
    .locals 6

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    invoke-static {v2}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v2

    const/16 v2, 0x2a

    invoke-static {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomSanitizedByte(B[B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "TetherInterfaceSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to construct Inet6Address from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getLocalRoutesFor(Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    new-instance v3, Landroid/net/RouteInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, p0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs getRandomSanitizedByte(B[B)B
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    if-ne v0, v3, :cond_0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getRandomWifiIPv4Address()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "192.168.43.1"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/16 v1, 0x2a

    const/4 v2, 0x3

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    sget-byte v5, Landroid/net/util/NetworkConstants;->FF:B

    aput-byte v5, v3, v4

    invoke-static {v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getRandomSanitizedByte(B[B)B

    move-result v1

    aput-byte v1, v0, v2

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "192.168.43.1"

    return-object v1
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private sendInterfaceState(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    iget v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateInterfaceState(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendLinkProperties()V

    return-void
.end method

.method private sendLinkProperties()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mTetherController:Lcom/android/server/connectivity/tethering/IControlsTethering;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/connectivity/tethering/IControlsTethering;->updateLinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-static {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->getDeprecatedRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    move-result-object v0

    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Routes(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    nop

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureLocalIPv6Dns(Ljava/util/HashSet;Ljava/util/HashSet;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1, v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    :cond_2
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    return-void
.end method

.method private startIPv4()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    move-result v0

    return v0
.end method

.method private startIPv6()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLog:Landroid/net/util/SharedLog;

    const-string v2, "Failed to find InterfaceParams"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->start()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stopIPv6()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private stopIPv4()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->configureIPv4(Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    return-void
.end method

.method private stopIPv6()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->stop()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    :cond_0
    return-void
.end method

.method private updateUpstreamIPv6LinkProperties(Landroid/net/LinkProperties;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mRaDaemon:Landroid/net/ip/RouterAdvertisementDaemon;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    invoke-direct {v1}, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;-><init>()V

    move-object v0, v1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    const/16 v4, 0x40

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    iget-object v4, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->getLocalDnsIpFor(Landroid/net/IpPrefix;)Ljava/net/Inet6Address;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->setRaParams(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastIPv6LinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public interfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public interfaceType()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mInterfaceType:I

    return v0
.end method

.method public lastError()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLastError:I

    return v0
.end method

.method public linkProperties()Landroid/net/LinkProperties;
    .locals 2

    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public servingMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->mServingMode:I

    return v0
.end method

.method public stop()V
    .locals 1

    const v0, 0x50068

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method

.method public unwanted()V
    .locals 1

    const v0, 0x50067

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    return-void
.end method
