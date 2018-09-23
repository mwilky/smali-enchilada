.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field private static final MESSAGE_CANCEL:I = 0x6

.field static final MESSAGE_JOBSERVICE_OBJECT:I = 0x7

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field private static final MESSAGE_RELEASE_MESSAGES_FROM_QUEUE:I = 0x2

.field static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field static final MESSAGE_START_SYNC:I = 0xa

.field static final MESSAGE_STOP_SYNC:I = 0xb

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1

.field static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private mUnreadyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz p2, :cond_1

    iget-object v5, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v5, p2, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v6, v6, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v5, v6, v4, p3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closeActiveSyncContext: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    return-void
.end method

.method private computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .locals 10

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v4, v3, v5, v6}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "SyncManager"

    const-string v4, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5

    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    if-eqz v0, :cond_2

    const-string v5, "SyncManager"

    const-string v6, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "SyncManager"

    const-string v6, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    :cond_5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget v6, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v6}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget-object v7, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v9, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_0

    :cond_6
    move v1, v6

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result v7

    if-nez v7, :cond_8

    if-gez v4, :cond_7

    goto :goto_1

    :cond_7
    move v7, v6

    goto :goto_2

    :cond_8
    :goto_1
    move v7, v5

    :goto_2
    if-nez v1, :cond_a

    if-nez v7, :cond_a

    if-eqz v0, :cond_9

    const-string v6, "SyncManager"

    const-string v8, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v5

    :cond_a
    return v6
.end method

.method private deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void
.end method

.method private deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    :goto_0
    return-void
.end method

.method private deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "deferSyncH() "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "periodic "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v4, "sync.  op="

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v4, " delay="

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, " why="

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v0

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1, v3, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string v1, "deferSyncH()"

    invoke-static {v0, p1, v1}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    :goto_1
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "SyncManager"

    const/4 v8, 0x2

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    const-string v3, "SyncManager"

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v1, :cond_1

    iget-object v2, v7, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v3, v7, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncStart(Ljava/lang/String;I)V

    :cond_1
    iget-object v9, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v10, v2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v11, :cond_2

    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "dispatchSyncOperation() failed: no sync adapter info for "

    aput-object v3, v2, v13

    aput-object v10, v2, v12

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t find a sync adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", removing settings for it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return v13

    :cond_2
    iget v14, v11, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v15, v11, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    new-instance v16, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v4

    move-object/from16 v1, v16

    move-object v3, v7

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    const-string v2, "SyncManager"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSyncOperation: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    iget v2, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v15, v2}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "dispatchSyncOperation() failed: bind failed. target: "

    aput-object v4, v3, v13

    aput-object v15, v3, v12

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind attempt failed - target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    return v13

    :cond_4
    return v12
.end method

