.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x30

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0x493e0L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastSnapshot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/net/INetdEventCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .locals 3

    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    if-nez v1, :cond_0

    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    return-void
.end method

.method private collectPendingMetricsSnapshot(J)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    if-nez v0, :cond_0

    new-instance v1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v1, p3, v2, v3, v4}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getTransports(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static isValidCallerType(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static projectSnapshotTime(J)J
    .locals 4

    const-wide/32 v0, 0x493e0

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    iget v3, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    iget v3, v2, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    nop

    :goto_4
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "network statistics:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "packet wakeup events:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/WakeupEvent;

    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos(Ljava/io/PrintWriter;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v4, v10, v11, v12}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v14, v13

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    if-ge v15, v14, :cond_1

    aget-object v4, v13, v15

    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v4, v16

    move-object v5, v12

    move/from16 v6, p5

    move-wide v7, v2

    move/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual {v4, v11, v12, v13}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    iget-object v14, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v15, v14

    const/4 v4, 0x0

    move v10, v4

    :goto_0
    if-ge v10, v15, :cond_1

    aget-object v4, v14, v10

    move-object/from16 v16, v4

    if-eqz v16, :cond_0

    move-object/from16 v4, v16

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide v8, v2

    move/from16 v17, v10

    move/from16 v10, p8

    invoke-interface/range {v4 .. v10}, Landroid/net/INetdEventCallback;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    move/from16 v17, v10

    :goto_1
    add-int/lit8 v10, v17, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 9

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget v3, p1, v2

    aget v4, p2, v2

    aget v5, p3, v2

    aget v6, p4, v2

    aget v7, p5, v2

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "iface:"

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_0

    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    move-wide v12, v4

    new-instance v2, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v2}, Landroid/net/metrics/WakeupEvent;-><init>()V

    iput-object v0, v2, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    iput-wide v12, v2, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    move/from16 v11, p2

    iput v11, v2, Landroid/net/metrics/WakeupEvent;->uid:I

    move/from16 v10, p3

    iput v10, v2, Landroid/net/metrics/WakeupEvent;->ethertype:I

    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    move-object/from16 v9, p6

    iput-object v9, v2, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    move-object/from16 v7, p7

    iput-object v7, v2, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    move/from16 v6, p4

    iput v6, v2, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    move/from16 v5, p8

    iput v5, v2, Landroid/net/metrics/WakeupEvent;->srcPort:I

    move/from16 v4, p9

    iput v4, v2, Landroid/net/metrics/WakeupEvent;->dstPort:I

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    iget-object v8, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v8}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x2c

    move v4, v14

    move v5, v11

    move-object v6, v0

    move v7, v10

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p4

    move-wide v14, v12

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
