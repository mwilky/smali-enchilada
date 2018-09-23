.class public Landroid/net/ip/IpClient;
.super Lcom/android/internal/util/StateMachine;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpClient$MessageHandlingLogger;,
        Landroid/net/ip/IpClient$RunningState;,
        Landroid/net/ip/IpClient$StartedState;,
        Landroid/net/ip/IpClient$StoppingState;,
        Landroid/net/ip/IpClient$StoppedState;,
        Landroid/net/ip/IpClient$Dependencies;,
        Landroid/net/ip/IpClient$InitialConfiguration;,
        Landroid/net/ip/IpClient$ProvisioningConfiguration;,
        Landroid/net/ip/IpClient$LoggingCallbackWrapper;,
        Landroid/net/ip/IpClient$WaitForProvisioningCallback;,
        Landroid/net/ip/IpClient$Callback;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final CMD_CONFIRM:I = 0x4

.field private static final CMD_SET_MULTICAST_FILTER:I = 0x9

.field private static final CMD_START:I = 0x3

.field private static final CMD_STOP:I = 0x2

.field private static final CMD_TERMINATE_AFTER_STOP:I = 0x1

.field private static final CMD_UPDATE_HTTP_PROXY:I = 0x8

.field private static final CMD_UPDATE_TCP_BUFFER_SIZES:I = 0x7

.field private static final DBG:Z = false

.field public static final DUMP_ARG:Ljava/lang/String; = "ipclient"

.field public static final DUMP_ARG_CONFIRM:Ljava/lang/String; = "confirm"

.field private static final EVENT_DHCPACTION_TIMEOUT:I = 0xb

.field private static final EVENT_NETLINK_LINKPROPERTIES_CHANGED:I = 0x6

.field private static final EVENT_PRE_DHCP_ACTION_COMPLETE:I = 0x5

.field private static final EVENT_PROVISIONING_TIMEOUT:I = 0xa

.field private static final EVENT_READ_PACKET_FILTER_COMPLETE:I = 0xc

.field private static final IMMEDIATE_FAILURE_DURATION:I = 0x0

.field private static final MAX_LOG_RECORDS:I = 0x1f4

.field private static final MAX_PACKET_RECORDS:I = 0x64

.field private static final NO_CALLBACKS:Z = false

.field private static final SEND_CALLBACKS:Z = true

