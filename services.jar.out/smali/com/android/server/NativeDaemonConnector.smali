.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .locals 9
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;

    .line 87
    nop

    .line 88
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/server/INativeDaemonConnectorCallbacks;
    .param p2, "socket"    # Ljava/lang/String;
    .param p3, "responseQueueSize"    # I
    .param p4, "logTag"    # Ljava/lang/String;
    .param p5, "maxLogSize"    # I
    .param p6, "wl"    # Landroid/os/PowerManager$WakeLock;
    .param p7, "looper"    # Landroid/os/Looper;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 83
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 94
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 95
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 96
    new-instance v1, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {v1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 97
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    :cond_0
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 102
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_0

    :cond_1
    const-string v0, "NativeDaemonConnector"

    :goto_0
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "arg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 535
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 536
    .local v0, "hasSpaces":Z
    :goto_0
    const/16 v2, 0x22

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 541
    .local v3, "length":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 542
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 544
    .local v4, "c":C
    if-ne v4, v2, :cond_2

    .line 545
    const-string v5, "\\\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 546
    :cond_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    .line 547
    const-string v5, "\\\\"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 549
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    .end local v1    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 554
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :cond_5
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method private static isShuttingDown()Z
    .locals 2

    .line 149
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "shutdownAct":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private listenToSocket()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    .line 196
    .local v3, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object v3, v0

    .line 197
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v0

    move-object v4, v0

    .line 199
    .local v4, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 201
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v5, v0

    .line 202
    .local v5, "inputStream":Ljava/io/InputStream;
    iget-object v6, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 203
    :try_start_2
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 204
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 206
    :try_start_3
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-interface {v0}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "fdList":[Ljava/io/FileDescriptor;
    const/16 v6, 0x1000

    new-array v7, v6, [B

    .line 210
    .local v7, "buffer":[B
    const/4 v8, 0x0

    move-object v9, v0

    move v0, v8

    .line 213
    .local v0, "start":I
    .local v9, "fdList":[Ljava/io/FileDescriptor;
    :goto_0
    rsub-int v10, v0, 0x1000

    invoke-virtual {v5, v7, v0, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 214
    .local v10, "count":I
    if-gez v10, :cond_1

    .line 215
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " reading with start = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 216
    nop

    .line 283
    .end local v0    # "start":I
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "buffer":[B
    .end local v9    # "fdList":[Ljava/io/FileDescriptor;
    .end local v10    # "count":I
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_5
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    .line 286
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 290
    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_0
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 296
    nop

    .line 297
    :try_start_8
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 299
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 300
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing socket: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 302
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 301
    :goto_2
    nop

    .line 303
    :goto_3
    return-void

    .line 293
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 218
    .local v0, "start":I
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "fdList":[Ljava/io/FileDescriptor;
    .restart local v10    # "count":I
    :cond_1
    :try_start_a
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v11

    move-object v9, v11

    .line 221
    add-int/2addr v10, v0

    .line 222
    const/4 v0, 0x0

    .line 224
    move v11, v0

    move v0, v8

    .line 224
    .local v0, "i":I
    .local v11, "start":I
    :goto_4
    move v12, v0

    .line 224
    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_8

    .line 225
    aget-byte v0, v7, v12

    if-nez v0, :cond_7

    .line 228
    new-instance v0, Ljava/lang/String;

    sub-int v13, v12, v11

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v11, v13, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object v13, v0

    .line 231
    .local v13, "rawEvent":Ljava/lang/String;
    move v14, v8

    .line 233
    .local v14, "releaseWl":Z
    nop

    .line 234
    :try_start_b
    invoke-static {v13, v9}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 236
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCV <- {"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-interface {v2, v15}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_2

    :try_start_c
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 242
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 243
    const/4 v2, 0x1

    .line 245
    .end local v14    # "releaseWl":Z
    .local v2, "releaseWl":Z
    move v14, v2

    goto :goto_5

    .line 256
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "releaseWl":Z
    .restart local v14    # "releaseWl":Z
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_a

    .line 253
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_8

    .line 245
    .restart local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_2
    :goto_5
    :try_start_d
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 246
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v8
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 245
    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {v2, v15, v6, v3, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 247
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .local v2, "msg":Landroid/os/Message;
    .local v16, "socket":Landroid/net/LocalSocket;
    iget-object v3, v1, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 248
    const/4 v2, 0x0

    .line 250
    .end local v14    # "releaseWl":Z
    .local v2, "releaseWl":Z
    move v14, v2

    .line 250
    .end local v2    # "releaseWl":Z
    .restart local v14    # "releaseWl":Z
    :cond_3
    goto :goto_6

    .line 251
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_4
    move-object/from16 v16, v3

    .line 251
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 256
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_6
    if-eqz v14, :cond_5

    .line 257
    :try_start_f
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_9

    .line 253
    :catch_3
    move-exception v0

    goto :goto_8

    .line 256
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 256
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_a

    .line 253
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catch_4
    move-exception v0

    move-object/from16 v16, v3

    .line 254
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_8
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem parsing message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 256
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v14, :cond_5

    .line 257
    :try_start_11
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_7

    .line 261
    :cond_5
    :goto_9
    add-int/lit8 v0, v12, 0x1

    .line 224
    .end local v11    # "start":I
    .end local v13    # "rawEvent":Ljava/lang/String;
    .end local v14    # "releaseWl":Z
    .local v0, "start":I
    move v11, v0

    goto :goto_b

    .line 256
    .end local v0    # "start":I
    .restart local v11    # "start":I
    .restart local v13    # "rawEvent":Ljava/lang/String;
    .restart local v14    # "releaseWl":Z
    :catchall_3
    move-exception v0

    :goto_a
    if-eqz v14, :cond_6

    .line 257
    iget-object v2, v1, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v0

    .line 224
    .end local v13    # "rawEvent":Ljava/lang/String;
    .end local v14    # "releaseWl":Z
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_7
    move-object/from16 v16, v3

    .line 224
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_b
    add-int/lit8 v0, v12, 0x1

    .line 224
    .end local v12    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v16

    const/4 v2, 0x0

    const/16 v6, 0x1000

    const/4 v8, 0x0

    goto/16 :goto_4

    .line 265
    .end local v0    # "i":I
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :cond_8
    move-object/from16 v16, v3

    .line 265
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    if-nez v11, :cond_9

    .line 266
    const-string v0, "RCV incomplete"

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 271
    :cond_9
    if-eq v11, v10, :cond_a

    .line 272
    const/16 v2, 0x1000

    rsub-int v6, v11, 0x1000

    .line 273
    .local v6, "remaining":I
    const/4 v3, 0x0

    invoke-static {v7, v11, v7, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 274
    move v0, v6

    .line 275
    .end local v6    # "remaining":I
    .end local v11    # "start":I
    .local v0, "start":I
    goto :goto_c

    .line 276
    .end local v0    # "start":I
    .restart local v11    # "start":I
    :cond_a
    const/16 v2, 0x1000

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 278
    .end local v10    # "count":I
    .end local v11    # "start":I
    .restart local v0    # "start":I
    :goto_c
    nop

    .line 210
    move v6, v2

    move v8, v3

    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 204
    .end local v0    # "start":I
    .end local v7    # "buffer":[B
    .end local v9    # "fdList":[Ljava/io/FileDescriptor;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    .line 204
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    :goto_d
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 283
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v16

    goto :goto_f

    .line 279
    :catch_5
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_e

    .line 204
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_6
    move-exception v0

    goto :goto_d

    .line 283
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_7
    move-exception v0

    move-object/from16 v16, v3

    move-object v2, v0

    .line 283
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_f

    .line 279
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v0

    move-object/from16 v16, v3

    .line 279
    .end local v3    # "socket":Landroid/net/LocalSocket;
    .restart local v16    # "socket":Landroid/net/LocalSocket;
    goto :goto_e

    .line 283
    .end local v16    # "socket":Landroid/net/LocalSocket;
    .restart local v3    # "socket":Landroid/net/LocalSocket;
    :catchall_8
    move-exception v0

    move-object v2, v0

    goto :goto_f

    .line 279
    :catch_7
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/io/IOException;
    :goto_e
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communications error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 281
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 283
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_f
    iget-object v4, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_15
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    if-eqz v0, :cond_b

    .line 286
    :try_start_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 290
    goto :goto_10

    .line 288
    :catch_8
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_b
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 296
    if-eqz v3, :cond_c

    .line 297
    :try_start_18
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_11

    .line 299
    :catch_9
    move-exception v0

    move-object v4, v0

    .line 300
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/io/IOException;
    nop

    .line 301
    :cond_c
    :goto_11
    throw v2

    .line 293
    :catchall_9
    move-exception v0

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .line 608
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "logstring"    # Ljava/lang/String;

    .line 613
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "rawBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "logBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "sequenceNumber"    # I
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_4

    .line 331
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_3

    .line 335
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length v2, p4

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p4, v3

    .line 338
    .local v4, "arg":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "argString":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p0, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    instance-of v6, v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v6, :cond_0

    .line 348
    const-string v6, "[scrubbed]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 350
    :cond_0
    invoke-static {p1, v5}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    .restart local v4    # "arg":Ljava/lang/Object;
    .restart local v5    # "argString":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    .end local v4    # "arg":Ljava/lang/Object;
    .end local v5    # "argString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return-void

    .line 332
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must be separate from command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private uptimeMillisInt()I
    .locals 2

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 604
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 4
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 412
    .local v0, "events":[Lcom/android/server/NativeDaemonEvent;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 416
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 413
    :cond_0
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exactly one response, but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 406
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 22
    .param p1, "timeoutMs"    # J
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 463
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is holding 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 465
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 464
    invoke-static {v0, v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 470
    .local v4, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 472
    .local v6, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/NativeDaemonEvent;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 473
    .local v7, "rawBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 474
    .local v8, "logBuilder":Ljava/lang/StringBuilder;
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    .line 476
    .local v9, "sequenceNumber":I
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 479
    .local v12, "rawCmd":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 481
    .local v13, "logCmd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SND -> {"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "}"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 483
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v14

    .line 484
    :try_start_0
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    .line 488
    :try_start_1
    iget-object v0, v1, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    nop

    .line 493
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    iget-object v14, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v14, v9, v2, v3, v13}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 498
    if-nez v0, :cond_2

    .line 499
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v15, 0x3e8

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    div-long v7, v2, v15

    .line 499
    .end local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "logBuilder":Ljava/lang/StringBuilder;
    .local v17, "rawBuilder":Ljava/lang/StringBuilder;
    .local v18, "logBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds pass by waiting for response to "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", try again..."

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 503
    iget-object v7, v1, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v7, v9, v2, v3, v13}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_1

    goto :goto_1

    .line 505
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timed-out waiting for response to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 506
    new-instance v7, Lcom/android/server/NativeDaemonTimeoutException;

    invoke-direct {v7, v13, v0}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v7

    .line 511
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 511
    .end local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v7

    if-nez v7, :cond_6

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 515
    .local v7, "endTime":J
    sub-long v14, v7, v4

    const-wide/16 v19, 0x1f4

    cmp-long v14, v14, v19

    if-lez v14, :cond_3

    .line 516
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NDC Command {"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "} took too long ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v7, v4

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 519
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result v2

    if-nez v2, :cond_5

    .line 522
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result v2

    if-nez v2, :cond_4

    .line 526
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/NativeDaemonEvent;

    return-object v2

    .line 523
    :cond_4
    new-instance v2, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {v2, v13, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v2

    .line 520
    :cond_5
    new-instance v2, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {v2, v13, v0}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw v2

    .line 495
    .end local v7    # "endTime":J
    :cond_6
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    .line 489
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .local v7, "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "logBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 490
    .end local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "logBuilder":Ljava/lang/StringBuilder;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v2, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v3, "problem sending command"

    invoke-direct {v2, v3, v0}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 485
    .end local v0    # "e":Ljava/io/IOException;
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "logBuilder":Ljava/lang/StringBuilder;
    :cond_7
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 485
    .end local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v2, "missing output stream"

    invoke-direct {v0, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    .end local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "logBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 493
    .end local v7    # "rawBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "logBuilder":Ljava/lang/StringBuilder;
    .restart local v17    # "rawBuilder":Ljava/lang/StringBuilder;
    .restart local v18    # "logBuilder":Ljava/lang/StringBuilder;
    :goto_2
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Lcom/android/server/NativeDaemonConnector$Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 430
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 446
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, "event":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v1

    .line 158
    .local v1, "start":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 160
    .local v2, "sent":I
    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v0, v10}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 161
    const-string v8, "Unhandled event \'%s\'"

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-interface {v8, v9}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_1

    .line 167
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v8

    .line 170
    .local v8, "end":I
    if-le v1, v2, :cond_2

    sub-int v9, v1, v2

    int-to-long v9, v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_2

    .line 171
    const-string v9, "NDC event {%s} processed too late: %dms"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v6

    sub-int v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_2
    if-le v8, v1, :cond_3

    sub-int v9, v8, v1

    int-to-long v9, v9

    cmp-long v4, v9, v4

    if-lez v4, :cond_3

    .line 174
    const-string v4, "NDC event {%s} took too long: %dms"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v5, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    .end local v8    # "end":I
    :cond_3
    goto :goto_1

    .line 166
    :catchall_0
    move-exception v8

    goto :goto_2

    .line 163
    :catch_0
    move-exception v8

    .line 164
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error handling \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v8    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-interface {v8, v9}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v8, :cond_4

    .line 167
    iget-object v8, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v8

    .line 170
    .local v8, "end":I
    if-le v1, v2, :cond_5

    sub-int v9, v1, v2

    int-to-long v9, v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_5

    .line 171
    const-string v9, "NDC event {%s} processed too late: %dms"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v0, v10, v6

    sub-int v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_5
    if-le v8, v1, :cond_3

    sub-int v9, v8, v1

    int-to-long v9, v9

    cmp-long v4, v9, v4

    if-lez v4, :cond_3

    .line 174
    const-string v4, "NDC event {%s} took too long: %dms"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v5, v8, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    goto :goto_0

    .line 177
    .end local v8    # "end":I
    :goto_1
    return v7

    .line 166
    :goto_2
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-interface {v9, v10}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_6

    .line 167
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_6
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v9

    .line 170
    .local v9, "end":I
    if-le v1, v2, :cond_7

    sub-int v10, v1, v2

    int-to-long v10, v10

    cmp-long v10, v10, v4

    if-lez v10, :cond_7

    .line 171
    const-string v10, "NDC event {%s} processed too late: %dms"

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v0, v11, v6

    sub-int v12, v1, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_7
    if-le v9, v1, :cond_8

    sub-int v10, v9, v1

    int-to-long v10, v10

    cmp-long v4, v10, v4

    if-lez v4, :cond_8

    .line 174
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    sub-int v4, v9, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "NDC event {%s} took too long: %dms"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    .end local v9    # "end":I
    :cond_8
    throw v8
.end method

.method public monitor()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 134
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 137
    :goto_0
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 113
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .locals 1
    .param p1, "warnIfHeld"    # Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 129
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public waitForCallbacks()V
    .locals 4

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 367
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 368
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NativeDaemonConnector$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for unsolicited response handling"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 364
    .end local v0    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not call this method on callback thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
