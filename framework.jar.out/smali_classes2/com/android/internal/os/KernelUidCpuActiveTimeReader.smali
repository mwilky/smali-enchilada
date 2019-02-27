.class public Lcom/android/internal/os/KernelUidCpuActiveTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuActiveTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCores:I

.field private mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 5

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->sumActiveTime(Ljava/nio/IntBuffer;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    double-to-long v3, v1

    invoke-interface {p1, v0, v3, v4}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;->onUidCpuActiveTime(IJ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 8

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->sumActiveTime(Ljava/nio/IntBuffer;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v1, v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    double-to-long v3, v5

    invoke-interface {p1, v0, v3, v4}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;->onUidCpuActiveTime(IJ)V

    goto :goto_0

    :cond_0
    cmpg-double v3, v5, v3

    if-gez v3, :cond_1

    sget-object v3, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative delta from active time proc: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private readImpl(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/IntBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse active time proc bytes to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    iget v4, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cpu active time wrong # cores: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iput v3, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-lez v3, :cond_5

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v4, v5

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    div-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    sget-object v4, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cpu active time format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sumActiveTime(Ljava/nio/IntBuffer;)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-gt v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    if-gez v4, :cond_0

    sget-object v5, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative time from active time proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    int-to-double v5, v4

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v5, v7

    int-to-double v7, v3

    div-double/2addr v5, v7

    add-double/2addr v0, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    goto :goto_2

    :cond_2
    move-wide v3, v0

    :goto_2
    return-wide v3
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$uXm3GBhF7PBpo0hLrva14EQYjPA;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$uXm3GBhF7PBpo0hLrva14EQYjPA;-><init>(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;-><init>(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
