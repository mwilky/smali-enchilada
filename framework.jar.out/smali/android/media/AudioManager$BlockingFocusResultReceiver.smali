.class final Landroid/media/AudioManager$BlockingFocusResultReceiver;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingFocusResultReceiver"
.end annotation


# instance fields
.field private final mFocusClientId:Ljava/lang/String;

.field private mFocusRequestResult:I

.field private final mLock:Landroid/media/AudioManager$SafeWaitObject;

.field private mResultReceived:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/AudioManager$SafeWaitObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioManager$SafeWaitObject;-><init>(Landroid/media/AudioManager$1;)V

    iput-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    iput v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    iput-object p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusClientId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method notifyResult(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    iput p1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1}, Landroid/media/AudioManager$SafeWaitObject;->safeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method receivedResult()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    return v0
.end method

.method requestResult()I
    .locals 1

    iget v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mFocusRequestResult:I

    return v0
.end method

.method public waitForResult(J)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mResultReceived:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioManager$BlockingFocusResultReceiver;->mLock:Landroid/media/AudioManager$SafeWaitObject;

    invoke-virtual {v1, p1, p2}, Landroid/media/AudioManager$SafeWaitObject;->safeWait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
