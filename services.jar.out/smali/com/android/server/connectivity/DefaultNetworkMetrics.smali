.class public Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "DefaultNetworkMetrics.java"


# static fields
.field private static final ROLLING_LOG_SIZE:I = 0x40


# instance fields
.field public final creationTimeMs:J

.field private mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mEvents:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventsLog:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/DefaultNetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentlyValid:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastTransports:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastValidationTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/DefaultNetworkEvent;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    iget-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->creationTimeMs:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method private static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    iget v1, v1, Landroid/net/Network;->netId:I

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v1, v1

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    or-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    nop

    :cond_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    return-void
.end method

.method private logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    iget v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    if-eqz p3, :cond_1

    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    :cond_1
    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    iput v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method private newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2

    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-direct {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    iput-wide p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    iget-boolean v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    return-void
.end method

.method private static printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 6

    iget-wide v0, p3, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    sub-long v0, p0, v0

    const-string v2, "%tT.%tL: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private updateValidationTime(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    return-void
.end method


# virtual methods
.method public declared-synchronized flushEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEvents(Ljava/io/PrintWriter;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "default network events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-static {v0, v1, p1, v7}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-virtual {v4, v2, v3}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    iget-boolean v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    iput-wide v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    invoke-static {v0, v1, p1, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->printEvent(JLjava/io/PrintWriter;Landroid/net/metrics/DefaultNetworkEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listEventsAsProto(Ljava/io/PrintWriter;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/metrics/DefaultNetworkEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logCurrentDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->newDefaultNetwork(JLcom/android/server/connectivity/NetworkAgentInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logDefaultNetworkValidity(JZ)V
    .locals 1

    monitor-enter p0

    if-nez p3, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->updateValidationTime(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    iput-wide p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method
