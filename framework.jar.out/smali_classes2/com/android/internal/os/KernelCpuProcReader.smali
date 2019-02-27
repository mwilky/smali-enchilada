.class public Lcom/android/internal/os/KernelCpuProcReader;
.super Ljava/lang/Object;
.source "KernelCpuProcReader.java"


# static fields
.field private static final DEFAULT_THROTTLE_INTERVAL:J = 0xbb8L

.field private static final ERROR_THRESHOLD:I = 0x5

.field private static final INITIAL_BUFFER_SIZE:I = 0x2000

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field private static final PROC_UID_ACTIVE_TIME:Ljava/lang/String; = "/proc/uid_cpupower/concurrent_active_time"

.field private static final PROC_UID_CLUSTER_TIME:Ljava/lang/String; = "/proc/uid_cpupower/concurrent_policy_time"

.field private static final PROC_UID_FREQ_TIME:Ljava/lang/String; = "/proc/uid_cpupower/time_in_state"

.field private static final TAG:Ljava/lang/String; = "KernelCpuProcReader"

.field private static final mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private static final mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private static final mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mErrors:I

.field private mLastReadTime:J

.field private final mProc:Ljava/nio/file/Path;

.field private mThrottleInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcReader;

    const-string v1, "/proc/uid_cpupower/concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public static getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mActiveTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method

.method public static getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mClusterTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method

.method public static getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;
    .locals 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcReader;->mFreqTimeReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-object v0
.end method

.method private resize()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/high16 v1, 0x100000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    return v2
.end method


# virtual methods
.method public readBytes()Ljava/nio/ByteBuffer;
    .locals 9

    iget v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    iget-wide v6, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuProcReader;->mLastReadTime:J

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    new-array v4, v2, [Ljava/nio/file/OpenOption;

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcReader;->resize()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    const-string v4, "KernelCpuProcReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proc file is too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :cond_4
    const-wide/16 v4, 0x0

    :try_start_3
    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v4

    move-object v5, v1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v3, :cond_8

    if-eqz v5, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_7
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_8
    :goto_2
    throw v4
    :try_end_7
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_8
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    const-string v2, "KernelCpuProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :catch_3
    move-exception v3

    :try_start_9
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcReader;->mErrors:I

    const-string v2, "KernelCpuProcReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/KernelCpuProcReader;->mProc:Ljava/nio/file/Path;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    nop

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method public setThrottleInterval(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/os/KernelCpuProcReader;->mThrottleInterval:J

    :cond_0
    return-void
.end method
