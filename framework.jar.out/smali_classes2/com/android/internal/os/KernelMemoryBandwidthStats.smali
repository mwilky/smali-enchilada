.class public Lcom/android/internal/os/KernelMemoryBandwidthStats;
.super Ljava/lang/Object;
.source "KernelMemoryBandwidthStats.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelMemoryBandwidthStats"

.field private static final mSysfsFile:Ljava/lang/String; = "/sys/kernel/memory_state_time/show_stat"


# instance fields
.field protected final mBandwidthEntries:Landroid/util/LongSparseLongArray;

.field private mStatsDoNotExist:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    return-void
.end method


# virtual methods
.method public getBandwidthEntries()Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method public parseStats(Ljava/io/BufferedReader;)V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iget-object v1, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v1}, Landroid/util/LongSparseLongArray;->clear()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v3

    move v4, v3

    const-wide/32 v5, 0xf4240

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v7, v1

    iget-object v9, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v9, v4}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    div-long/2addr v11, v5

    add-long/2addr v9, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    int-to-long v7, v1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    div-long/2addr v9, v5

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateStats()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/kernel/memory_state_time/show_stat"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/internal/os/KernelMemoryBandwidthStats;->parseStats(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    :try_start_6
    const-string v4, "KernelMemoryBandwidthStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read memory bandwidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v4, "KernelMemoryBandwidthStats"

    const-string v5, "No kernel memory bandwidth stats available"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mBandwidthEntries:Landroid/util/LongSparseLongArray;

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->clear()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/os/KernelMemoryBandwidthStats;->mStatsDoNotExist:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    const-string v5, "KernelMemoryBandwidthStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading memory bandwidth file took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :goto_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method
