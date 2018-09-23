.class Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L

.field private static final TAG:Ljava/lang/String; = "WindowTracing"


# instance fields
.field private mEnabled:Z

.field private volatile mEnabledLockFree:Z

.field private final mLock:Ljava/lang/Object;

.field private final mTraceFile:Ljava/io/File;

.field private final mWriteQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mWriteQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    return-void
.end method

.method static createDefaultAndStartLooper(Landroid/content/Context;)Lcom/android/server/wm/WindowTracing;
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_trace.pb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wm/WindowTracing;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;)V

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$8kACnZAYfDhQTXwuOd2shUPmkTE;

    invoke-direct {v3, v1}, Lcom/android/server/wm/-$$Lambda$8kACnZAYfDhQTXwuOd2shUPmkTE;-><init>(Lcom/android/server/wm/WindowTracing;)V

    const-string/jumbo v4, "window_tracing"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-object v1
.end method

.method private logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "WindowTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method


# virtual methods
.method appendTraceEntry(Landroid/util/proto/ProtoOutputStream;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WindowTracing"

    const-string v1, "Dropping window trace entry, queue full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    return v0
.end method

.method loop()V
    .locals 0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->loopOnce()V

    goto :goto_0
.end method

.method loopOnce()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/proto/ProtoOutputStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    nop

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x20

    :try_start_1
    const-string/jumbo v4, "writeToFile"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v5, v4}, Lcom/android/server/wm/WindowTracing;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    invoke-static {v5, v4}, Lcom/android/server/wm/WindowTracing;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_7
    const-string v5, "WindowTracing"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    :catch_2
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x360802

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x68ac462

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "start"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "stop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    return v4

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    return v4

    :goto_2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method startTrace(Ljava/io/PrintWriter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10600000001L

    const-wide v8, 0x45434152544e4957L    # 4.655612620390422E25

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowTracing;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    iput-boolean v5, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowTracing;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method stopTrace(Ljava/io/PrintWriter;)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_0

    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    goto :goto_0

    :cond_1
    const-string v1, "ERROR: tracing was re-enabled while waiting for flush."

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "tracing enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method traceStateLocked(Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v1, 0x20b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10600000001L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10900000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-string/jumbo v3, "writeToProtoLocked"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-wide v6, 0x10b00000003L

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;Z)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    nop

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->appendTraceEntry(Landroid/util/proto/ProtoOutputStream;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method
