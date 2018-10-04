.class public final Landroid/net/nsd/NsdManager;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$ServiceHandler;,
        Landroid/net/nsd/NsdManager$ResolveListener;,
        Landroid/net/nsd/NsdManager$RegistrationListener;,
        Landroid/net/nsd/NsdManager$DiscoveryListener;
    }
.end annotation


# static fields
.field public static final ACTION_NSD_STATE_CHANGED:Ljava/lang/String; = "android.net.nsd.STATE_CHANGED"

.field private static final BASE:I = 0x60000

.field private static final DBG:Z = false

.field public static final DISABLE:I = 0x60019

.field public static final DISCOVER_SERVICES:I = 0x60001

.field public static final DISCOVER_SERVICES_FAILED:I = 0x60003

.field public static final DISCOVER_SERVICES_STARTED:I = 0x60002

.field public static final ENABLE:I = 0x60018

.field private static final EVENT_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NSD_STATE:Ljava/lang/String; = "nsd_state"

.field public static final FAILURE_ALREADY_ACTIVE:I = 0x3

.field public static final FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final FAILURE_MAX_LIMIT:I = 0x4

.field private static final FIRST_LISTENER_KEY:I = 0x1

.field public static final NATIVE_DAEMON_EVENT:I = 0x6001a

.field public static final NSD_STATE_DISABLED:I = 0x1

.field public static final NSD_STATE_ENABLED:I = 0x2

.field public static final PROTOCOL_DNS_SD:I = 0x1

.field public static final REGISTER_SERVICE:I = 0x60009

.field public static final REGISTER_SERVICE_FAILED:I = 0x6000a

.field public static final REGISTER_SERVICE_SUCCEEDED:I = 0x6000b

.field public static final RESOLVE_SERVICE:I = 0x60012

.field public static final RESOLVE_SERVICE_FAILED:I = 0x60013

.field public static final RESOLVE_SERVICE_SUCCEEDED:I = 0x60014

.field public static final SERVICE_FOUND:I = 0x60004

.field public static final SERVICE_LOST:I = 0x60005

.field public static final STOP_DISCOVERY:I = 0x60006

.field public static final STOP_DISCOVERY_FAILED:I = 0x60007

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x60008

.field private static final TAG:Ljava/lang/String;

.field public static final UNREGISTER_SERVICE:I = 0x6000c

.field public static final UNREGISTER_SERVICE_FAILED:I = 0x6000d

.field public static final UNREGISTER_SERVICE_SUCCEEDED:I = 0x6000e


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mConnected:Ljava/util/concurrent/CountDownLatch;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mMapLock:Ljava/lang/Object;

.field private final mService:Landroid/net/nsd/INsdManager;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/net/nsd/NsdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "DISCOVER_SERVICES"

    const v2, 0x60001

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "DISCOVER_SERVICES_STARTED"

    const v2, 0x60002

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "DISCOVER_SERVICES_FAILED"

    const v2, 0x60003

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "SERVICE_FOUND"

    const v2, 0x60004

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "SERVICE_LOST"

    const v2, 0x60005

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "STOP_DISCOVERY"

    const v2, 0x60006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "STOP_DISCOVERY_FAILED"

    const v2, 0x60007

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "STOP_DISCOVERY_SUCCEEDED"

    const v2, 0x60008

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "REGISTER_SERVICE"

    const v2, 0x60009

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "REGISTER_SERVICE_FAILED"

    const v2, 0x6000a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "REGISTER_SERVICE_SUCCEEDED"

    const v2, 0x6000b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "UNREGISTER_SERVICE"

    const v2, 0x6000c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "UNREGISTER_SERVICE_FAILED"

    const v2, 0x6000d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "UNREGISTER_SERVICE_SUCCEEDED"

    const v2, 0x6000e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "RESOLVE_SERVICE"

    const v2, 0x60012

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "RESOLVE_SERVICE_FAILED"

    const v2, 0x60013

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "RESOLVE_SERVICE_SUCCEEDED"

    const v2, 0x60014

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "ENABLE"

    const v2, 0x60018

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "DISABLE"

    const v2, 0x60019

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string v1, "NATIVE_DAEMON_EVENT"

    const v2, 0x6001a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    iput-object p1, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/nsd/NsdManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->removeListener(I)V

    return-void
.end method

.method private static checkListener(Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static checkProtocol(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unsupported protocol"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method private static checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 2

    const-string v0, "NsdServiceInfo cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service name cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service type cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    return-void
.end method

.method private static fatal(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "listener not registered"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMessenger()Landroid/os/Messenger;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v0}, Landroid/net/nsd/INsdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "?"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Failed to obtain service Messenger"

    invoke-static {v1}, Landroid/net/nsd/NsdManager;->fatal(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NsdManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/net/nsd/NsdManager$ServiceHandler;-><init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :try_start_0
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Interrupted wait at init"

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->fatal(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static nameOf(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method private nextListenerKey()I
    .locals 2

    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    return v0
.end method

.method private putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I
    .locals 4

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string/jumbo v3, "listener already in use"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->nextListenerKey()I

    move-result v2

    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeListener(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v0}, Landroid/net/nsd/NsdManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method

.method public discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 5

    const-string v0, "Service type cannot be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v1

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x60001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Invalid port number"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V

    invoke-static {p2}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    invoke-direct {p0, p3, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x60009

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V

    invoke-direct {p0, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v0, p1}, Landroid/net/nsd/INsdManager;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x6000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method
