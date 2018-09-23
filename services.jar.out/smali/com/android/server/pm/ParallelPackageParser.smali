.class Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    }
.end annotation


# static fields
.field private static final MAX_THREADS:I = 0x4

.field private static final QUEUE_CAPACITY:I = 0xa


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private volatile mInterruptedInThread:Ljava/lang/String;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mOnlyCore:Z

.field private final mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/server/pm/ParallelPackageParser$ParseResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSeparateProcesses:[Ljava/lang/String;

.field private final mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>([Ljava/lang/String;ZLandroid/util/DisplayMetrics;Ljava/io/File;Landroid/content/pm/PackageParser$Callback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const-string/jumbo v0, "package-parsing-thread"

    const/4 v1, 0x4

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mSeparateProcesses:[Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mOnlyCore:Z

    iput-object p3, p0, Lcom/android/server/pm/ParallelPackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    iput-object p4, p0, Lcom/android/server/pm/ParallelPackageParser;->mCacheDir:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

    return-void
.end method

.method public static synthetic lambda$submit$0(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .locals 5

    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mOnlyCore:Z

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser;->setOnlyCoreApps(Z)V

    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser;->setCacheDir(Ljava/io/File;)V

    iget-object v4, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParserCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->pkg:Landroid/content/pm/PackageParser$Package;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iput-object v1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    :goto_1
    return-void

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all tasks finished before calling close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/io/File;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$ParallelPackageParser$FTtinPrp068lVeI7K6bC1tNE3iM;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
