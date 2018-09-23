.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockGraphNode"
.end annotation


# instance fields
.field final allowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field final disallowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final lockName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    return-void
.end method

.method private findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Ljava/util/Set<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-direct {v4, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v1, v4, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v1

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method checkAcquiredLock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V
    .locals 5

    if-eq p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to acquire multiple locks with the same rank "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->getLockName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v3

    invoke-direct {v2, p2, p0, v3, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    move-object v1, v2

    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    new-instance v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v4, p2, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    invoke-interface {v1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-direct {v4, p2, p0, v3, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    move-object v1, v4

    iget-object v4, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    :goto_1
    return-void
.end method

.method checkAcquiredLocks(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-virtual {p0, p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getLockName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    return-object v0
.end method
