.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"

.field private static final GROUP_NAME:Ljava/lang/String; = "com.android.server.connectivity.tethering"

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field private static final VDBG:Z = false

.field private static mProject:Ljava/lang/String;

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
.field private mBluetoothTethered:Z

.field private mCallerPkg:Ljava/lang/String;

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private mConnectedClients:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mUsbTethered:Z

.field private mWifiTetherRequested:Z

.field private mWifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    new-instance v2, Landroid/net/util/SharedLog;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    iput v2, v0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "constructed"

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    new-instance v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v10, "TetherMaster"

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v9, v0, v10, v11, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v9}, Lcom/android/internal/util/StateMachine;->start()V

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v9}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v15, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v10, v9, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v12

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v10, v15

    move-object/from16 v16, v11

    move-object v11, v9

    move-object v2, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v12, 0x50005

    invoke-virtual {v1, v2, v10, v11, v12}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    const-string v11, "CarrierConfigChangeListener"

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$5JkghhOVq1MW7iK03DMZUSuLdFM;-><init>(Lcom/android/server/connectivity/Tethering;)V

    move-object v10, v15

    move-object v13, v9

    move-object/from16 v16, v14

    move-object v14, v2

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    new-instance v1, Lcom/android/server/connectivity/tethering/SimChangeListener;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;

    invoke-direct {v11, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$G9TtPVJE34-mHCiIrkFoFBxZRf8;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-direct {v1, v10, v9, v11}, Lcom/android/server/connectivity/tethering/SimChangeListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeUpdateConfiguration()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/SimChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mSimChange:Lcom/android/server/connectivity/tethering/SimChangeListener;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    return v3
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    return-void

    :cond_0
    nop

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->unwanted()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "no interface name specified"

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Invalid tether type."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    :cond_1
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(Z)I

    move-result v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    :cond_2
    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    nop

    :goto_0
    nop

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getIPv4DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIPv6DefaultRouteInterface(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_1
    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    return v1

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/connectivity/Tethering;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->reevaluateSimCardProvisioning()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/connectivity/Tethering;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED SIM card change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

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

.method private makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/Tethering$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v10, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->makeControlCallback(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/IControlsTethering;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    move-object v1, v10

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Lcom/android/server/connectivity/tethering/IControlsTethering;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    invoke-direct {v0, v10}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->start()V

    return-void
.end method

.method private maybeUpdateConfiguration()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dunCheck:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method private notifyInterfaceStateChange(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput p3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    iput p4, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED iface=%s state=%s error=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-interface {v0, p1, v5}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x5

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x50006

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    packed-switch p3, :pswitch_data_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const v0, 0x50001

    goto :goto_2

    :pswitch_1
    const v0, 0x50002

    nop

    :goto_2
    nop

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0, p3, v3, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifyLinkPropertiesChanged(Ljava/lang/String;Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    nop

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IControlsTethering;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const v0, 0x50007

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50007

    invoke-virtual {v1, v3, v2, v4, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got notification from stale iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reevaluateSimCardProvisioning()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->startProvisionIntent(I)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    nop

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v9, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    :cond_6
    :goto_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x24000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "availableArray"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v6, "localOnlyArray"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v6, "tetherArray"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v6, "erroredArray"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    const/16 v7, 0xe

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_b
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_c

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    const/16 v6, 0x4e20

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_d
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_e

    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    :goto_4
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method private setWifiTethering(Z)I
    .locals 6

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v4

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private showTetheredNotification(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    return-void
.end method

.method private startProvisionIntent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method private startStateMachineUpdaters()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v2

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    :cond_0
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->stop()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50066

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p2, v5, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tetherMatchingInterfaces(II)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateConfiguration()V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    return-void
.end method

.method private upstreamWanted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v1, "filemanager enable tether, ignore upstreamWanted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected clearTetheredNotification()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    packed-switch v6, :pswitch_data_0

    const-string v6, "UnknownState"

    goto :goto_1

    :pswitch_0
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    move v2, v3

    nop

    :cond_2
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isTetherProvisioningRequired()Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v2, "net.tethering.noprovisioning"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->carrierConfigAffirmsEntitlementCheckNotRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x20

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public showSoftApClientsNotification(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e20

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    :goto_1
    return-void
.end method

.method protected showTetheredNotification(IZ)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x4e20

    if-eq v2, v5, :cond_1

    packed-switch v2, :pswitch_data_0

    const v4, 0x10807da

    :goto_0
    move v5, v0

    goto :goto_1

    :pswitch_0
    const v4, 0x10807d9

    goto :goto_0

    :pswitch_1
    const v4, 0x10807db

    goto :goto_0

    :cond_1
    const v4, 0x10807dc

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const/4 v6, 0x0

    const v7, 0x10807dc

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, v4, :cond_2

    if-eq v4, v7, :cond_2

    return-void

    :cond_2
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v6, v0, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v8, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    const-string v0, "com.android.settings"

    const-string v9, "com.android.settings.TetherSettings"

    invoke-virtual {v15, v0, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v11, v15

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    const/16 v12, 0xe

    if-ne v2, v12, :cond_4

    const v12, 0x50c004d

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_2

    :cond_4
    const v12, 0x104067b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_2
    if-ne v4, v7, :cond_7

    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-nez v7, :cond_5

    const v7, 0x1040679

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_5
    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-ne v7, v0, :cond_6

    const v7, 0x104067a

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    const v7, 0x1040678

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v8

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    const v7, 0x1040677

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_3
    goto :goto_4

    :cond_8
    const v7, 0x10401d1

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const v7, 0x10401d0

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_4
    sget-object v13, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/server/connectivity/Tethering;->mProject:Ljava/lang/String;

    const-string v14, "18811"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0xf

    if-eq v2, v13, :cond_9

    const v4, 0x506000b

    :cond_9
    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v6, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v6, :cond_a

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-direct {v6, v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v10

    const-wide/16 v10, 0x0

    :try_start_1
    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v8, 0x1060157

    invoke-virtual {v6, v8}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v8, "status"

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_a
    move v6, v0

    move-object/from16 v16, v10

    :goto_5
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v8, "com.android.server.connectivity.tethering"

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "hide_icon"

    if-nez v5, :cond_b

    goto :goto_6

    :cond_b
    move v6, v8

    :goto_6
    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v6, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetheredNotificationBuilder build e:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_c

    iput v4, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v0, v13, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v16, v10

    :goto_8
    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTethering caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    :goto_1
    return-void
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->stateMachine:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(I)V

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    return-void
.end method
