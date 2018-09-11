.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 2
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentWeight"    # J
    .param p5, "statsCounter"    # Lcom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .line 2090
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2070
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2091
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 2092
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2093
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2094
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2096
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2099
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2100
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    nop

    :cond_1
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2102
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2103
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_1

    .line 2104
    :cond_2
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2106
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2107
    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    goto :goto_2

    .line 2108
    :cond_3
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2110
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2111
    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    goto :goto_3

    .line 2112
    :cond_4
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 2113
    return-void
.end method


# virtual methods
.method cleanUp()V
    .locals 2

    .line 3440
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3441
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3442
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3443
    return-void
.end method

.method clear()V
    .locals 5

    .line 3217
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_4

    .line 3218
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3220
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3221
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3222
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v3, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v3, :cond_1

    .line 3224
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3225
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3222
    :cond_0
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 3221
    .end local v3    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3229
    .end local v2    # "i":I
    :cond_2
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3230
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3229
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3232
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3233
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 3234
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 3235
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3237
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3238
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3240
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3241
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3242
    goto :goto_3

    .line 3240
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3241
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    .line 3244
    :cond_4
    :goto_3
    return-void
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .line 2524
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2525
    :cond_0
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .line 2515
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2521
    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .line 2528
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2529
    :cond_0
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 2778
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2779
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2780
    .local v2, "now":J
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2781
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2782
    nop

    .line 2789
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2782
    return v1

    .line 2784
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    nop

    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2784
    return v1

    .line 2787
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "now":J
    :cond_2
    nop

    .line 2789
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2787
    return v1

    .line 2789
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 2800
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2801
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2802
    .local v2, "now":J
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2803
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    .line 2804
    .local v4, "length":I
    move v5, v1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 2805
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .local v6, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v6, :cond_2

    .line 2806
    invoke-virtual {p0, v6, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v7

    .line 2807
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_0

    .line 2808
    goto :goto_2

    .line 2810
    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 2811
    nop

    .line 2819
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2811
    const/4 v1, 0x1

    return v1

    .line 2805
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    goto :goto_1

    .line 2804
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2817
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v2    # "now":J
    .end local v4    # "length":I
    .end local v5    # "i":I
    :cond_3
    nop

    .line 2819
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2817
    return v1

    .line 2819
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2139
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "original":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2141
    return-object v1

    .line 2144
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2145
    .local v0, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2146
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2148
    return-object v1

    .line 2151
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 2152
    .local v1, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v3, v2, v1}, Lcom/google/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2153
    return-object v1
.end method

.method drainKeyReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2486
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2487
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v2, v1

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v1, :cond_1

    .line 2489
    move-object v1, v2

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2490
    .local v1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v1}, Lcom/google/common/cache/LocalCache;->reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2491
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 2492
    goto :goto_1

    .line 2494
    .end local v1    # "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 2495
    :cond_1
    :goto_1
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2591
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 2596
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2600
    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2475
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2481
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2500
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2501
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    move-object v2, v1

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    .line 2503
    move-object v1, v2

    check-cast v1, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2504
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v1}, Lcom/google/common/cache/LocalCache;->reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2505
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 2506
    goto :goto_1

    .line 2508
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    goto :goto_0

    .line 2509
    :cond_1
    :goto_1
    return-void
.end method

.method enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V
    .locals 3
    .param p2, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2639
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2640
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "hash"    # I
    .param p4, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2645
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2646
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2650
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2651
    .local v0, "value":Ljava/lang/Object;, "TV;"
    new-instance v1, Lcom/google/common/cache/RemovalNotification;

    invoke-direct {v1, p1, v0, p4}, Lcom/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2652
    .local v1, "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2654
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    :cond_1
    return-void
.end method

.method evictEntries()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2662
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2663
    return-void

    .line 2666
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2667
    :goto_0
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2668
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2669
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2672
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 2670
    .restart local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2673
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_2
    return-void
.end method

