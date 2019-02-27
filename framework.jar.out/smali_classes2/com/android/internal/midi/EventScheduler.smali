.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;,
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private mClosed:Z

.field private volatile mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final mLock:Ljava/lang/Object;

.field private mMaxPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method private removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    new-instance v4, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    move-object v1, v4

    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected flush()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    return-void
.end method

.method public getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v4

    move-object v0, v4

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    if-nez v2, :cond_2

    const-wide/32 v2, 0x7fffffff

    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v6}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gtz v8, :cond_0

    invoke-direct {p0, v6, v7}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v8

    move-object v0, v8

    goto :goto_1

    :cond_0
    sub-long v8, v6, v4

    const-wide/16 v10, 0x1

    const-wide/32 v12, 0xf4240

    div-long v12, v8, v12

    add-long v2, v10, v12

    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v2, v10

    if-lez v10, :cond_1

    const-wide/32 v2, 0x7fffffff

    :cond_1
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    long-to-int v5, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
