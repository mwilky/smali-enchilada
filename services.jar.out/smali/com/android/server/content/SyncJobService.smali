.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mJobParamsMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobStartUptimes:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLogger:Lcom/android/server/content/SyncLogger;

.field private mMessenger:Landroid/os/Messenger;

.field private final mStartedSyncs:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mJobParamsMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mStartedSyncs:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    return-void
.end method

.method public static jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, "job:null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "job:#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":sr=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getDebugStopReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "Messenger not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SyncManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private wtf(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string v0, "SyncManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public callJobFinished(IZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "callJobFinished()"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, " jobid="

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, " needsReschedule="

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, " why="

    aput-object v5, v3, v4

    const/16 v4, 0x8

    aput-object p3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->mJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job params not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

.method public markSyncStarted(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mStartedSyncs:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string/jumbo v0, "messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    const/4 v1, 0x2

    return v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Lcom/android/server/content/SyncLogger;->purgeOldLogs()V

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->mJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->mStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->mJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xa

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "onStartJob() jobid="

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, " op="

    aput-object v6, v5, v1

    const/4 v1, 0x3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-nez v3, :cond_0

    const-string v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got invalid job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got start job message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    return v8

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStopJob called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/content/SyncManager;->readyToSync()Z

    move-result v3

    iget-object v0, v1, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onStopJob() "

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/android/server/content/SyncJobService;->mLogger:Lcom/android/server/content/SyncLogger;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const-string v5, " readyToSync="

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/content/SyncJobService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    iget-object v4, v1, Lcom/android/server/content/SyncJobService;->mJobParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, v1, Lcom/android/server/content/SyncJobService;->mJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v9

    const-wide/16 v15, 0x0

    cmp-long v4, v9, v15

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Job "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " start uptime not found:  params="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/content/SyncJobService;->wtf(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/32 v15, 0xea60

    cmp-long v4, v13, v15

    if-lez v4, :cond_2

    if-eqz v3, :cond_3

    iget-object v4, v1, Lcom/android/server/content/SyncJobService;->mStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Job "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " didn\'t start:  startUptime="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " nowUptime="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " params="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/server/content/SyncJobService;->wtf(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    nop

    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/android/server/content/SyncJobService;->mStartedSyncs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v4, v1, Lcom/android/server/content/SyncJobService;->mJobStartUptimes:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->delete(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_4

    return v6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v8

    goto :goto_1

    :cond_5
    move v2, v6

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v2

    if-ne v2, v5, :cond_6

    goto :goto_2

    :cond_6
    move v8, v6

    :goto_2
    iput v8, v0, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    return v6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
