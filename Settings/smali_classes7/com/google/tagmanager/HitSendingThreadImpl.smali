.class Lcom/google/tagmanager/HitSendingThreadImpl;
.super Ljava/lang/Thread;
.source "HitSendingThreadImpl.java"

# interfaces
.implements Lcom/google/tagmanager/HitSendingThread;


# static fields
.field private static sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDisabled:Z

.field private volatile mUrlStore:Lcom/google/tagmanager/HitStore;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->start()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/HitStore;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    :goto_0
    iput-object p2, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/tagmanager/HitSendingThreadImpl;)Lcom/google/tagmanager/HitStore;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitStore;)Lcom/google/tagmanager/HitStore;
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/tagmanager/HitSendingThreadImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/tagmanager/HitSendingThreadImpl;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/HitSendingThreadImpl;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/HitSendingThreadImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    :cond_0
    sget-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    return-object v0
.end method

.method private printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->interrupt()V

    return-void
.end method

.method getQueueSize()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method getStore()Lcom/google/tagmanager/HitStore;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method isDisabled()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    return v0
.end method

.method public queueToThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v0, v1

    iget-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on GAThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/HitSendingThreadImpl;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const-string v1, "Google Analytics is shutting down."

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    :goto_2
    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendHit(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/tagmanager/HitSendingThreadImpl;->sendHit(Ljava/lang/String;J)V

    return-void
.end method

.method sendHit(Ljava/lang/String;J)V
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    move-object v2, p0

    new-instance v6, Lcom/google/tagmanager/HitSendingThreadImpl$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/HitSendingThreadImpl$1;-><init>(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitSendingThread;JLjava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google/tagmanager/HitSendingThreadImpl;->queueToThread(Ljava/lang/Runnable;)V

    return-void
.end method
