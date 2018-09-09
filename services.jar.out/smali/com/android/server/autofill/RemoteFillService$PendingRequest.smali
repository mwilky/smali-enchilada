.class abstract Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PendingRequest"
.end annotation


# instance fields
.field private mCancelled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private final mServiceHandler:Landroid/os/Handler;

.field private final mTimeoutTrigger:Ljava/lang/Runnable;

.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/autofill/RemoteFillService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 444
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$900(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    .line 445
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingRequest$Wzl5nwSdboq2CuUeWvFraQLBZk8;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingRequest$Wzl5nwSdboq2CuUeWvFraQLBZk8;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 461
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    .line 461
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 463
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 5

    .line 446
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 448
    monitor-exit v0

    return-void

    .line 450
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 455
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteFillService;
    if-eqz v0, :cond_1

    .line 456
    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->onTimeout(Lcom/android/server/autofill/RemoteFillService;)V

    .line 460
    :cond_1
    return-void

    .line 451
    .end local v0    # "remoteService":Lcom/android/server/autofill/RemoteFillService;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method cancel()Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    return v1

    .line 499
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final finish()Z
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    .line 481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 483
    return v1

    .line 478
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getService()Lcom/android/server/autofill/RemoteFillService;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method protected isCancelledLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 488
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    return v0
.end method

.method isFinal()Z
    .locals 1

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method abstract onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
.end method
