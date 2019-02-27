.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KB_IN_BYTES:J = 0x400L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOOPBACK_IFACE:Ljava/lang/String; = "lo"

.field public static final MB_IN_BYTES:J = 0x100000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PB_IN_BYTES:J = 0x4000000000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_SYSTEM_APP:I = -0xfb

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DHCP:I = -0xc0

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_GPS:I = -0xbc

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field public static final TAG_SYSTEM_NEIGHBOR:I = -0xbd

.field public static final TAG_SYSTEM_NTP:I = -0xbf

.field public static final TAG_SYSTEM_PAC:I = -0xbb

.field public static final TAG_SYSTEM_PROBE:I = -0xbe

.field public static final TAG_SYSTEM_RESTORE:I = -0xfc

.field public static final TB_IN_BYTES:J = 0x10000000000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIfSupported(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    :goto_0
    return-wide v0
.end method

.method public static clearThreadStatsTag()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)I

    return-void
.end method

.method public static clearThreadStatsUid()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)I

    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static getAndSetThreadStatsTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)I

    move-result v0

    return v0
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getLoopbackRxBytes()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const-string/jumbo v1, "lo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getLoopbackRxPackets()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const-string/jumbo v1, "lo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getLoopbackTxBytes()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const-string/jumbo v1, "lo"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getLoopbackTxPackets()J
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const-string/jumbo v1, "lo"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;

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

.method public static getMobileRxBytes()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getMobileRxPackets()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getMobileTcpRxPackets()J
    .locals 10

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-wide/16 v6, -0x1

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {v8, v5, v9}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v8

    nop

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v8

    add-long/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    return-wide v0
.end method

.method public static getMobileTcpTxPackets()J
    .locals 10

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-wide/16 v6, -0x1

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v5, v9}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v8

    nop

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v8

    add-long/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    return-wide v0
.end method

.method public static getMobileTxBytes()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getMobileTxPackets()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/net/TrafficStats;->addIfSupported(J)J

    move-result-wide v6

    add-long/2addr v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .locals 2

    const-class v0, Landroid/net/TrafficStats;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    sput-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    :cond_0
    sget-object v1, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getThreadStatsTag()I
    .locals 1

    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getThreadStatsUid()I
    .locals 1

    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsUid()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getTotalStats(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getTotalRxPackets()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getTotalStats(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getTotalTxBytes()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getTotalStats(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getTotalTxPackets()J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/net/INetworkStatsService;->getTotalStats(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Landroid/net/INetworkStatsService;->getIfaceStats(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getUidRxBytes(I)J
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/net/INetworkStatsService;->getUidStats(II)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getUidRxPackets(I)J
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/net/INetworkStatsService;->getUidStats(II)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getUidTcpRxBytes(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpRxSegments(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxBytes(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTcpTxSegments(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidTxBytes(I)J
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2}, Landroid/net/INetworkStatsService;->getUidStats(II)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getUidTxPackets(I)J
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2}, Landroid/net/INetworkStatsService;->getUidStats(II)J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getUidUdpRxBytes(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpRxPackets(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxBytes(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getUidUdpTxPackets(I)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static incrementOperationCount(I)V
    .locals 1

    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1, v0, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static setThreadStatsTag(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)I

    return-void
.end method

.method public static setThreadStatsTagApp()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/16 v0, -0xfb

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsTagBackup()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/16 v0, -0xfd

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsTagRestore()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/16 v0, -0xfc

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsUid(I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)I

    return-void
.end method

.method public static setThreadStatsUidSelf()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    sput-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .locals 4

    sget-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v2

    sput-object v3, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not profiling data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static tagFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static untagFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    return-void
.end method
