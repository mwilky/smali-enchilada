.class Lcom/google/common/util/concurrent/Futures$CombinedFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CombinedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final allMustSucceed:Z

.field combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;TC;>;"
        }
    .end annotation
.end field

.field futures:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final seenExceptionsLock:Ljava/lang/Object;

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1609
    const-class v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    .line 1610
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    .line 1609
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/Futures$FutureCombiner;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;TC;>;)V"
        }
    .end annotation

    .line 1623
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p1, "futures":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    .local p4, "combiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 1617
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    .line 1624
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    .line 1625
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    .line 1626
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1627
    iput-object p4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1628
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1629
    invoke-virtual {p0, p3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->init(Ljava/util/concurrent/Executor;)V

    .line 1630
    return-void
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILjava/util/concurrent/Future;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/Futures$CombinedFuture;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Future;

    .line 1608
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setOneValue(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1699
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    const/4 v0, 0x0

    .line 1700
    .local v0, "visibleFromOutputFuture":Z
    const/4 v1, 0x1

    .line 1701
    .local v1, "firstTimeSeeingThisException":Z
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v2, :cond_1

    .line 1704
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v2

    .line 1706
    .end local v0    # "visibleFromOutputFuture":Z
    .local v2, "visibleFromOutputFuture":Z
    iget-object v3, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1707
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1708
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    .line 1710
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->seenExceptions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 1711
    monitor-exit v3

    .line 1714
    move v0, v2

    goto :goto_0

    .line 1711
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1714
    .end local v2    # "visibleFromOutputFuture":Z
    .restart local v0    # "visibleFromOutputFuture":Z
    :cond_1
    :goto_0
    instance-of v2, p1, Ljava/lang/Error;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 1716
    :cond_2
    sget-object v2, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "input future failed."

    invoke-virtual {v2, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1718
    :cond_3
    return-void
.end method

.method private setOneValue(ILjava/util/concurrent/Future;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1724
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    .local p2, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    .line 1732
    .local v0, "localValues":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/base/Optional<TV;>;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-nez v0, :cond_3

    .line 1737
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const-string v4, "Future was done before all dependencies completed"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1742
    :cond_3
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    const-string v4, "Tried to set value from future which is not done"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1744
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 1745
    .local v1, "returnValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_4

    .line 1746
    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1759
    .end local v1    # "returnValue":Ljava/lang/Object;, "TV;"
    :cond_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 1760
    .local v1, "newRemaining":I
    if-ltz v1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1761
    if-nez v1, :cond_8

    .line 1762
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1763
    .local v2, "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    goto :goto_4

    .line 1759
    .end local v1    # "newRemaining":I
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :catchall_0
    move-exception v1

    goto/16 :goto_9

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    .end local v1    # "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 1760
    .local v1, "newRemaining":I
    if-ltz v1, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1761
    if-nez v1, :cond_8

    .line 1762
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1763
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1764
    :goto_4
    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1766
    :cond_7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1769
    .end local v1    # "newRemaining":I
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :cond_8
    :goto_5
    goto :goto_8

    .line 1754
    :catch_1
    move-exception v1

    .line 1755
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->setExceptionAndMaybeLog(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1759
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 1760
    .local v1, "newRemaining":I
    if-ltz v1, :cond_9

    goto :goto_6

    :cond_9
    move v2, v3

    :goto_6
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1761
    if-nez v1, :cond_8

    .line 1762
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1763
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    goto :goto_4

    .line 1748
    .end local v1    # "newRemaining":I
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :catch_2
    move-exception v1

    .line 1749
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_3
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->allMustSucceed:Z

    if-eqz v4, :cond_a

    .line 1752
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1759
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :cond_a
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 1760
    .local v1, "newRemaining":I
    if-ltz v1, :cond_b

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1761
    if-nez v1, :cond_8

    .line 1762
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1763
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    goto :goto_4

    .line 1770
    .end local v1    # "newRemaining":I
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    :goto_8
    return-void

    .line 1759
    :goto_9
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    .line 1760
    .local v4, "newRemaining":I
    if-ltz v4, :cond_c

    goto :goto_a

    :cond_c
    move v2, v3

    :goto_a
    const-string v3, "Less than 0 remaining futures"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1761
    if-nez v4, :cond_e

    .line 1762
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    .line 1763
    .restart local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    .line 1764
    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1766
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->isDone()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1769
    .end local v2    # "localCombiner":Lcom/google/common/util/concurrent/Futures$FutureCombiner;, "Lcom/google/common/util/concurrent/Futures$FutureCombiner<TV;TC;>;"
    .end local v4    # "newRemaining":I
    :cond_e
    :goto_b
    throw v1
.end method


# virtual methods
.method protected init(Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "listenerExecutor"    # Ljava/util/concurrent/Executor;

    .line 1637
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$CombinedFuture;, "Lcom/google/common/util/concurrent/Futures$CombinedFuture<TV;TC;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;)V

    .line 1657
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1637
    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1662
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->combiner:Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->set(Ljava/lang/Object;)Z

    .line 1664
    return-void

    .line 1668
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1680
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 1681
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;->futures:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1682
    .local v2, "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    add-int/lit8 v3, v0, 0x1

    .line 1683
    .local v0, "index":I
    .local v3, "i":I
    new-instance v4, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/common/util/concurrent/Futures$CombinedFuture$2;-><init>(Lcom/google/common/util/concurrent/Futures$CombinedFuture;ILcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-interface {v2, v4, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1689
    .end local v0    # "index":I
    .end local v2    # "listenable":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    nop

    .line 1681
    move v0, v3

    goto :goto_1

    .line 1690
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_2
    return-void
.end method