.method expand()V
    .locals 15
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2900
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2901
    .local v0, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    .line 2902
    .local v1, "oldCapacity":I
    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    .line 2903
    return-void

    .line 2916
    :cond_0
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2917
    .local v2, "newCount":I
    shl-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 2918
    .local v3, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2919
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 2920
    .local v4, "newMask":I
    const/4 v5, 0x0

    .local v5, "oldIndex":I
    :goto_0
    if-ge v5, v1, :cond_7

    .line 2923
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2925
    .local v6, "head":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_6

    .line 2926
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7

    .line 2927
    .local v7, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    .line 2930
    .local v8, "headIndex":I
    if-nez v7, :cond_1

    .line 2931
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 2936
    :cond_1
    move-object v9, v6

    .line 2937
    .local v9, "tail":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move v10, v8

    .line 2938
    .local v10, "tailIndex":I
    move-object v11, v9

    move-object v9, v7

    .local v9, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v11, "tail":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v9, :cond_3

    .line 2939
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v12

    and-int/2addr v12, v4

    .line 2940
    .local v12, "newIndex":I
    if-eq v12, v10, :cond_2

    .line 2942
    move v10, v12

    .line 2943
    move-object v11, v9

    .line 2938
    .end local v12    # "newIndex":I
    :cond_2
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    goto :goto_1

    .line 2946
    .end local v9    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2949
    move v9, v2

    move-object v2, v6

    .local v2, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v9, "newCount":I
    :goto_2
    if-eq v2, v11, :cond_5

    .line 2950
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v12

    and-int/2addr v12, v4

    .line 2951
    .restart local v12    # "newIndex":I
    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2952
    .local v13, "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, v2, v13}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v14

    .line 2953
    .local v14, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v14, :cond_4

    .line 2954
    invoke-virtual {v3, v12, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2956
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2957
    add-int/lit8 v9, v9, -0x1

    .line 2949
    .end local v12    # "newIndex":I
    .end local v13    # "newNext":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v14    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_2

    .line 2920
    .end local v2    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "head":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v8    # "headIndex":I
    .end local v10    # "tailIndex":I
    .end local v11    # "tail":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_5
    move v2, v9

    .end local v9    # "newCount":I
    .local v2, "newCount":I
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2963
    .end local v5    # "oldIndex":I
    :cond_7
    iput-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2964
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2965
    return-void
.end method

.method expireEntries(J)V
    .locals 3
    .param p1, "now"    # J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2620
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2623
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2624
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 2625
    .restart local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2628
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2629
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2630
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2633
    :cond_3
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 13
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2756
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2757
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2758
    .local v2, "now":J
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2759
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2760
    nop

    .line 2772
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2760
    return-object v1

    .line 2763
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    .line 2764
    .local v12, "value":Ljava/lang/Object;, "TV;"
    if-eqz v12, :cond_1

    .line 2765
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2766
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v11, v1, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    move-object v4, p0

    move-object v5, v0

    move v7, p2

    move-object v8, v12

    move-wide v9, v2

    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2772
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2766
    return-object v1

    .line 2768
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2770
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "now":J
    .end local v12    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    nop

    .line 2772
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2770
    return-object v1

    .line 2772
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 12
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2175
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2180
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2181
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 2182
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    move-wide v9, v1

    .line 2183
    .local v9, "now":J
    invoke-virtual {p0, v0, v9, v10}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    .line 2184
    .local v11, "value":Ljava/lang/Object;, "TV;"
    if-eqz v11, :cond_0

    .line 2185
    invoke-virtual {p0, v0, v9, v10}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2186
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 2187
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, v11

    move-wide v6, v9

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2187
    return-object v1

    .line 2189
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2190
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2191
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2191
    return-object v2

    .line 2197
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v9    # "now":J
    .end local v11    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2197
    return-object v0

    .line 2207
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 2200
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/Error;

    if-nez v2, :cond_3

    .line 2202
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 2203
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2205
    :cond_2
    throw v0

    .line 2201
    :cond_3
    new-instance v2, Lcom/google/common/util/concurrent/ExecutionError;

    move-object v3, v1

    check-cast v3, Ljava/lang/Error;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2207
    .end local v0    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2346
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    const/4 v0, 0x0

    .line 2348
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 2349
    if-eqz v0, :cond_1

    .line 2352
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2353
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    nop

    .line 2356
    if-nez v0, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2354
    :cond_0
    return-object v0

    .line 2350
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2356
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 2357
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_2
    throw v1
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2700
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2701
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 2702
    goto :goto_1

    .line 2705
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2706
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_1

    .line 2707
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2708
    goto :goto_1

    .line 2711
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2712
    return-object v0

    .line 2700
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2716
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2692
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2693
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v1
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2721
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2722
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2723
    return-object v1

    .line 2724
    :cond_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0, p3, p4}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2725
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2726
    return-object v1

    .line 2728
    :cond_1
    return-object v0
.end method

.method getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 3
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 2736
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2737
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2738
    return-object v1

    .line 2740
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2741
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2743
    return-object v1

    .line 2746
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2747
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    .line 2748
    return-object v1

    .line 2750
    :cond_2
    return-object v0
.end method