.method private findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .locals 4

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*sync*/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private handleSyncMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$602(Lcom/android/server/content/SyncManager;Z)Z

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v4, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    iget-wide v6, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    iget-object v8, v1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    iget-object v2, v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-wide v4, v1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    if-eqz v0, :cond_0

    const-string v2, "SyncManager"

    const-string v4, "Stop sync received."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct {p0, v3, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    move v4, v5

    if-eqz v0, :cond_3

    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping sync. Reschedule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "Backoff: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v5, v6}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    :cond_4
    if-eqz v3, :cond_5

    const-wide/16 v5, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    :cond_5
    goto/16 :goto_3

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncOperation;

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    const-string v2, "SyncManager"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v7, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "SyncManager"

    const-string v4, "Detected sync making no progress for %s. cancelling."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "no network activity"

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SyncManager"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v3, "MESSAGE_CANCEL"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v2, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_e

    :try_start_1
    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Calling cancelSync for SERVICE_DISCONNECTED "

    aput-object v8, v7, v6

    aput-object v2, v7, v5

    const-string v8, " adapter="

    aput-object v8, v7, v1

    iget-object v8, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v7, v4

    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v3, v2}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "Canceled"

    aput-object v7, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "RemoteException "

    aput-object v7, v1, v6

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-virtual {v4, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    :goto_2
    new-instance v1, Landroid/content/SyncResult;

    invoke-direct {v1}, Landroid/content/SyncResult;-><init>()V

    iget-object v3, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "service disconnected"

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    const-string v3, "SyncManager"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v1, v3}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v3, v2, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    invoke-direct {p0, v1, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto :goto_3

    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncFinished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v4, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v4, "sync finished"

    invoke-virtual {v2, v3, v6, v4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-direct {p0, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :cond_e
    :goto_3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v6}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "account"

    move-object/from16 v7, p1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "authority"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "provider"

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "numDeletes"

    move-wide/from16 v14, p3

    invoke-virtual {v5, v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {v0, v5}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v3, "SyncManager"

    const-string v6, "No activity found to handle too many deletes."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v13, p5

    invoke-direct {v6, v13}, Landroid/os/UserHandle;-><init>(I)V

    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    move-object v10, v5

    move-object v13, v6

    invoke-static/range {v8 .. v13}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104018b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v10, v6}, Lcom/android/server/content/SyncManager;->access$5100(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v11, v10, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v12, 0x1080799

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v12}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x1040189

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x1060157

    invoke-virtual {v10, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const v12, 0x104018a

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget v11, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v3, Landroid/app/Notification;->flags:I

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/accounts/Account;->hashCode()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v13

    xor-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x12

    invoke-virtual {v11, v12, v13, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    return v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long v4, v2, v4

    const-string v6, "SyncManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v10, v4

    const-wide/32 v12, 0x100000

    div-long v14, v10, v12

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x400

    div-long v7, v10, v12

    rem-long/2addr v10, v12

    move-wide v12, v10

    const-string v6, "SyncManager"

    const-string v9, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v21, v2

    iget-wide v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    sub-long v19, v19, v2

    const-wide/16 v2, 0x3e8

    div-long v2, v19, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v18, 0x1

    aput-object v2, v1, v18

    const/4 v2, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v1, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v16, 0x3

    aput-object v2, v1, v16

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-wide/from16 v21, v2

    const/4 v3, 0x0

    const/16 v18, 0x1

    :goto_0
    const-wide/16 v1, 0xa

    cmp-long v1, v4, v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v3

    :goto_1
    return v18
.end method

.method public static synthetic lambda$updateOrAddPeriodicSyncH$0(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 8

    if-eqz p7, :cond_0

    const-string v0, "booleanResult"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 8

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and flex to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/server/content/SyncOperation;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    iget v1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    iput v1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    :cond_2
    return-void
.end method

.method private removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    iget-boolean v3, v2, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-static {v3, p2, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncOperation;

    iget v3, v2, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v3, v4, :cond_2

    :cond_0
    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v5

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v7, "removePeriodicSyncInternalH"

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "removePeriodicSyncInternalH-canceling: "

    aput-object v7, v6, v4

    const/4 v4, 0x1

    aput-object v2, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4, v2, p2}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncOperation;

    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v0}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method private runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .locals 9

    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync start: account="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, " authority="

    aput-object v6, v5, v3

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x3

    const-string v7, " reason="

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {v7, v8}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, " extras="

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v7}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, " adapter="

    aput-object v7, v5, v6

    const/16 v6, 0x8

    iget-object v7, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v5, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Sync is running now..."

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "Sync failed with RuntimeException: "

    aput-object v6, v1, v2

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught RuntimeException while starting the sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v4

    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "Sync failed with RemoteException: "

    aput-object v6, v1, v2

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    const-string v1, "SyncManager"

    const-string/jumbo v2, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v1, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .locals 33

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    iget-object v14, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v15, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v12, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-boolean v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v16, v3, v5

    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "runSyncFinishedOrCanceledH() op="

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object v14, v4, v5

    const-string v6, " result="

    aput-object v6, v4, v1

    const/4 v6, 0x3

    aput-object v11, v4, v6

    invoke-virtual {v0, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    if-eqz v11, :cond_7

    if-eqz v13, :cond_1

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_2

    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v1, "runSyncFinishedOrCanceledH()-finished"

    invoke-static {v0, v14, v1}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "success"

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v5, "sync success"

    invoke-static {v3, v4, v5}, Lcom/android/server/content/SyncManager;->access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {v10, v14}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    goto :goto_1

    :cond_3
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed sync operation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    add-int/2addr v0, v5

    iput v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    iget v0, v14, Lcom/android/server/content/SyncOperation;->retries:I

    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/content/SyncManagerConstants;->getMaxRetriesWithAppStandbyExemption()I

    move-result v1

    if-le v0, v1, :cond_4

    iput v2, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    :cond_4
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_5

    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v11, v14}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    :cond_5
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v14}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    :goto_0
    nop

    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    nop

    :cond_6
    :goto_1
    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v14, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v5, v11, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/content/SyncManager;->access$4900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    goto :goto_3

    :cond_7
    if-eqz v13, :cond_8

    const-string v0, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v0, v14, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_9

    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v4, "runSyncFinishedOrCanceledH()-canceled"

    invoke-static {v0, v14, v4}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_9
    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Calling cancelSync for runSyncFinishedOrCanceled "

    aput-object v4, v3, v2

    aput-object v12, v3, v5

    const-string v4, "  adapter="

    aput-object v4, v3, v1

    iget-object v4, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v0, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v12}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Canceled"

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "RemoteException "

    aput-object v4, v1, v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v3, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-string v0, "canceled"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    :goto_3
    move/from16 v19, v1

    move/from16 v18, v2

    iget-wide v2, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object v1, v10

    move-object v4, v14

    move-object v5, v0

    move/from16 v6, v18

    move/from16 v7, v19

    move-wide/from16 v8, v16

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    if-eqz v11, :cond_b

    iget-boolean v1, v11, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v1, :cond_b

    iget-object v2, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v1, v11, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numDeletes:J

    iget v6, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    goto :goto_4

    :cond_b
    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$5000(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v2}, Landroid/accounts/Account;->hashCode()I

    move-result v2

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12

    new-instance v4, Landroid/os/UserHandle;

    iget v5, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_4
    if-eqz v11, :cond_c

    iget-boolean v1, v11, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v1, :cond_c

    iget-object v1, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v2, Lcom/android/server/content/SyncOperation;

    iget-object v3, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v5, v14, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v6, v14, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v7, v14, Lcom/android/server/content/SyncOperation;->reason:I

    iget v8, v14, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v9, v15, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v10, v14, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v11, v14, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v0

    move/from16 v29, v10

    move/from16 v30, v11

    invoke-direct/range {v20 .. v30}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    goto :goto_5

    :cond_c
    move-object/from16 v31, v0

    :goto_5
    return-void
.end method

.method private startSyncH(Lcom/android/server/content/SyncOperation;)V
    .locals 7

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SyncManager"

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v1

    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncJobService;->markSyncStarted(I)V

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x36ee80

    const-string/jumbo v3, "storage low"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    iget v5, v4, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v5, v6, :cond_2

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v6, "periodic sync, pending"

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v5, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v5, v6, :cond_4

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget v5, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v6, "periodic sync, already running"

    invoke-virtual {v3, v5, v2, v6}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    :cond_4
    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v2, 0x0

    const-string v4, "backing off"

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v4, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v1, v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v4

    if-lt v1, v4, :cond_8

    if-eqz v0, :cond_7

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rescheduling sync due to conflict "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-wide/16 v1, 0x2710

    const-string v4, "delay on conflict"

    invoke-direct {p0, p1, v1, v2, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "SyncManager"

    const-string v4, "Pushing back running sync due to a higher priority sync"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string/jumbo v1, "preempted"

    invoke-direct {p0, v3, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    goto :goto_2

    :cond_b
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v5, "dispatchSyncOperation() failed"

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    goto :goto_4

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncJobService;

    move-result-object v3

    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid op state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    return-void

    :cond_c
    :goto_4
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v2, v3}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .locals 4

    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    move-wide/from16 v14, p2

    move-wide/from16 v12, p4

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)V

    const-wide/16 v0, 0x3e8

    mul-long v25, v14, v0

    mul-long v27, v12, v0

    if-eqz v24, :cond_0

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition to periodic syncs requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " flexMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/content/SyncOperation;

    iget-boolean v1, v9, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v1, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v11, p6

    invoke-static {v1, v11, v2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v8

    move-object v1, v9

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    return-void

    :cond_1
    move-object/from16 v11, p6

    :cond_2
    goto :goto_0

    :cond_3
    move-object/from16 v11, p6

    if-eqz v24, :cond_4

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new periodic sync: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " period: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " flexMillis: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " extras: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v1, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v1

    iget v3, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget v1, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v3, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x4

    const/16 v16, 0x4

    iget-object v9, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncAdapterType;

    invoke-virtual {v9}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v17

    const/16 v18, 0x1

    const/16 v19, -0x1

    const/16 v23, 0x0

    move-object v9, v0

    move-object v10, v7

    move v11, v1

    move-object v12, v3

    move v13, v4

    move/from16 v14, v16

    move-object/from16 v15, p6

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-wide/from16 v19, v25

    move-wide/from16 v21, v27

    invoke-direct/range {v9 .. v23}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    invoke-direct {v8, v9}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move/from16 v29, v10

    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v9}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    return-void

    :pswitch_0
    iget-object v11, v9, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v0, v9, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, v8, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;

    move-result-object v13

    iget-object v0, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    new-instance v15, Landroid/os/RemoteCallback;

    new-instance v3, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;

    move-object v0, v3

    move-object v1, v8

    move-object v2, v7

    move/from16 v29, v10

    move-object v10, v3

    move-wide/from16 v3, p2

    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    invoke-direct {v15, v10}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v13, v14, v11, v12, v15}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    return-void

    :pswitch_1
    move-object/from16 v17, v5

    move-object/from16 v16, v6

    move/from16 v29, v10

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$3802(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;

    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const-string v3, "SyncManager"

    const-string v6, "Accounts list: "

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v3, v7

    const-string v9, "SyncManager"

    invoke-virtual {v8}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "updateRunningAccountsH: "

    aput-object v8, v7, v5

    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;)V

    :cond_2
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v7, v7, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v10, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v10, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v8, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v9, v3, v10, v11}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "SyncManager"

    const-string v10, "canceling sync since the account is no longer running"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Lcom/android/server/content/SyncManager;->access$2200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    :cond_3
    goto :goto_1

    :cond_4
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v7}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v7

    array-length v8, v7

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v13, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v11, v2, v12, v13}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v7, "SyncManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " added, checking sync restore data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v7, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v7}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncOperation;

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v13, v10, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v13, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v11, v7, v12, v13}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v11}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    const-string v13, "canceling: "

    aput-object v13, v12, v5

    aput-object v10, v12, v6

    invoke-virtual {v11, v12}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v12, "updateRunningAccountsH()"

    invoke-static {v11, v10, v12}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    :cond_8
    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    iget-object v13, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v15, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/16 v16, -0x2

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V

    :cond_a
    return-void
.end method


# virtual methods
.method checkIfDeviceReady()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$200(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->restoreAllPeriodicSyncs()Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "Got SyncJobService instance."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncJobService;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$3002(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncJobService;)Lcom/android/server/content/SyncJobService;

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$2802(Lcom/android/server/content/SyncManager;Z)Z

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SyncManager"

    const-string v1, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mUnreadyQueue:Ljava/util/List;

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->tryEnqueueMessageUntilReadyToRun(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xaa0

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v2

    return-wide v2
.end method

.method onBootCompleted()V
    .locals 2

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "Boot completed."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    return-void
.end method

.method onDeviceProvisioned()V
    .locals 3

    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1800(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$SyncHandler;->checkIfDeviceReady()V

    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .locals 14

    nop

    const/4 v0, 0x1

    move-object/from16 v1, p3

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xaa0

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move/from16 v2, p6

    int-to-long v9, v2

    move/from16 v13, p5

    int-to-long v11, v13

    move-wide v4, p1

    move-wide/from16 v6, p7

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    return-void
.end method
