.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    sub-int/2addr p3, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static unpackInt([BI)I
    .locals 6

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 11

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-eq v5, v3, :cond_0

    const-string v3, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    if-lez v3, :cond_5

    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_4

    :try_start_2
    iget-boolean v7, v8, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v7, :cond_1

    return-void

    :cond_1
    array-length v7, v1

    invoke-static {p1, v1, v4, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v7

    if-lez v7, :cond_3

    add-int/lit8 v9, v7, -0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_2

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v1, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    if-gtz v7, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v9, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v9, p0, v8, v6, v4}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    :cond_4
    const-string v4, "NativeCrashListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_1
    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4

    :cond_5
    const-string v4, "NativeCrashListener"

    const-string v7, "Bogus pid!"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [B

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ndebugsocket"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    const-string v3, "/data/system/ndebugsocket"

    invoke-static {v3}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    invoke-static {v2, v0}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    const-string v5, "/data/system/ndebugsocket"

    const/16 v6, 0x1ff

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    const/4 v5, 0x0

    move-object v6, v5

    :try_start_1
    invoke-static {v2, v5}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v6, v5

    if-eqz v6, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    :try_start_3
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_2
    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_5

    :catch_2
    move-exception v5

    :try_start_4
    const-string v7, "NativeCrashListener"

    const-string v8, "Error handling connection"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    :try_start_5
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_3
    :try_start_6
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    :cond_2
    :goto_4
    goto :goto_0

    :goto_5
    if-eqz v6, :cond_3

    :try_start_7
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_6
    :try_start_8
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_5
    move-exception v0

    :cond_3
    :goto_7
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v0

    const-string v2, "NativeCrashListener"

    const-string v3, "Unable to init native debug socket!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