.field private static final sMessageClasses:[Ljava/lang/Class;

.field private static final sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/net/util/SharedLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

.field private mApfFilter:Landroid/net/apf/ApfFilter;

.field protected final mCallback:Landroid/net/ip/IpClient$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mClatInterfaceName:Ljava/lang/String;

.field private mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

.field private final mConnectivityPacketLog:Landroid/util/LocalLog;

.field private final mContext:Landroid/content/Context;

.field private final mDependencies:Landroid/net/ip/IpClient$Dependencies;

.field private final mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private mDhcpClient:Landroid/net/dhcp/DhcpClient;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private final mInterfaceCtrl:Landroid/net/ip/InterfaceController;

.field private final mInterfaceName:Ljava/lang/String;

.field private mInterfaceParams:Landroid/net/util/InterfaceParams;

.field private mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

.field private mMulticastFiltering:Z

.field private mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field private final mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

.field private final mNwService:Landroid/os/INetworkManagementService;

.field private final mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field private final mRunningState:Lcom/android/internal/util/State;

.field private final mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mStartTimeMillis:J

.field private final mStartedState:Lcom/android/internal/util/State;

.field private final mStoppedState:Lcom/android/internal/util/State;

.field private final mStoppingState:Lcom/android/internal/util/State;

.field private final mTag:Ljava/lang/String;

.field private mTcpBufferSizes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/net/ip/IpClient;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/net/dhcp/DhcpClient;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/ip/IpClient;->sMessageClasses:[Ljava/lang/Class;

    sget-object v0, Landroid/net/ip/IpClient;->sMessageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ip/IpClient;->sWhatToString:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)V
    .locals 1

    new-instance v0, Landroid/net/ip/IpClient$Dependencies;

    invoke-direct {v0}, Landroid/net/ip/IpClient$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/net/ip/IpClient$StoppedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StoppedState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/ip/IpClient$StoppingState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StoppingState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/ip/IpClient$StartedState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$StartedState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/ip/IpClient$RunningState;

    invoke-direct {v0, p0}, Landroid/net/ip/IpClient$RunningState;-><init>(Landroid/net/ip/IpClient;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    new-instance v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v0}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "v4-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mClatInterfaceName:Ljava/lang/String;

    new-instance v0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;

    invoke-direct {v0, p0, p3}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;-><init>(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    iput-object p4, p0, Landroid/net/ip/IpClient;->mDependencies:Landroid/net/ip/IpClient$Dependencies;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p4}, Landroid/net/ip/IpClient$Dependencies;->getNMS()Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/util/SharedLog;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    const/16 v4, 0x1f4

    invoke-direct {v2, v4, v3}, Landroid/net/util/SharedLog;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/util/SharedLog;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    sget-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/util/LocalLog;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    new-instance v0, Landroid/net/ip/IpClient$MessageHandlingLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;-><init>(Landroid/net/ip/IpClient$1;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    new-instance v0, Landroid/net/ip/InterfaceController;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    invoke-virtual {p4}, Landroid/net/ip/IpClient$Dependencies;->getNetd()Landroid/net/INetd;

    move-result-object v3

    iget-object v4, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/ip/InterfaceController;-><init>(Ljava/lang/String;Landroid/os/INetworkManagementService;Landroid/net/INetd;Landroid/net/util/SharedLog;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    new-instance v0, Landroid/net/ip/IpClient$3;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v2, Landroid/net/ip/IpClient$2;

    invoke-direct {v2, p0}, Landroid/net/ip/IpClient$2;-><init>(Landroid/net/ip/IpClient;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/net/ip/IpClient$3;-><init>(Landroid/net/ip/IpClient;Ljava/lang/String;Lcom/android/server/net/NetlinkTracker$Callback;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".EVENT_PROVISIONING_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".EVENT_DHCPACTION_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-direct {p0}, Landroid/net/ip/IpClient;->configureAndStartStateMachine()V

    invoke-direct {p0}, Landroid/net/ip/IpClient;->startStateMachineUpdaters()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/os/INetworkManagementService;)V
    .locals 1

    new-instance v0, Landroid/net/ip/IpClient$1;

    invoke-direct {v0, p4}, Landroid/net/ip/IpClient$1;-><init>(Landroid/os/INetworkManagementService;)V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;Landroid/net/ip/IpClient$Dependencies;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$ProvisioningConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/IpClient;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->handleLinkPropertiesUpdate(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/ip/IpClient;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/ip/IpClient;->mMulticastFiltering:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/net/ip/IpClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/ip/IpClient;->mMulticastFiltering:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mClatInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/ip/IpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleProvisioningFailure()V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/ip/IpClient;)Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/ip/IpClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/ip/IpClient;)Landroid/net/apf/ApfFilter;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/net/ip/IpClient;Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfFilter;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/net/ip/IpClient;)Landroid/net/util/InterfaceParams;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/ip/IpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIPv6()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/ip/IpClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/ip/IpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIPv4()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->applyInitialConfig(Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/net/ip/IpClient;)Landroid/net/util/MultinetworkPolicyTracker;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/net/ip/IpClient;Landroid/net/util/MultinetworkPolicyTracker;)Landroid/net/util/MultinetworkPolicyTracker;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    return-object p1
.end method

.method static synthetic access$3400(Landroid/net/ip/IpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpClient;->startIpReachabilityMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/net/ip/IpClient;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/net/ip/IpClient;Landroid/net/ip/IpReachabilityMonitor;)Landroid/net/ip/IpReachabilityMonitor;
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/net/ip/IpClient;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/ip/IpClient;)Lcom/android/internal/util/WakeupMessage;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpActionTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/ip/IpClient;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/ip/IpClient;Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/ip/IpClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/ip/IpClient;Landroid/net/DhcpResults;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->handleIPv4Success(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/ip/IpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleIPv4Failure()V

    return-void
.end method

.method static synthetic access$500(Landroid/net/ip/IpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpClient;->stopAllIP()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/ip/IpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpClient;->resetLinkProperties()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/ip/IpClient;)J
    .locals 2

    iget-wide v0, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$702(Landroid/net/ip/IpClient;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$800(Landroid/net/ip/IpClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->recordMetric(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ip/IpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IpClient;->stopStateMachineUpdaters()V

    return-void
.end method

.method private static addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->isReachable(Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method static all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/ip/IpClient;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/ip/IpClient;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method private applyInitialConfig(Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .locals 3

    iget-object v0, p1, Landroid/net/ip/IpClient$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v1, Landroid/net/ip/-$$Lambda$IpClient$GdLECAc1sQEo2Jjde3Y4ykVjDBg;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$GdLECAc1sQEo2Jjde3Y4ykVjDBg;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v2, v1}, Landroid/net/ip/InterfaceController;->addAddress(Landroid/net/LinkAddress;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private assembleLinkProperties()Landroid/net/LinkProperties;
    .locals 8

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v1}, Lcom/android/server/net/NetlinkTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/DhcpResults;->getRoutes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    invoke-virtual {v0, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, v2, Landroid/net/DhcpResults;->dnsServers:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, v2, Landroid/net/DhcpResults;->domains:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget v2, v2, Landroid/net/DhcpResults;->mtu:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget v2, v2, Landroid/net/DhcpResults;->mtu:I

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setMtu(I)V

    :cond_2
    iget-object v2, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    :cond_4
    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/ip/IpClient$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/net/ip/IpClient$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    new-instance v6, Landroid/net/RouteInfo;

    iget-object v7, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v6, v5, v4, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_2

    :cond_5
    iget-object v3, v2, Landroid/net/ip/IpClient$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v0, v3}, Landroid/net/ip/IpClient;->addAllReachableDnsServers(Landroid/net/LinkProperties;Ljava/lang/Iterable;)V

    :cond_6
    iget-object v2, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;
    .locals 1

    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method

.method private compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 10

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mInitialConfig:Landroid/net/ip/IpClient$InitialConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/net/ip/IpClient;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v1

    invoke-static {p2, v0}, Landroid/net/ip/IpClient;->isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z

    move-result v2

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :goto_1
    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->STILL_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :goto_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v6

    goto :goto_4

    :cond_5
    move v7, v5

    :goto_4
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v6

    goto :goto_5

    :cond_6
    move v8, v5

    :goto_5
    iget-object v9, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    if-eqz v9, :cond_7

    move v5, v6

    nop

    :cond_7
    if-nez v7, :cond_8

    if-eqz v4, :cond_9

    if-nez v5, :cond_9

    :cond_8
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :cond_9
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    if-nez v5, :cond_a

    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :cond_a
    return-object v3
.end method

.method private configureAndStartStateMachine()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mRunningState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->setInitialState(Lcom/android/internal/util/State;)V

    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method private dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V
    .locals 2

    sget-object v0, Landroid/net/ip/IpClient$5;->$SwitchMap$android$net$LinkProperties$ProvisioningChange:[I

    invoke-virtual {p1}, Landroid/net/LinkProperties$ProvisioningChange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->recordMetric(I)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->recordMetric(I)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p2}, Landroid/net/ip/IpClient$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doImmediateProvisioningFailure(I)V
    .locals 4

    const-string/jumbo v0, "onProvisioningFailure(): %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient;->recordMetric(I)V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public static dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    sget-object v0, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "--- BEGIN %s ---"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Landroid/net/ip/IpClient;->sSmLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/util/SharedLog;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v6, "State machine log:"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v4, p0, v4}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    const-string v6, ""

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v6, Landroid/net/ip/IpClient;->sPktLogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/LocalLog;

    if-eqz v6, :cond_2

    const-string v7, "Connectivity packet log:"

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v7

    invoke-virtual {v7, v4, p0, v4}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    const-string v4, "--- END %s ---"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static find(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static findAll(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private handleIPv4Failure()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v1, v0}, Landroid/net/ip/IpClient$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    invoke-direct {p0}, Landroid/net/ip/IpClient;->handleProvisioningFailure()V

    return-void
.end method

.method private handleIPv4Success(Landroid/net/DhcpResults;)V
    .locals 3

    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0, p1}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v2, p1}, Landroid/net/ip/IpClient$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    return-void
.end method

.method private handleLinkPropertiesUpdate(Z)Z
    .locals 4

    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    :cond_1
    sget-object v3, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private handleProvisioningFailure()V
    .locals 3

    invoke-direct {p0}, Landroid/net/ip/IpClient;->assembleLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v1

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->STILL_NOT_PROVISIONED:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    :cond_0
    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClient;->dispatchCallback(Landroid/net/LinkProperties$ProvisioningChange;Landroid/net/LinkProperties;)V

    sget-object v2, Landroid/net/LinkProperties$ProvisioningChange;->LOST_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Landroid/net/ip/IpClient;->mStoppingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    return-void
.end method

.method static isProvisioned(Landroid/net/LinkProperties;Landroid/net/ip/IpClient$InitialConfiguration;)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/ip/IpClient$InitialConfiguration;->isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;->INSTANCE:Landroid/net/ip/-$$Lambda$IpClient$JsVbJ5mpbRjwJuW_A3bDJMqYpF0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic lambda$GdLECAc1sQEo2Jjde3Y4ykVjDBg(Landroid/net/LinkAddress;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$JsVbJ5mpbRjwJuW_A3bDJMqYpF0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$not$0(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;

    invoke-direct {v0, p0}, Landroid/net/ip/-$$Lambda$IpClient$avmS8r0wlmaRuIXDbDPiQFTUPlA;-><init>(Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method private recordMetric(I)V
    .locals 5

    iget-wide v0, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/ip/IpClient;->mStartTimeMillis:J

    sub-long v2, v0, v2

    nop

    :cond_0
    move-wide v0, v2

    iget-object v2, p0, Landroid/net/ip/IpClient;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    new-instance v4, Landroid/net/metrics/IpManagerEvent;

    invoke-direct {v4, p1, v0, v1}, Landroid/net/metrics/IpManagerEvent;-><init>(IJ)V

    invoke-virtual {v2, v3, v4}, Landroid/net/metrics/IpConnectivityLog;->log(Ljava/lang/String;Landroid/os/Parcelable;)Z

    return-void
.end method

.method private resetLinkProperties()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-virtual {v0}, Lcom/android/server/net/NetlinkTracker;->clearLinkProperties()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpResults:Landroid/net/DhcpResults;

    const-string v1, ""

    iput-object v1, p0, Landroid/net/ip/IpClient;->mTcpBufferSizes:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ip/IpClient;->mHttpProxy:Landroid/net/ProxyInfo;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    return-void
.end method

.method private setLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;
    .locals 2

    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    invoke-virtual {v0, p1}, Landroid/net/apf/ApfFilter;->setLinkProperties(Landroid/net/LinkProperties;)V

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpReachabilityMonitor;->updateLinkProperties(Landroid/net/LinkProperties;)V

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p1}, Landroid/net/ip/IpClient;->compareProvisioning(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Landroid/net/LinkProperties$ProvisioningChange;

    move-result-object v0

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, p0, Landroid/net/ip/IpClient;->mLinkProperties:Landroid/net/LinkProperties;

    sget-object v1, Landroid/net/LinkProperties$ProvisioningChange;->GAINED_PROVISIONING:Landroid/net/LinkProperties$ProvisioningChange;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/net/ip/IpClient;->mProvisioningTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    :cond_2
    return-object v0
.end method

.method private startIPv4()Z
    .locals 4

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v1, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Landroid/net/ip/InterfaceController;->setIPv4Address(Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v1, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->handleIPv4Success(Landroid/net/DhcpResults;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-static {v0, p0, v1}, Landroid/net/dhcp/DhcpClient;->makeDhcpClient(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/InterfaceParams;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->registerForPreDhcpNotification()V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRapidCommit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v0, v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDiscoverSent:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    const v1, 0x3000a

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mRapidCommit:Z

    iget-object v3, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-boolean v3, v3, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mDiscoverSent:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/dhcp/DhcpClient;->sendMessage(III)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private startIPv6()Z
    .locals 3

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/InterfaceController;->setIPv6PrivacyExtensions(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget v2, v2, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v0, v2}, Landroid/net/ip/InterfaceController;->setIPv6AddrGenModeIfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->enableIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startIpReachabilityMonitor()Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v9, Landroid/net/ip/IpReachabilityMonitor;

    iget-object v3, p0, Landroid/net/ip/IpClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Landroid/net/ip/IpClient$4;

    invoke-direct {v7, p0}, Landroid/net/ip/IpClient$4;-><init>(Landroid/net/ip/IpClient;)V

    iget-object v8, p0, Landroid/net/ip/IpClient;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/net/ip/IpReachabilityMonitor;-><init>(Landroid/content/Context;Landroid/net/util/InterfaceParams;Landroid/os/Handler;Landroid/net/util/SharedLog;Landroid/net/ip/IpReachabilityMonitor$Callback;Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v9, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "IpReachabilityMonitor failure: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-direct {p0, v3, v4}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    :goto_0
    iget-object v2, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0
.end method

.method private startStateMachineUpdaters()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t register NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private stopAllIP()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->disableIPv6()Z

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceCtrl:Landroid/net/ip/InterfaceController;

    invoke-virtual {v0}, Landroid/net/ip/InterfaceController;->clearAllAddresses()Z

    return-void
.end method

.method private stopStateMachineUpdaters()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mNetlinkTracker:Lcom/android/server/net/NetlinkTracker;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Couldn\'t unregister NetlinkTracker: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public awaitShutdown()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while awaiting shutdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mDhcpClient:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->buildDiscoverWithRapidCommitPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public completedPreDhcpAction()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    return-void
.end method

.method public confirmConfiguration()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    const-string v0, "confirm"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->confirmConfiguration()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mApfFilter:Landroid/net/apf/ApfFilter;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mConfiguration:Landroid/net/ip/IpClient$ProvisioningConfiguration;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " APF dump:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/net/apf/ApfCapabilities;->hasDataAccess()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v4}, Landroid/net/ip/IpClient$Callback;->startReadPacketFilter()V

    iget-object v4, p0, Landroid/net/ip/IpClient;->mApfDataSnapshotComplete:Landroid/os/ConditionVariable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "TIMEOUT: DUMPING STALE APF SNAPSHOT"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v3}, Landroid/net/apf/ApfFilter;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_2

    :cond_3
    const-string v4, "No active ApfFilter; "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string v4, "IpClient not yet started."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_6

    iget v4, v2, Landroid/net/apf/ApfCapabilities;->apfVersionSupported:I

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApfFilter not yet started, APF capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v4, "Hardware does not support APF."

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " current ProvisioningConfiguration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "N/A"

    invoke-static {v1, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, p0, Landroid/net/ip/IpClient;->mIpReachabilityMonitor:Landroid/net/ip/IpReachabilityMonitor;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " current IpReachabilityMonitor state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v4, v3}, Landroid/net/ip/IpReachabilityMonitor;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " StateMachine dump:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v5, p1, v3, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/net/ip/IpClient;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " connectivity packet log:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v5, "Debug with python and scapy via:"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "shell$ python"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, ">>> from scapy import all as scapy"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v5, ">>> scapy.Ether(\"<paste_hex_string>\".decode(\"hex\")).show2()"

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, p0, Landroid/net/ip/IpClient;->mConnectivityPacketLog:Landroid/util/LocalLog;

    invoke-virtual {v5}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v5

    invoke-virtual {v5, p1, v3, p3}, Landroid/util/LocalLog$ReadOnlyLocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s/%d %d %d %s [%s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget v2, v2, Landroid/net/util/InterfaceParams;->index:I

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/net/ip/IpClient;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    invoke-virtual {v2}, Landroid/net/ip/IpClient$MessageHandlingLogger;->reset()V

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/net/ip/IpClient;->sWhatToString:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected onQuitting()V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onQuit()V

    iget-object v0, p0, Landroid/net/ip/IpClient;->mShutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public readPacketFilterComplete([B)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/net/ip/IpClient;->mMsgStateLogger:Landroid/net/ip/IpClient$MessageHandlingLogger;

    invoke-virtual {v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->reset()V

    :cond_1
    return v0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setMulticastFilter(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    invoke-virtual {p0}, Landroid/net/ip/IpClient;->stop()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    return-void
.end method

.method public startProvisioning()V
    .locals 1

    new-instance v0, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-void
.end method

.method public startProvisioning(Landroid/net/StaticIpConfiguration;)V
    .locals 1

    invoke-static {}, Landroid/net/ip/IpClient;->buildProvisioningConfiguration()Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpClient$ProvisioningConfiguration$Builder;->build()Landroid/net/ip/IpClient$ProvisioningConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-void
.end method

.method public startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient;->mDependencies:Landroid/net/ip/IpClient$Dependencies;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Dependencies;->getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    iget-object v0, p0, Landroid/net/ip/IpClient;->mInterfaceParams:Landroid/net/util/InterfaceParams;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find InterfaceParams for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpClient;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/net/ip/IpClient;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient;->doImmediateProvisioningFailure(I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/net/ip/IpClient;->mCallback:Landroid/net/ip/IpClient$Callback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient$Callback;->setNeighborDiscoveryOffload(Z)V

    const/4 v0, 0x3

    new-instance v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-direct {v1, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/IpClient;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClient;->sendMessage(I)V

    return-void
.end method
