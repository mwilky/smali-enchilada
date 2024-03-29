.class public Lcom/android/server/backup/transport/TransportStats;
.super Ljava/lang/Object;
.source "TransportStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportStats$Stats;
    }
.end annotation


# instance fields
.field private final mStatsLock:Ljava/lang/Object;

.field private final mTransportStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/transport/TransportStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    return-void
.end method

.method private static dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V
    .locals 9

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%sAverage connection time: %.2f ms"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-wide v5, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%sMax connection time: %d ms"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-wide v7, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%sMin connection time: %d ms"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget-wide v7, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%sNumber of connections: %d "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget v3, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;->INSTANCE:Lcom/android/server/backup/transport/-$$Lambda$bnpJn6l0a4iWMupJTDnTAfwT1eA;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-static {p1, v2, v3}, Lcom/android/server/backup/transport/TransportStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Per transport:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportStats$Stats;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "        "

    invoke-static {p1, v5, v4}, Lcom/android/server/backup/transport/TransportStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStatsForTransport(Landroid/content/ComponentName;)Lcom/android/server/backup/transport/TransportStats$Stats;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v3, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-direct {v3, v1, v2}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>(Lcom/android/server/backup/transport/TransportStats$Stats;Lcom/android/server/backup/transport/TransportStats$1;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerConnectionTime(Landroid/content/ComponentName;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/backup/transport/TransportStats$Stats;

    invoke-direct {v2}, Lcom/android/server/backup/transport/TransportStats$Stats;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1, p2, p3}, Lcom/android/server/backup/transport/TransportStats$Stats;->access$000(Lcom/android/server/backup/transport/TransportStats$Stats;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
