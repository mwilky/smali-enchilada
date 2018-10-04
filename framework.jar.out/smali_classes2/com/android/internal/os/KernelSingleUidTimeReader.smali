.class public Lcom/android/internal/os/KernelSingleUidTimeReader;
.super Ljava/lang/Object;
.source "KernelSingleUidTimeReader.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;
    }
.end annotation


# static fields
.field public static final TOTAL_READ_ERROR_COUNT:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final DBG:Z

.field private final PROC_FILE_DIR:Ljava/lang/String;

.field private final PROC_FILE_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mCpuFreqsCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mCpuFreqsCountVerified:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mHasStaleData:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

.field private mLastUidCpuTimeMs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mReadErrorCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSingleUidCpuTimesAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-direct {v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;-><init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/os/KernelSingleUidTimeReader$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->DBG:Z

    const-string v1, "/proc/uid/"

    iput-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->PROC_FILE_DIR:Ljava/lang/String;

    const-string v1, "/time_in_state"

    iput-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->PROC_FILE_NAME:Ljava/lang/String;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    iput-object p2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    iput p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    iget v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    :cond_0
    return-void
.end method

.method private readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J
    .locals 6

    iget v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private verifyCpuFreqsCount(ILjava/lang/String;)V
    .locals 4

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freq count didn\'t match,count from /proc/uid_time_in_state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", butcount from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public computeDelta(I[J)[J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/os/KernelSingleUidTimeReader;->getDeltaLocked([J[J)[J

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v3, 0x0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_3

    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return-object v2

    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeltaLocked([J[J)[J
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ltz v0, :cond_1

    aget-wide v4, p2, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-object p2

    :cond_2
    array-length v0, p2

    new-array v0, v0, [J

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_4

    aget-wide v5, p2, v4

    aget-wide v7, p1, v4

    sub-long/2addr v5, v7

    aput-wide v5, v0, v4

    aget-wide v5, v0, v4

    cmp-long v5, v5, v2

    if-gez v5, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getLastUidCpuTimeMs()Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    return-object v0
.end method

.method public hasStaleData()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mHasStaleData:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markDataAsStale(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mHasStaleData:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readDeltaMs(I)[J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/proc/uid/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/time_in_state"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mInjector:Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader$Injector;->readData(Ljava/lang/String;)[B

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mCpuFreqsCountVerified:Z

    if-nez v3, :cond_1

    array-length v3, v2

    invoke-direct {p0, v3, v0}, Lcom/android/internal/os/KernelSingleUidTimeReader;->verifyCpuFreqsCount(ILjava/lang/String;)V

    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3}, Lcom/android/internal/os/KernelSingleUidTimeReader;->readCpuTimesFromByteBuffer(Ljava/nio/ByteBuffer;)[J

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    nop

    nop

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/KernelSingleUidTimeReader;->computeDelta(I[J)[J

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v2

    iget v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mReadErrorCounter:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public removeUid(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeUidsInRange(II)V
    .locals 4

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllUidsCpuTimesMs(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[J>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mLastUidCpuTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSingleUidCpuTimesAvailable(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    return-void
.end method

.method public singleUidCpuTimesAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/KernelSingleUidTimeReader;->mSingleUidCpuTimesAvailable:Z

    return v0
.end method
