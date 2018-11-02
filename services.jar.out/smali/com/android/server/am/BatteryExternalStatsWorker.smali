.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mOnBatteryScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseLatestStates:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation
.end field

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$y4b5S_CLdUbDV0ejaQDagLXGZRg;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$y4b5S_CLdUbDV0ejaQDagLXGZRg;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-array v11, v3, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v11, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v19}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BatteryExternalStatsWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 44
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iget-object v6, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iget-object v8, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v8, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iget-object v10, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v10, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iget-object v12, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v12, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iget-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    move-wide v15, v12

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v12

    iput-wide v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v12

    iput v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    iget-wide v12, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    sub-long/2addr v12, v8

    move-object/from16 v17, v14

    move-wide/from16 v18, v15

    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    sub-long/2addr v14, v10

    move-wide/from16 v20, v8

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    sub-long/2addr v8, v6

    move-wide/from16 v22, v8

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    sub-long/2addr v8, v4

    move-wide/from16 v24, v4

    const-wide/16 v4, 0x0

    cmp-long v16, v12, v4

    if-ltz v16, :cond_3

    cmp-long v16, v14, v4

    if-ltz v16, :cond_3

    cmp-long v16, v8, v4

    if-gez v16, :cond_0

    move-wide/from16 v36, v2

    move-wide/from16 v32, v6

    move-wide/from16 v38, v8

    move-wide/from16 v42, v10

    move-object/from16 v0, v17

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    move-wide/from16 v2, v22

    goto/16 :goto_1

    :cond_0
    add-long v4, v12, v14

    cmp-long v16, v4, v2

    if-lez v16, :cond_2

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x2ee

    add-long v28, v2, v28

    cmp-long v16, v4, v28

    if-lez v16, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v30, v8

    const-string v8, "Total Active time "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " is longer than sample period "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, ".\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Previous WiFi snapshot: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "idle="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " rx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " tx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v20

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    move-wide/from16 v32, v6

    const-string v6, " e="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v34, v8

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Current WiFi snapshot: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "idle="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " rx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " tx="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v8, " e="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "BatteryExternalStatsWorker"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-wide/from16 v32, v6

    move-wide/from16 v30, v8

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    goto :goto_0

    :cond_2
    move-wide/from16 v32, v6

    move-wide/from16 v30, v8

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    sub-long v26, v2, v4

    :goto_0
    move-wide/from16 v8, v26

    move-object/from16 v0, v17

    iput-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    move-wide/from16 v36, v2

    move-wide/from16 v2, v30

    iput-wide v2, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    move-wide/from16 v38, v2

    move-wide/from16 v40, v4

    move-wide/from16 v42, v10

    move-wide/from16 v2, v22

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    sub-long/2addr v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    goto :goto_2

    :cond_3
    move-wide/from16 v36, v2

    move-wide/from16 v32, v6

    move-wide/from16 v38, v8

    move-wide/from16 v42, v10

    move-object/from16 v0, v17

    move-wide/from16 v6, v18

    move-wide/from16 v34, v20

    move-wide/from16 v2, v22

    :goto_1
    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iget-wide v4, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iput-wide v4, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    const-string v4, "BatteryExternalStatsWorker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object/from16 v4, p0

    iput-object v1, v4, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public static synthetic lambda$7toxTvZDSEytL0rCkoEfGilPDWM(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes(ZZ)V

    return-void
.end method

.method public static synthetic lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY(Lcom/android/internal/os/BatteryStatsImpl;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->updateProcStateCpuTimes(ZZ)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "batterystats-worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static synthetic lambda$scheduleCpuSyncDueToWakelockChange$1(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public static synthetic lambda$scheduleCpuSyncDueToWakelockChange$2(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 2

    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$Nx17DLnpsjeC2juW1TuPEAogLvE;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$scheduleSyncDueToBatteryLevelChange$3(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 2

    const-string v0, "battery-level"

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    :cond_1
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWorkerLock"
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string v6, "bluetooth"

    invoke-direct {v5, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    :cond_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "telephony"

    invoke-direct {v0, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    :cond_4
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/wifi/WifiActivityEnergyInfo;

    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    invoke-static {v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/telephony/ModemActivityInfo;

    iget-object v8, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    :try_start_1
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const/16 v14, 0xe

    const/16 v16, 0x0

    move-object/from16 v15, p1

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    if-eqz p5, :cond_5

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v11, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_5
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    goto :goto_2

    :cond_6
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_2
    and-int/lit8 v0, p2, 0x1f

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    :cond_7
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    :cond_8
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    goto :goto_3

    :cond_9
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bluetooth info is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    goto :goto_4

    :cond_b
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wifi info is invalid: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_5

    :cond_d
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "modem info is invalid: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move/from16 v10, p3

    :goto_6
    move/from16 v11, p4

    :goto_7
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    :cond_1
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$eNtlYRY6yBjSWzaL4STPjcGEduM;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$eNtlYRY6yBjSWzaL4STPjcGEduM;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
