.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2000()Z

    move-result v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp(ZLjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PEEK_SYSTEM_TEMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_12

    :pswitch_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    const-string v3, "PERSIST_CPU_TRACKER"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->tryPersistToDisk()V

    goto/16 :goto_12

    :pswitch_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    goto/16 :goto_12

    :pswitch_3
    const/4 v0, 0x0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_2

    const-string v3, "ActivityManager"

    const-string v4, "COLLECT_PSS_BG_MSG  isDelay message"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_7

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v6, v9, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v7, v9

    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v7, :cond_7

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    const-wide/16 v8, 0x0

    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v10

    :try_start_1
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v12, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v11

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v24, v8

    move v8, v6

    :goto_0
    if-ge v8, v12, :cond_5

    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_2
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v13, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_4

    monitor-exit v9

    goto :goto_1

    :cond_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long v24, v24, v9

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v9, :cond_6

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collected native and kernel memory in "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v4

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ms"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    move-wide/from16 v26, v13

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v13

    move-wide/from16 v28, v13

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v13

    move-wide/from16 v30, v13

    const-wide/16 v13, 0x400

    mul-long v32, v9, v13

    mul-long v34, v26, v13

    mul-long v36, v28, v13

    mul-long v38, v30, v13

    mul-long v40, v24, v13

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide v14, v9

    move-wide/from16 v16, v26

    move-wide/from16 v18, v28

    move-wide/from16 v20, v30

    move-wide/from16 v22, v24

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_7
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [J

    :goto_3
    const/4 v10, -0x1

    const/16 v11, 0xf

    const/4 v12, 0x1

    if-lt v8, v11, :cond_9

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v12, v0, Landroid/os/Message;->what:I

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x3a98

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v6, :cond_8

    const-string v6, "ActivityManager"

    const-string v11, "COLLECT_PSS_BG_MSG delay getpss"

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    if-gtz v13, :cond_c

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Collected pss of "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " processes in "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move/from16 v42, v7

    :goto_4
    move-object/from16 v46, v9

    goto/16 :goto_11

    :cond_c
    :try_start_a
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    iget v14, v13, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    iget v15, v13, Lcom/android/server/am/ProcessRecord;->pssStatType:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    move/from16 v27, v15

    move/from16 v42, v7

    :try_start_b
    iget-wide v6, v13, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    const-wide/16 v17, 0x3e8

    if-eqz v12, :cond_d

    :try_start_c
    iget v12, v13, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v14, v12, :cond_d

    add-long v19, v6, v17

    cmp-long v12, v19, v15

    if-gez v12, :cond_d

    iget v12, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v10, v12

    move/from16 v43, v3

    goto :goto_7

    :catchall_5
    move-exception v0

    move/from16 v43, v3

    :goto_5
    move-wide/from16 v44, v4

    goto :goto_4

    :cond_d
    :try_start_d
    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v12}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    if-eqz v12, :cond_e

    :try_start_e
    const-string v12, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped pss collection of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    add-long v17, v6, v17

    move/from16 v43, v3

    sub-long v2, v17, v15

    :try_start_f
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms until safe"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_5

    :catchall_7
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    goto/16 :goto_11

    :cond_e
    move/from16 v43, v3

    :goto_6
    const/4 v13, 0x0

    const/4 v0, 0x0

    move v10, v0

    :goto_7
    :try_start_10
    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v2, v13

    move v3, v14

    if-eqz v2, :cond_15

    add-int/lit8 v11, v8, 0x1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    const/4 v0, 0x0

    invoke-static {v10, v9, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v32

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_10

    :try_start_12
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v0, v3, :cond_10

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-ne v0, v10, :cond_10

    move-wide/from16 v44, v4

    :try_start_13
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    cmp-long v0, v4, v6

    if-nez v0, :cond_f

    add-int/lit8 v4, v42, 0x1

    :try_start_14
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    aget-wide v21, v9, v5

    const/16 v16, 0x1

    aget-wide v23, v9, v16

    const/16 v16, 0x2

    aget-wide v25, v9, v16

    sub-long v28, v32, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v31}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v46, v9

    move/from16 v47, v10

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    move/from16 v42, v4

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    goto :goto_9

    :catchall_9
    move-exception v0

    :goto_8
    move-object/from16 v46, v9

    move/from16 v47, v10

    goto/16 :goto_f

    :catchall_a
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    goto/16 :goto_f

    :cond_10
    move-wide/from16 v44, v4

    const/4 v5, 0x0

    :goto_9
    :try_start_15
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_14

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pss collection of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    if-nez v5, :cond_11

    :try_start_16
    const-string v5, "NO_THREAD "
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    goto :goto_a

    :cond_11
    :try_start_17
    const-string v5, ""

    :goto_a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    if-eq v5, v10, :cond_12

    :try_start_18
    const-string v5, "PID_CHANGED "
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto :goto_b

    :cond_12
    :try_start_19
    const-string v5, ""

    :goto_b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " initState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    move-object/from16 v46, v9

    move/from16 v47, v10

    :try_start_1a
    iget-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v5, v9, v6

    if-eqz v5, :cond_13

    const-string v5, "TIME_CHANGED"

    goto :goto_c

    :cond_13
    const-string v5, ""

    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    goto :goto_d

    :cond_14
    move-object/from16 v46, v9

    move/from16 v47, v10

    :goto_d
    move/from16 v4, v42

    :goto_e
    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move v7, v4

    move v8, v11

    goto :goto_10

    :catchall_b
    move-exception v0

    move/from16 v42, v4

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object/from16 v46, v9

    move/from16 v47, v10

    goto :goto_f

    :catchall_d
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    :goto_f
    :try_start_1c
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_f

    :cond_15
    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v7, v42

    :goto_10
    move/from16 v3, v43

    move-wide/from16 v4, v44

    move-object/from16 v9, v46

    const/4 v0, 0x0

    move-object/from16 v2, p1

    const/4 v6, 0x0

    goto/16 :goto_3

    :catchall_f
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    goto :goto_11

    :catchall_10
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    goto :goto_11

    :catchall_11
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move/from16 v42, v7

    move-object/from16 v46, v9

    :goto_11
    :try_start_1d
    monitor-exit v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_12
    move-exception v0

    goto :goto_11

    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
