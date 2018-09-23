.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz v0, :cond_1

    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