.method getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2678
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2679
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    .line 2680
    .local v2, "weight":I
    if-lez v2, :cond_0

    .line 2681
    return-object v1

    .line 2683
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "weight":I
    :cond_0
    goto :goto_0

    .line 2684
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2120
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2121
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2123
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2125
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2126
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;
    .locals 12
    .param p2, "hash"    # I
    .param p3, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2407
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 2408
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2410
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2411
    .local v1, "now":J
    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2413
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2414
    .local v3, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, p2

    .line 2415
    .local v4, "index":I
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2418
    .local v5, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_3

    .line 2419
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2420
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2421
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2424
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 2425
    .local v7, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v7}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p3, :cond_0

    .line 2426
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v10, v10, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    goto :goto_1

    .line 2434
    :cond_0
    iget v8, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2435
    new-instance v8, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v8, v7}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2437
    .local v8, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-interface {v0, v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    nop

    .line 2449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2438
    return-object v8

    .line 2430
    .end local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 2449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2430
    return-object v8

    .line 2418
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 2442
    :cond_3
    iget v6, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2443
    new-instance v6, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v6}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2444
    .local v6, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v7

    move-object v0, v7

    .line 2445
    invoke-interface {v0, v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2446
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    nop

    .line 2449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2447
    return-object v6

    .line 2449
    .end local v1    # "now":J
    .end local v3    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v4    # "index":I
    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v1
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 2325
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 2326
    .local v6, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v7, Lcom/google/common/cache/LocalCache$Segment$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment$1;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2337
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2326
    invoke-interface {v6, v7, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2338
    return-object v6
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2319
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2320
    .local v0, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 17
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 2214
    const/4 v4, 0x0

    .line 2215
    .local v4, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v5, 0x0

    .line 2216
    .local v5, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v6, 0x1

    .line 2218
    .local v6, "createNewEntry":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2221
    :try_start_0
    iget-object v0, v1, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v7

    .line 2222
    .local v7, "now":J
    invoke-virtual {v1, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2224
    iget v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 2225
    .local v0, "newCount":I
    iget-object v10, v1, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2226
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    sub-int/2addr v11, v9

    and-int/2addr v11, v3

    .line 2227
    .local v11, "index":I
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2229
    .local v12, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v13, v12

    .local v13, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v13, :cond_4

    .line 2230
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 2231
    .local v14, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v15

    if-ne v15, v3, :cond_3

    if-eqz v14, :cond_3

    iget-object v15, v1, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v15, v15, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2232
    invoke-virtual {v15, v2, v14}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2233
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v4, v15

    .line 2234
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2235
    const/4 v6, 0x0

    goto :goto_2

    .line 2237
    :cond_0
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2238
    .local v15, "value":Ljava/lang/Object;, "TV;"
    if-nez v15, :cond_1

    .line 2239
    :try_start_2
    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v1, v14, v3, v4, v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_1

    .line 2240
    :cond_1
    :try_start_3
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v9, v13, v7, v8}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_2

    .line 2243
    :try_start_4
    sget-object v9, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v1, v14, v3, v4, v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2252
    :goto_1
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v9, v13}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2253
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v9, v13}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2254
    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 2256
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 2245
    .restart local v15    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_5
    invoke-virtual {v1, v13, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2246
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v16, v4

    const/4 v4, 0x1

    :try_start_6
    invoke-interface {v9, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2248
    .end local v4    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v16, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    nop

    .line 2272
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2248
    return-object v15

    .line 2272
    .end local v0    # "newCount":I
    .end local v7    # "now":J
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v11    # "index":I
    .end local v12    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v13    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v14    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v15    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    move-object/from16 v8, p3

    move-object/from16 v4, v16

    goto :goto_5

    .end local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v4    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v8, p3

    .end local v4    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    goto :goto_5

    .line 2229
    .end local v16    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v0    # "newCount":I
    .restart local v4    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "now":J
    .restart local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .restart local v11    # "index":I
    .restart local v12    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v13    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    :try_start_7
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    move-object v13, v9

    const/4 v9, 0x1

    goto :goto_0

    .line 2260
    :cond_4
    :goto_2
    if-eqz v6, :cond_6

    .line 2261
    new-instance v9, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v9}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    move-object v5, v9

    .line 2263
    if-nez v13, :cond_5

    .line 2264
    invoke-virtual {v1, v2, v3, v12}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v9

    move-object v13, v9

    .line 2265
    invoke-interface {v13, v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2266
    invoke-virtual {v10, v11, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2268
    :cond_5
    invoke-interface {v13, v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2272
    .end local v0    # "newCount":I
    .end local v7    # "now":J
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v11    # "index":I
    .end local v12    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2274
    nop

    .line 2273
    move-object v7, v13

    .line 2276
    .end local v13    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v7, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_7

    .line 2281
    :try_start_8
    monitor-enter v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2282
    move-object/from16 v8, p3

    :try_start_9
    invoke-virtual {v1, v2, v3, v5, v8}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2285
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2282
    return-object v0

    .line 2283
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2285
    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v8, p3

    :goto_4
    iget-object v9, v1, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v0

    .line 2289
    :cond_7
    move-object/from16 v8, p3

    invoke-virtual {v1, v7, v2, v4}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2272
    .end local v7    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v8, p3

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2130
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2116
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .line 3416
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3417
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3419
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .line 3436
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3437
    return-void
.end method

.method preWriteCleanup(J)V
    .locals 0
    .param p1, "now"    # J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 3429
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3430
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 21
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 2825
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2827
    :try_start_0
    iget-object v0, v7, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v10, v0

    .line 2828
    .local v10, "now":J
    invoke-virtual {v7, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2830
    iget v0, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2831
    .local v0, "newCount":I
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2833
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 2836
    :cond_0
    iget-object v1, v7, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v12, v1

    .line 2837
    .local v12, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v13, v9, v1

    .line 2838
    .local v13, "index":I
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v14, v1

    .line 2841
    .local v14, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    nop

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v15, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v15, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/16 v16, 0x0

    if-eqz v15, :cond_5

    .line 2842
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 2843
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v9, :cond_4

    if-eqz v5, :cond_4

    iget-object v1, v7, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2844
    invoke-virtual {v1, v8, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2847
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    move-object v6, v1

    .line 2848
    .local v6, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    .line 2850
    .local v17, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v17, :cond_2

    .line 2851
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2852
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2853
    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v7, v8, v9, v6, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2854
    move-object v1, v7

    move-object v2, v15

    move-object v3, v8

    move-object/from16 v4, p3

    move/from16 v19, v0

    move-object/from16 v18, v5

    move-object v0, v6

    move-wide v5, v10

    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v0, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v18, "entryKey":Ljava/lang/Object;, "TK;"
    .local v19, "newCount":I
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2855
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto :goto_1

    .line 2857
    .end local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "newCount":I
    .local v0, "newCount":I
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    move/from16 v19, v0

    move-object/from16 v18, v5

    move-object v0, v6

    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v0, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "newCount":I
    move-object v1, v7

    move-object v2, v15

    move-object v3, v8

    move-object/from16 v4, p3

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2858
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 2860
    .end local v19    # "newCount":I
    .local v1, "newCount":I
    :goto_1
    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2861
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2862
    nop

    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2862
    return-object v16

    .line 2863
    .end local v1    # "newCount":I
    .end local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .local v0, "newCount":I
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    move/from16 v19, v0

    move-object/from16 v18, v5

    move-object v0, v6

    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v0, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "newCount":I
    if-eqz p4, :cond_3

    .line 2867
    :try_start_1
    invoke-virtual {v7, v15, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2868
    nop

    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2868
    return-object v17

    .line 2871
    :cond_3
    :try_start_2
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2872
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v7, v8, v9, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2873
    move-object v1, v7

    move-object v2, v15

    move-object v3, v8

    move-object/from16 v4, p3

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2874
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2875
    nop

    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2875
    return-object v17

    .line 2841
    .end local v17    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "newCount":I
    .local v0, "newCount":I
    :cond_4
    move/from16 v19, v0

    .end local v0    # "newCount":I
    .restart local v19    # "newCount":I
    :try_start_3
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    move-object v1, v0

    .end local v15    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move/from16 v0, v19

    goto/16 :goto_0

    .line 2881
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v19    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_5
    move/from16 v19, v0

    .end local v0    # "newCount":I
    .restart local v19    # "newCount":I
    iget v0, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2882
    invoke-virtual {v7, v8, v9, v14}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2883
    .local v0, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v4, p3

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2884
    invoke-virtual {v12, v13, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2885
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 2886
    .end local v19    # "newCount":I
    .local v1, "newCount":I
    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2888
    nop

    .line 2890
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2888
    return-object v16

    .line 2890
    .end local v0    # "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v1    # "newCount":I
    .end local v10    # "now":J
    .end local v12    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v13    # "index":I
    .end local v14    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z
    .locals 12
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    .line 3293
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3295
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3296
    .local v0, "newCount":I
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3297
    .local v2, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    sub-int/2addr v3, v1

    and-int/2addr v3, p2

    .line 3298
    .local v3, "index":I
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3300
    .local v6, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v4, v6

    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_1

    .line 3301
    if-ne v4, p1, :cond_0

    .line 3302
    iget v5, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3303
    nop

    .line 3304
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3303
    move-object v5, p0

    move-object v7, v4

    move v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    .line 3305
    .local v5, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr v7, v1

    .line 3306
    .end local v0    # "newCount":I
    .local v7, "newCount":I
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3307
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3308
    nop

    .line 3314
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3308
    return v1

    .line 3300
    .end local v5    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v7    # "newCount":I
    .restart local v0    # "newCount":I
    :cond_0
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 3312
    .end local v4    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    .line 3314
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3312
    return v1

    .line 3314
    .end local v0    # "newCount":I
    .end local v2    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v3    # "index":I
    .end local v6    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z
    .locals 18
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 3323
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3325
    :try_start_0
    iget v0, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    .line 3326
    .local v0, "newCount":I
    iget-object v1, v8, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v11, v1

    .line 3327
    .local v11, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    and-int v12, v9, v1

    .line 3328
    .local v12, "index":I
    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3330
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v13, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v13, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v13, :cond_5

    .line 3331
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    .line 3332
    .local v14, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, v9, :cond_3

    if-eqz v14, :cond_3

    iget-object v3, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3333
    move-object/from16 v15, p1

    :try_start_1
    invoke-virtual {v3, v15, v14}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3334
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    move-object v7, v3

    .line 3335
    .local v7, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v6, p3

    if-ne v7, v6, :cond_1

    .line 3336
    iget v1, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3337
    sget-object v16, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v1, v8

    move-object v3, v13

    move-object v4, v14

    move v5, v9

    move-object/from16 v6, p3

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    .end local v7    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v17, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3339
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr v3, v10

    .line 3340
    .end local v0    # "newCount":I
    .local v3, "newCount":I
    invoke-virtual {v11, v12, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3341
    iput v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3342
    nop

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3352
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3342
    :cond_0
    return v10

    .line 3344
    .end local v1    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "newCount":I
    .end local v17    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v0    # "newCount":I
    .restart local v7    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    move-object/from16 v17, v7

    .line 3350
    .end local v7    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v17    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3352
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3344
    :cond_2
    return v1

    .line 3330
    .end local v14    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v17    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_3
    move-object/from16 v15, p1

    :cond_4
    :try_start_2
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v13    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 3350
    .end local v0    # "newCount":I
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v11    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v12    # "index":I
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3348
    .restart local v0    # "newCount":I
    .restart local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v11    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .restart local v12    # "index":I
    :cond_5
    move-object/from16 v15, p1

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3352
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3348
    :cond_6
    return v1

    .line 3350
    .end local v0    # "newCount":I
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v11    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v12    # "index":I
    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3352
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_7
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 1
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2556
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2560
    return-void
.end method

.method recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 1
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2541
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2542
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2545
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V
    .locals 4
    .param p2, "weight"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2569
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2570
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2572
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2576
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 2578
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2579
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2580
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "hash"    # I
    .param p4, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2383
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    nop

    .line 2384
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;

    move-result-object v0

    .line 2385
    .local v0, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2386
    return-object v1

    .line 2389
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 2390
    .local v2, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2392
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2393
    :catch_0
    move-exception v3

    .line 2397
    :cond_1
    return-object v1
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 18
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    move-object/from16 v8, p0

    .line 3067
    move/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3069
    :try_start_0
    iget-object v0, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v10, v0

    .line 3070
    .local v10, "now":J
    invoke-virtual {v8, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3072
    iget v0, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, -0x1

    .line 3073
    .local v0, "newCount":I
    iget-object v1, v8, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v12, v1

    .line 3074
    .local v12, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v13, v9, v1

    .line 3075
    .local v13, "index":I
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3077
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v14, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v14, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v14, :cond_3

    .line 3078
    invoke-interface {v14}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    .line 3079
    .local v15, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v14}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, v9, :cond_2

    if-eqz v15, :cond_2

    iget-object v3, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3080
    move-object/from16 v6, p1

    invoke-virtual {v3, v6, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3081
    invoke-interface {v14}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    move-object v5, v3

    .line 3082
    .local v5, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    .line 3085
    .local v16, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v16, :cond_0

    .line 3086
    sget-object v1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3091
    .local v1, "cause":Lcom/google/common/cache/RemovalCause;
    .local v7, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object v7, v1

    goto :goto_2

    .line 3087
    .end local v1    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v7    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_0
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3088
    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3091
    .restart local v7    # "cause":Lcom/google/common/cache/RemovalCause;
    :goto_2
    nop

    .line 3094
    iget v1, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3095
    move-object v1, v8

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v17, v5

    move v5, v9

    .end local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v17, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3097
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 3098
    .end local v0    # "newCount":I
    .local v3, "newCount":I
    invoke-virtual {v12, v13, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3099
    iput v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3100
    nop

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3100
    return-object v16

    .line 3091
    .end local v1    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "newCount":I
    .end local v7    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v17    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v0    # "newCount":I
    .restart local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    move-object/from16 v17, v5

    .line 3106
    .end local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v17    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3091
    return-object v1

    .line 3077
    .end local v15    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-interface {v14}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 3104
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    nop

    .line 3106
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3104
    return-object v1

    .line 3106
    .end local v0    # "newCount":I
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v10    # "now":J
    .end local v12    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v13    # "index":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 21
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 3172
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3174
    :try_start_0
    iget-object v0, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v10, v0

    .line 3175
    .local v10, "now":J
    invoke-virtual {v8, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3177
    iget v0, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    .line 3178
    .local v0, "newCount":I
    iget-object v1, v8, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v13, v1

    .line 3179
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v12

    and-int v14, v9, v1

    .line 3180
    .local v14, "index":I
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3182
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v15, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v15, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/16 v16, 0x0

    if-eqz v15, :cond_4

    .line 3183
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    .line 3184
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v9, :cond_3

    if-eqz v7, :cond_3

    iget-object v1, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3185
    move-object/from16 v6, p1

    invoke-virtual {v1, v6, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3186
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    move-object v5, v1

    .line 3187
    .local v5, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .line 3190
    .local v4, "entryValue":Ljava/lang/Object;, "TV;"
    iget-object v1, v8, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3191
    sget-object v1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .local v1, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    goto :goto_2

    .line 3192
    .end local v1    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_0
    if-nez v4, :cond_2

    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3193
    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3196
    .restart local v1    # "cause":Lcom/google/common/cache/RemovalCause;
    :goto_2
    nop

    .line 3199
    iget v12, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3200
    move-object v12, v1

    move-object v1, v8

    .end local v1    # "cause":Lcom/google/common/cache/RemovalCause;
    .local v12, "cause":Lcom/google/common/cache/RemovalCause;
    move-object v3, v15

    move-object/from16 v18, v4

    move-object v4, v7

    .end local v4    # "entryValue":Ljava/lang/Object;, "TV;"
    .local v18, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v19, v5

    move v5, v9

    .end local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v19, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v6, v19

    move-object/from16 v20, v7

    move-object v7, v12

    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .local v20, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3202
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 3203
    .end local v0    # "newCount":I
    .local v3, "newCount":I
    invoke-virtual {v13, v14, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3204
    iput v3, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3205
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v12, v0, :cond_1

    .line 3211
    move/from16 v16, v17

    goto :goto_3

    .line 3205
    :cond_1
    nop

    .line 3211
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3205
    return v16

    .line 3196
    .end local v1    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "newCount":I
    .end local v12    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v18    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v0    # "newCount":I
    .restart local v4    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    .line 3211
    .end local v4    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v18    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3196
    return v16

    .line 3182
    .end local v18    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    move/from16 v17, v12

    :try_start_1
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v15    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move/from16 v12, v17

    goto/16 :goto_0

    .line 3209
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_4
    nop

    .line 3211
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3209
    return v16

    .line 3211
    .end local v0    # "newCount":I
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v10    # "now":J
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v14    # "index":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 3284
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3285
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3286
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3287
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 15
    .param p2, "hash"    # I
    .param p3, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v7, p0

    .line 3391
    iget v0, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v8, 0x1

    add-int/lit8 v9, v0, -0x1

    .line 3392
    .local v9, "newCount":I
    iget-object v10, v7, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3393
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v8

    and-int v11, p2, v0

    .line 3394
    .local v11, "index":I
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3396
    .local v12, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v0, v12

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v13, v0

    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v13, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v13, :cond_1

    .line 3397
    move-object/from16 v14, p1

    if-ne v13, v14, :cond_0

    .line 3398
    iget v0, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v0, v8

    iput v0, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3399
    nop

    .line 3400
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3399
    move-object v0, v7

    move-object v1, v12

    move-object v2, v13

    move/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3401
    .local v0, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr v1, v8

    .line 3402
    .end local v9    # "newCount":I
    .local v1, "newCount":I
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3403
    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3404
    return v8

    .line 3396
    .end local v0    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v1    # "newCount":I
    .restart local v9    # "newCount":I
    :cond_0
    invoke-interface {v13}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .end local v13    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 3408
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    move-object/from16 v14, p1

    const/4 v0, 0x0

    return v0
.end method

.method removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 3267
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3268
    .local v0, "newCount":I
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3269
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move v2, v0

    move-object v0, p1

    .local v0, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v2, "newCount":I
    :goto_0
    if-eq v0, p2, :cond_1

    .line 3270
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v3

    .line 3271
    .local v3, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 3272
    move-object v1, v3

    goto :goto_1

    .line 3274
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3275
    add-int/lit8 v2, v2, -0x1

    .line 3269
    .end local v3    # "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3278
    .end local v0    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_1
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3279
    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z
    .locals 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3358
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3360
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3361
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3362
    .local v1, "index":I
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3364
    .local v3, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 3365
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3366
    .local v6, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3367
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3368
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    .line 3369
    .local v7, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    if-ne v7, p3, :cond_1

    .line 3370
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3371
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    goto :goto_1

    .line 3373
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5

    .line 3374
    .local v5, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3376
    .end local v5    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_1
    nop

    .line 3384
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3376
    return v2

    .line 3378
    :cond_1
    nop

    .line 3384
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3378
    return v5

    .line 3364
    .end local v6    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 3382
    .end local v4    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    nop

    .line 3384
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3382
    return v5

    .line 3384
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v1    # "index":I
    .end local v3    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p6, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 3251
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3252
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3253
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3255
    invoke-interface {p5}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3256
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3257
    return-object p1

    .line 3259
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 3021
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3023
    :try_start_0
    iget-object v0, v9, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v12, v0

    .line 3024
    .local v12, "now":J
    invoke-virtual {v9, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3026
    iget-object v0, v9, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3027
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v14, v11, v1

    .line 3028
    .local v14, "index":I
    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3030
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v15, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v15, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/4 v8, 0x0

    if-eqz v15, :cond_3

    .line 3031
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    .line 3032
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v11, :cond_2

    if-eqz v7, :cond_2

    iget-object v1, v9, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3033
    invoke-virtual {v1, v10, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3034
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    move-object v6, v1

    .line 3035
    .local v6, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    .line 3036
    .local v16, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v16, :cond_1

    .line 3037
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3039
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v17, v1, -0x1

    .line 3040
    .local v17, "newCount":I
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3041
    sget-object v18, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v1, v9

    move-object v3, v15

    move-object v4, v7

    move v5, v11

    move-object/from16 v19, v6

    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v19, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v20, v7

    move-object/from16 v7, v18

    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .local v20, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3043
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v3, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 3044
    .end local v17    # "newCount":I
    .local v3, "newCount":I
    invoke-virtual {v0, v14, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3045
    iput v3, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "newCount":I
    goto :goto_1

    .line 3047
    .end local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_0
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .line 3060
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3047
    return-object v8

    .line 3050
    .end local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_1
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    :try_start_1
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3051
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v7, v19

    invoke-virtual {v9, v10, v11, v7, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3052
    .end local v19    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v7, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object v3, v9

    move-object v4, v15

    move-object v5, v10

    move-object/from16 v6, p3

    move-object v1, v7

    move-wide v7, v12

    .end local v7    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual/range {v3 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3053
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3054
    nop

    .line 3060
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3054
    return-object v16

    .line 3030
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    :try_start_2
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto/16 :goto_0

    .line 3058
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    nop

    .line 3060
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3058
    return-object v8

    .line 3060
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v12    # "now":J
    .end local v14    # "index":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 23
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 2968
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2970
    :try_start_0
    iget-object v0, v9, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v12, v0

    .line 2971
    .local v12, "now":J
    invoke-virtual {v9, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2973
    iget-object v0, v9, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2974
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    and-int v15, v11, v1

    .line 2975
    .local v15, "index":I
    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2977
    .local v2, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v8, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v8, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const/16 v16, 0x0

    if-eqz v8, :cond_4

    .line 2978
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    .line 2979
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v11, :cond_3

    if-eqz v7, :cond_3

    iget-object v1, v9, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2980
    invoke-virtual {v1, v10, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2981
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    move-object v6, v1

    .line 2982
    .local v6, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .line 2983
    .local v5, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_1

    .line 2984
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2986
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v17, v1, -0x1

    .line 2987
    .local v17, "newCount":I
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v14

    iput v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2988
    sget-object v18, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v1, v9

    move-object v3, v8

    move-object v4, v7

    move-object/from16 v19, v5

    move v5, v11

    .end local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .local v19, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v20, v6

    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v20, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v21, v7

    move-object/from16 v7, v18

    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .local v21, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 2990
    .local v1, "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v3, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I

    sub-int/2addr v3, v14

    .line 2991
    .end local v17    # "newCount":I
    .local v3, "newCount":I
    invoke-virtual {v0, v15, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2992
    iput v3, v9, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "newFirst":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v3    # "newCount":I
    goto :goto_1

    .line 2994
    .end local v19    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v21    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_0
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 3014
    .end local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v21    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2994
    return v16

    .line 2997
    .end local v19    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v21    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_1
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v5    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v19    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v21    # "entryKey":Ljava/lang/Object;, "TK;"
    :try_start_1
    iget-object v1, v9, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v7, p3

    move-object/from16 v6, v19

    invoke-virtual {v1, v7, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v19    # "entryValue":Ljava/lang/Object;, "TV;"
    .local v6, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2

    .line 2998
    iget v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v14

    iput v1, v9, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2999
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v5, v20

    invoke-virtual {v9, v10, v11, v5, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3000
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v5, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object v3, v9

    move-object v4, v8

    move-object v1, v5

    move-object v5, v10

    .end local v5    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v17, v6

    move-object/from16 v6, p4

    .end local v6    # "entryValue":Ljava/lang/Object;, "TV;"
    .local v17, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v22, v8

    move-wide v7, v12

    .end local v8    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v22, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual/range {v3 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3001
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3002
    nop

    .line 3014
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3002
    return v14

    .line 3006
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v17    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v22    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v6    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    move-object/from16 v17, v6

    move-object/from16 v22, v8

    move-object/from16 v1, v20

    .end local v6    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v17    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v22    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v3, v22

    :try_start_2
    invoke-virtual {v9, v3, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3007
    .end local v22    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v3, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    nop

    .line 3014
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3007
    return v16

    .line 2977
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v3    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v17    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v21    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v8    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_3
    move-object v3, v8

    .end local v8    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v3    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    goto/16 :goto_0

    .line 3012
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_4
    nop

    .line 3014
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3012
    return v16

    .line 3014
    .end local v0    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v2    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v12    # "now":J
    .end local v15    # "index":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runLockedCleanup(J)V
    .locals 2
    .param p1, "now"    # J

    .line 3446
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3448
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3449
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3450
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3452
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3453
    goto :goto_0

    .line 3452
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0

    .line 3455
    :cond_0
    :goto_0
    return-void
.end method

.method runUnlockedCleanup()V
    .locals 1

    .line 3459
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3460
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->processPendingNotifications()V

    .line 3462
    :cond_0
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 4
    .param p3, "hash"    # I
    .param p5, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .line 2365
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "oldValue":Ljava/lang/Object;, "TV;"
    .local p7, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v2, v2, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2366
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2367
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2368
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 2369
    return-object v0

    .line 2372
    .end local v0    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object p4
.end method

.method setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .line 2161
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2162
    .local v0, "previous":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    invoke-interface {v1, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 2163
    .local v1, "weight":I
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2165
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2166
    invoke-virtual {v2, p0, p1, p3, v1}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    .line 2167
    .local v2, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1, v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2168
    invoke-virtual {p0, p1, v1, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V

    .line 2169
    invoke-interface {v0, p3}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2170
    return-void
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .locals 22
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3115
    :try_start_0
    iget-object v0, v7, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    move-wide v11, v0

    .line 3116
    .local v11, "now":J
    invoke-virtual {v7, v11, v12}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3118
    iget v0, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v13, 0x1

    add-int/2addr v0, v13

    .line 3119
    .local v0, "newCount":I
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3121
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v1, 0x1

    .line 3124
    :cond_0
    iget-object v1, v7, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v14, v1

    .line 3125
    .local v14, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v13

    and-int v15, v9, v1

    .line 3126
    .local v15, "index":I
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v5, v1

    .line 3128
    .local v5, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    nop

    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    move-object v6, v1

    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v6, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_6

    .line 3129
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    .line 3130
    .local v4, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, v9, :cond_5

    if-eqz v4, :cond_5

    iget-object v1, v7, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3131
    invoke-virtual {v1, v8, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3132
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    move-object v3, v1

    .line 3133
    .local v3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    .line 3136
    .local v16, "entryValue":Ljava/lang/Object;, "TV;"
    if-eq v10, v3, :cond_2

    if-nez v16, :cond_1

    sget-object v1, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 3152
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    move-object/from16 v13, p4

    :try_start_2
    invoke-direct {v1, v13, v2}, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    .line 3153
    .end local v3    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    sget-object v3, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v7, v8, v9, v1, v3}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3154
    nop

    .line 3166
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3154
    return v2

    .line 3166
    .end local v0    # "newCount":I
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v11    # "now":J
    .end local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v15    # "index":I
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    move-object/from16 v13, p4

    goto/16 :goto_3

    .line 3138
    .restart local v0    # "newCount":I
    .restart local v3    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .restart local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v11    # "now":J
    .restart local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .restart local v15    # "index":I
    .restart local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    :cond_2
    :goto_1
    :try_start_3
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v13

    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3139
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3141
    if-nez v16, :cond_3

    sget-object v1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 3142
    .local v1, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_2
    invoke-virtual {v7, v8, v9, v10, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3143
    add-int/lit8 v0, v0, -0x1

    .line 3145
    .end local v1    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_4
    move-object v1, v7

    move-object v2, v6

    move-object/from16 v17, v3

    move-object v3, v8

    .end local v3    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .local v17, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v18, v4

    move-object/from16 v4, p4

    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .local v18, "entryKey":Ljava/lang/Object;, "TK;"
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide v5, v11

    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v19, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v20, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3146
    iput v0, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3148
    nop

    .line 3166
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3148
    return v13

    .line 3128
    .end local v16    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v18    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v19    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v20    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_5
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v19    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v20    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object/from16 v1, v20

    :try_start_4
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .end local v20    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v2

    move-object/from16 v5, v19

    goto/16 :goto_0

    .line 3158
    .end local v1    # "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v19    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_6
    move-object/from16 v19, v5

    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v19    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/2addr v1, v13

    iput v1, v7, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3159
    move-object/from16 v5, v19

    invoke-virtual {v7, v8, v9, v5}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .end local v19    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .restart local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v6, v1

    .line 3160
    .local v6, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    move-object v1, v7

    move-object v2, v6

    move-object v3, v8

    move-object/from16 v4, p4

    move-object/from16 v16, v5

    move-object v13, v6

    move-wide v5, v11

    .end local v5    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v6    # "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v13, "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local v16, "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3161
    invoke-virtual {v14, v15, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3162
    iput v0, v7, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3163
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3164
    nop

    .line 3166
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3164
    const/4 v1, 0x1

    return v1

    .line 3166
    .end local v0    # "newCount":I
    .end local v11    # "now":J
    .end local v13    # "newEntry":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .end local v14    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;>;"
    .end local v15    # "index":I
    .end local v16    # "first":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .line 2460
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2465
    goto :goto_0

    .line 2464
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0

    .line 2467
    :cond_0
    :goto_0
    return-void
.end method

.method tryExpireEntries(J)V
    .locals 1
    .param p1, "now"    # J

    .line 2608
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2610
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2614
    goto :goto_0

    .line 2612
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0

    .line 2616
    :cond_0
    :goto_0
    return-void
.end method

.method waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;TK;",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2295
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2299
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Recursive load of: %s"

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    .line 2303
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 2307
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2308
    .local v2, "now":J
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2309
    nop

    .line 2311
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v4, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2309
    return-object v0

    .line 2304
    .end local v2    # "now":J
    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v0

    .line 2296
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
