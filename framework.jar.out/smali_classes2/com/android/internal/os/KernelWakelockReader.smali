.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v12, 0x0

    move v0, v12

    :goto_0
    move v13, v0

    const/16 v14, 0xa

    if-ge v13, v10, :cond_0

    aget-byte v0, v9, v13

    if-eq v0, v14, :cond_0

    aget-byte v0, v9, v13

    if-eqz v0, :cond_0

    add-int/lit8 v0, v13, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v13, 0x1

    move v2, v0

    move v3, v0

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    const/4 v15, 0x1

    add-int/2addr v0, v15

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v8, v3

    :goto_1
    if-ge v2, v10, :cond_b

    move v0, v8

    move v7, v0

    :goto_2
    if-ge v7, v10, :cond_1

    :try_start_1
    aget-byte v0, v9, v7

    if-eq v0, v14, :cond_1

    aget-byte v0, v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move v2, v7

    move v3, v8

    goto/16 :goto_a

    :cond_1
    add-int/lit8 v0, v10, -0x1

    if-le v7, v0, :cond_2

    nop

    move v2, v7

    move v14, v8

    goto/16 :goto_8

    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v0

    move v0, v8

    :goto_3
    if-ge v0, v7, :cond_4

    :try_start_3
    aget-byte v2, v9, v0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/16 v2, 0x3f

    aput-byte v2, v9, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    nop

    if-eqz p3, :cond_5

    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_5
    :try_start_4
    sget-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_4
    move-object v5, v0

    const/4 v0, 0x0

    move-object v2, v9

    move v3, v8

    move v4, v7

    move-object/from16 v6, v16

    move/from16 v18, v7

    move-object/from16 v7, v17

    move v14, v8

    move-object v8, v0

    :try_start_5
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v0

    move v2, v0

    aget-object v0, v16, v12

    const/16 v3, 0x2c

    const/16 v4, 0x3b

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aget-wide v4, v17, v15

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v0, 0x2

    if-eqz p3, :cond_6

    aget-wide v7, v17, v0

    mul-long/2addr v7, v5

    goto :goto_5

    :cond_6
    aget-wide v7, v17, v0

    const-wide/16 v19, 0x1f4

    add-long v7, v7, v19

    div-long/2addr v7, v5

    :goto_5
    move-wide v5, v7

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v7, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v11, v3, v0}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    invoke-virtual {v11, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v8, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v7, v8, :cond_8

    iget v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iget-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_6

    :cond_8
    iput v4, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    iput-wide v5, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    sget v7, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v7, v0, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_6
    goto :goto_7

    :cond_9
    if-nez v2, :cond_a

    :try_start_6
    const-string v0, "KernelWakelockReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse proc line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    sub-int v12, v18, v14

    invoke-direct {v8, v9, v14, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_7
    const-string v7, "KernelWakelockReader"

    const-string v8, "Failed to parse proc line!"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_a
    :goto_7
    add-int/lit8 v8, v18, 0x1

    nop

    move/from16 v2, v18

    const/4 v12, 0x0

    const/16 v14, 0xa

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move v3, v14

    move/from16 v2, v18

    goto :goto_a

    :catchall_2
    move-exception v0

    move/from16 v18, v7

    move v14, v8

    move v3, v14

    move/from16 v2, v18

    goto :goto_a

    :cond_b
    move v14, v8

    :goto_8
    :try_start_8
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v3, v3, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v4, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v3, v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_d
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v3, v11, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    return-object v11

    :catchall_3
    move-exception v0

    move v3, v14

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_a
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 11

    const v0, 0x8000

    new-array v0, v0, [B

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v3

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/wakelocks"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto/16 :goto_3

    :catch_1
    move-exception v5

    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    nop

    move-object v5, v6

    move v6, v7

    :goto_0
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v8, 0x64

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    const-string v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading wakelock stats took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v7, :cond_3

    array-length v8, v0

    if-lt v7, v8, :cond_1

    const-string v8, "KernelWakelockReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-byte v9, v0, v8

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0, v7, v6, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v8

    return-object v8

    :catch_2
    move-exception v6

    :try_start_3
    const-string v7, "KernelWakelockReader"

    const-string/jumbo v8, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v4

    :goto_3
    nop

    :try_start_4
    const-string v6, "KernelWakelockReader"

    const-string v7, "failed to read kernel wakelocks"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v4

    :goto_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v4
.end method
