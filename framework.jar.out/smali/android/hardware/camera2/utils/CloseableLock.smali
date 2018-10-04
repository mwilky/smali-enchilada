.class public Landroid/hardware/camera2/utils/CloseableLock;
.super Ljava/lang/Object;
.source "CloseableLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    }
.end annotation


# static fields
.field private static final VERBOSE:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile mClosed:Z

.field private final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mExclusive:Z

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLockCount:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mSharedLocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CloseableLock"

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    iput-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$1;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/utils/CloseableLock$1;-><init>(Landroid/hardware/camera2/utils/CloseableLock;)V

    iput-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    iput-object p1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseableLock["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v2, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire exclusive lock while holding shared lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-lez v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    nop

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_4
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iget-object v3, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    nop

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public acquireLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v2, :cond_2

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot acquire shared lock while holding exclusive lock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    iget-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    nop

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_3
    :try_start_2
    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    nop

    new-instance v0, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;-><init>(Landroid/hardware/camera2/utils/CloseableLock;Landroid/hardware/camera2/utils/CloseableLock$1;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()V
    .locals 3

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CloseableLock;->acquireExclusiveLock()Landroid/hardware/camera2/utils/CloseableLock$ScopedLock;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-boolean v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iput v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot close while one or more acquired locks are being held by this thread; release all other locks first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseLock()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mClosed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLockCount:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mExclusive:Z

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    nop

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many shared locks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/camera2/utils/CloseableLock;->mSharedLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not release after the lock has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CloseableLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release lock that was not acquired by this thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
