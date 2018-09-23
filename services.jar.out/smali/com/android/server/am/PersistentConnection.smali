.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextBackoffMs:J

.field private final mRebindBackoffIncrease:D

.field private final mRebindBackoffMs:J

.field private final mRebindMaxBackoffMs:J

.field private mRebindScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mReconnectTime:J

.field private mService:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldBeBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    const-wide/16 v0, 0x3e8

    mul-long v2, p6, v0

    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-long/2addr v0, p10

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/PersistentConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/PersistentConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/PersistentConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/PersistentConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method private cleanUpConnectionLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/PersistentConnection;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method private final unbindLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final bindForBackoff()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bindInnerLocked(Z)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    const v5, 0x4000001

    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_0

    const-string v1, "  [bound]"

    goto :goto_0

    :cond_0
    const-string v1, "  [not bound]"

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_1

    const-string v1, "  [connected]"

    goto :goto_1

    :cond_1
    const-string v1, "  [not connected]"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_2

    const-string v1, "  reconnect in "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Next backoff(sec): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNextBackoffMsForTest()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method getReconnectTimeForTest()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method injectPostAtTime(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method injectUptimeMillis()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRebindScheduled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method scheduleRebindLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    :cond_0
    return-void
.end method

.method shouldBeBoundForTest()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return v0
.end method

.method public final unbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleRebindLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    return-void
.end method
