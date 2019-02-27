.class public Lcom/android/internal/os/KernelUidCpuClusterTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuClusterTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurTime:[D

.field private mCurTimeRounded:[J

.field private mDeltaTime:[J

.field private mLastUidPolicyTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[D>;"
        }
    .end annotation
.end field

.field private mNumClusters:I

.field private mNumCores:I

.field private mNumCoresOnCluster:[I

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 5

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->sumClusterTime(Ljava/nio/IntBuffer;[D)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    aget-wide v3, v3, v1

    double-to-long v3, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;->onUidCpuPolicyTime(I[J)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 12

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    new-array v1, v2, [D

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    invoke-direct {p0, p2, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->sumClusterTime(Ljava/nio/IntBuffer;[D)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    iget v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    aget-wide v7, v7, v2

    aget-wide v9, v1, v2

    sub-double/2addr v7, v9

    double-to-long v7, v7

    aput-wide v7, v6, v2

    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v6, v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    sget-object v6, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Negative delta from cluster time proc: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v10, v10, v2

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v6, v6, v2

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    or-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    iget v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    invoke-static {v2, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    invoke-interface {p1, v0, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;->onUidCpuPolicyTime(I[J)V

    :cond_5
    return-void
.end method

.method private readCoreInfo(Ljava/nio/IntBuffer;I)Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, p2, [I

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    aput v4, v1, v0

    aget v4, v1, v0

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-gtz v3, :cond_1

    sget-object v0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid # cores from cluster time proc file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iput v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    iput-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCoresOnCluster:[I

    new-array v0, p2, [D

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    const/4 v0, 0x1

    return v0
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

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse cluster time proc bytes to int: "

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

    if-gtz v3, :cond_2

    sget-object v4, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cluster time format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    :cond_3
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_4

    sget-object v4, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too few data left in the buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    if-gtz v4, :cond_5

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readCoreInfo(Ljava/nio/IntBuffer;I)Z

    move-result v4

    if-nez v4, :cond_6

    monitor-exit v0

    return-void

    :cond_5
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v4, v5

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cluster time format error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_7
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->remaining()I

    move-result v4

    iget v5, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_8

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    monitor-exit v0

    return-void

    :cond_9
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

.method private sumClusterTime(Ljava/nio/IntBuffer;[D)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge v1, v2, :cond_2

    const-wide/16 v2, 0x0

    aput-wide v2, p2, v1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCoresOnCluster:[I

    aget v3, v3, v1

    if-gt v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    if-gez v3, :cond_0

    sget-object v4, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Negative time from cluster time proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    aget-wide v4, p2, v1

    int-to-double v6, v3

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    int-to-double v8, v2

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p2, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$SvNbuRWT162Eb4ur1GVE0r4GiDo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$SvNbuRWT162Eb4ur1GVE0r4GiDo;-><init>(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;-><init>(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
