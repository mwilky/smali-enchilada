.class Lcom/oneplus/lib/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;,
        Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oneplus/lib/design/widget/SnackbarManager$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/design/widget/SnackbarManager$1;-><init>(Lcom/oneplus/lib/design/widget/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 2

    iget-object v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;->dismiss(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static getInstance()Lcom/oneplus/lib/design/widget/SnackbarManager;
    .locals 1

    sget-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/design/widget/SnackbarManager;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    :cond_0
    sget-object v0, Lcom/oneplus/lib/design/widget/SnackbarManager;->sSnackbarManager:Lcom/oneplus/lib/design/widget/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 5

    iget v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_1

    iget v0, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;->show()V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrent(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCurrentOrNext(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDismissed(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShown(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pauseTimeout(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreTimeoutIfPaused(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iget-boolean v1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->paused:Z

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public show(ILcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/SnackbarManager;->scheduleTimeoutLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->isNextSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    iput p1, v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILcom/oneplus/lib/design/widget/SnackbarManager$Callback;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mNextSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/design/widget/SnackbarManager;->cancelSnackbarLocked(Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/SnackbarManager;->mCurrentSnackbar:Lcom/oneplus/lib/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
