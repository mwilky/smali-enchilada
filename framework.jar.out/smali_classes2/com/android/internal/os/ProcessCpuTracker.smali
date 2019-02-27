.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field public static final CPU_RECORD_FILE:Ljava/lang/String; = "/data/system/cputrack.log"

.field public static final CPU_RECORD_OLD_FILE:Ljava/lang/String; = "/data/system/cputrack.log.old"

.field private static DEBUG:Z = false

.field private static LIMIT:I = 0x0

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static MY_UID:I = 0x0

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z

.field private static sLastWriteTime:J

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSystemTempreture:I


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    const-string/jumbo v0, "persist.sys.cputrack.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    .line 65
    const-string/jumbo v0, "persist.sys.cputrack.limit"

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->LIMIT:I

    .line 67
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->localLOGV:Z

    .line 69
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 99
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 296
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    .line 1022
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->MY_UID:I

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/os/ProcessCpuTracker;->sLastWriteTime:J

    .line 1027
    sput v1, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_3
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 97
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 131
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 132
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 145
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 161
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 162
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 198
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    .line 316
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 317
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 318
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 319
    return-void
.end method

.method private static checkPermission()Z
    .locals 2

    .line 948
    sget v0, Lcom/android/internal/os/ProcessCpuTracker;->MY_UID:I

    if-gez v0, :cond_0

    .line 949
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->MY_UID:I

    .line 951
    :cond_0
    sget v0, Lcom/android/internal/os/ProcessCpuTracker;->MY_UID:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 952
    const/4 v0, 0x1

    return v0

    .line 954
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 34
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 436
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 436
    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    .line 437
    .local v11, "pids":[I
    const/4 v12, 0x0

    if-nez v11, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    array-length v0, v11

    :goto_0
    move v13, v0

    .line 438
    .local v13, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 439
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 440
    .local v1, "curStatsIndex":I
    move v14, v0

    move v0, v12

    .line 440
    .local v0, "i":I
    .local v14, "NS":I
    :goto_1
    move v15, v0

    .line 440
    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v13, :cond_19

    .line 441
    aget v4, v11, v15

    .line 442
    .local v4, "pid":I
    if-gez v4, :cond_1

    .line 443
    move v13, v4

    .line 444
    nop

    .line 601
    move v9, v7

    move-object/from16 v33, v11

    const/4 v11, 0x1

    goto/16 :goto_10

    .line 446
    :cond_1
    const/4 v0, 0x0

    if-ge v1, v14, :cond_2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    move-object v3, v2

    .line 448
    .local v3, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/16 v16, 0x2

    if-eqz v3, :cond_c

    iget v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_c

    .line 450
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 451
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 452
    add-int/lit8 v18, v1, 0x1

    .line 453
    .end local v1    # "curStatsIndex":I
    .local v18, "curStatsIndex":I
    sget-boolean v1, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "ProcessCpuTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    if-gez v7, :cond_3

    const-string/jumbo v5, "process"

    goto :goto_3

    :cond_3
    const-string/jumbo v5, "thread"

    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_4
    iget-boolean v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_b

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 460
    .local v1, "uptime":J
    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 461
    .local v5, "procStats":[J
    iget-object v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v19, v1

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 461
    .end local v1    # "uptime":J
    .local v19, "uptime":J
    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 463
    nop

    .line 440
    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .line 440
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .end local v19    # "uptime":J
    .local v25, "NP":I
    .local v26, "NS":I
    .local v27, "i":I
    .local v33, "pids":[I
    :goto_4
    const/4 v11, 0x1

    goto/16 :goto_8

    .line 466
    .end local v25    # "NP":I
    .end local v26    # "NS":I
    .end local v27    # "i":I
    .end local v33    # "pids":[I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    .restart local v19    # "uptime":J
    :cond_5
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    .line 467
    .local v1, "minfaults":J
    const/4 v0, 0x1

    aget-wide v9, v5, v0

    .line 468
    .local v9, "majfaults":J
    aget-wide v21, v5, v16

    move-wide/from16 v23, v1

    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 468
    .end local v1    # "minfaults":J
    .local v23, "minfaults":J
    mul-long v1, v21, v0

    .line 469
    .local v1, "utime":J
    const/4 v0, 0x3

    aget-wide v16, v5, v0

    move/from16 v25, v13

    iget-wide v12, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 469
    .end local v13    # "NP":I
    .restart local v25    # "NP":I
    mul-long v12, v12, v16

    .line 471
    .local v12, "stime":J
    move/from16 v26, v14

    move/from16 v27, v15

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 471
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    cmp-long v0, v1, v14

    if-nez v0, :cond_7

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_7

    .line 472
    const/4 v0, 0x0

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 473
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 474
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 475
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 476
    iget-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v14, :cond_6

    .line 477
    iput-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    .line 440
    .end local v1    # "utime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v9    # "majfaults":J
    .end local v11    # "pids":[I
    .end local v12    # "stime":J
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .restart local v33    # "pids":[I
    :cond_6
    move-object/from16 v33, v11

    goto :goto_4

    .line 482
    .end local v33    # "pids":[I
    .restart local v1    # "utime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .restart local v9    # "majfaults":J
    .restart local v11    # "pids":[I
    .restart local v12    # "stime":J
    .restart local v19    # "uptime":J
    .restart local v23    # "minfaults":J
    :cond_7
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v0, :cond_8

    .line 483
    const/4 v14, 0x1

    iput-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_5

    .line 486
    :cond_8
    const/4 v14, 0x1

    :goto_5
    if-gez v7, :cond_9

    .line 487
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 488
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 489
    iget-object v15, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v6

    move-wide/from16 v30, v9

    move-wide/from16 v28, v19

    move-wide/from16 v7, v23

    move-wide v9, v1

    move-object v1, v15

    .end local v1    # "utime":J
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .local v7, "minfaults":J
    .local v9, "utime":J
    .local v28, "uptime":J
    .local v30, "majfaults":J
    move v2, v4

    move-object v15, v3

    move/from16 v3, v16

    .line 489
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v32, v4

    move-object/from16 v4, v17

    .line 489
    .end local v4    # "pid":I
    .local v32, "pid":I
    move-object/from16 v16, v5

    move-object/from16 v33, v11

    const/4 v11, 0x1

    move-object v5, v14

    .line 489
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .local v16, "procStats":[J
    .restart local v33    # "pids":[I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_6

    .line 494
    .end local v7    # "minfaults":J
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v16    # "procStats":[J
    .end local v28    # "uptime":J
    .end local v30    # "majfaults":J
    .end local v32    # "pid":I
    .end local v33    # "pids":[I
    .restart local v1    # "utime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .local v9, "majfaults":J
    .restart local v11    # "pids":[I
    .restart local v19    # "uptime":J
    .restart local v23    # "minfaults":J
    :cond_9
    move-object v15, v3

    move/from16 v32, v4

    move-object/from16 v16, v5

    move-wide/from16 v30, v9

    move-object/from16 v33, v11

    move v11, v14

    move-wide/from16 v28, v19

    move-wide/from16 v7, v23

    move-wide v9, v1

    .line 494
    .end local v1    # "utime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .end local v19    # "uptime":J
    .end local v23    # "minfaults":J
    .restart local v7    # "minfaults":J
    .local v9, "utime":J
    .restart local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v16    # "procStats":[J
    .restart local v28    # "uptime":J
    .restart local v30    # "majfaults":J
    .restart local v32    # "pid":I
    .restart local v33    # "pids":[I
    :goto_6
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "Load"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " utime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " majfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v30

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v30    # "majfaults":J
    .local v2, "majfaults":J
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 500
    .end local v2    # "majfaults":J
    .restart local v30    # "majfaults":J
    :cond_a
    move-wide/from16 v2, v30

    .line 500
    .end local v30    # "majfaults":J
    .restart local v2    # "majfaults":J
    :goto_7
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v0, v28, v0

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 501
    move-wide/from16 v0, v28

    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 502
    .end local v28    # "uptime":J
    .local v0, "uptime":J
    iget-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v4, v9, v4

    long-to-int v4, v4

    iput v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 503
    iget-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v4, v12, v4

    long-to-int v4, v4

    iput v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 504
    iput-wide v9, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 505
    iput-wide v12, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 506
    iget-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v4, v7, v4

    long-to-int v4, v4

    iput v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 507
    iget-wide v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    iput v4, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 508
    iput-wide v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 509
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 510
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 511
    .end local v0    # "uptime":J
    .end local v2    # "majfaults":J
    .end local v7    # "minfaults":J
    .end local v9    # "utime":J
    .end local v12    # "stime":J
    .end local v16    # "procStats":[J
    goto :goto_8

    .line 440
    .end local v25    # "NP":I
    .end local v26    # "NS":I
    .end local v27    # "i":I
    .end local v32    # "pid":I
    .end local v33    # "pids":[I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .local v15, "i":I
    :cond_b
    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    .line 440
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v25    # "NP":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v33    # "pids":[I
    :goto_8
    move/from16 v1, v18

    move/from16 v14, v26

    move-object/from16 v8, p5

    move/from16 v9, p2

    goto/16 :goto_f

    .line 516
    .end local v18    # "curStatsIndex":I
    .end local v25    # "NP":I
    .end local v26    # "NS":I
    .end local v27    # "i":I
    .end local v33    # "pids":[I
    .local v1, "curStatsIndex":I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    :cond_c
    move/from16 v32, v4

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v11, 0x1

    move-object v15, v3

    .line 516
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v25    # "NP":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v32    # "pid":I
    .restart local v33    # "pids":[I
    if-eqz v15, :cond_10

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v7, v32

    if-le v2, v7, :cond_d

    .line 518
    .end local v32    # "pid":I
    .local v7, "pid":I
    move-object/from16 v8, p5

    move/from16 v9, p2

    goto :goto_b

    .line 584
    :cond_d
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 585
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 586
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 587
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 588
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 589
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 590
    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    add-int/lit8 v14, v26, -0x1

    .line 592
    .end local v26    # "NS":I
    .restart local v14    # "NS":I
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ProcessCpuTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    move/from16 v9, p2

    if-gez v9, :cond_e

    const-string/jumbo v3, "process"

    goto :goto_9

    :cond_e
    const-string/jumbo v3, "thread"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 597
    :cond_f
    move/from16 v9, p2

    :goto_a
    add-int/lit8 v0, v27, -0x1

    .line 598
    .end local v27    # "i":I
    .local v0, "i":I
    nop

    .line 440
    move/from16 v27, v0

    goto/16 :goto_f

    .line 518
    .end local v0    # "i":I
    .end local v7    # "pid":I
    .end local v14    # "NS":I
    .restart local v26    # "NS":I
    .restart local v27    # "i":I
    .restart local v32    # "pid":I
    :cond_10
    move/from16 v7, v32

    move-object/from16 v8, p5

    move/from16 v9, p2

    .line 518
    .end local v32    # "pid":I
    .restart local v7    # "pid":I
    :goto_b
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    invoke-direct {v2, v7, v9, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v10, v2

    .line 519
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v10, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 520
    add-int/lit8 v12, v1, 0x1

    .line 521
    .end local v1    # "curStatsIndex":I
    .local v12, "curStatsIndex":I
    add-int/lit8 v14, v26, 0x1

    .line 522
    .end local v26    # "NS":I
    .restart local v14    # "NS":I
    sget-boolean v1, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "ProcessCpuTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    if-gez v9, :cond_11

    const-string/jumbo v3, "process"

    goto :goto_c

    :cond_11
    const-string/jumbo v3, "thread"

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_12
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 527
    .local v13, "procStatsString":[Ljava/lang/String;
    iget-object v15, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 528
    .local v15, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 529
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v1, v13, v15, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 537
    const/4 v0, 0x5

    aget-wide v0, v15, v0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 539
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 540
    const/4 v0, 0x0

    aget-object v1, v13, v0

    iput-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 541
    aget-wide v0, v15, v11

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 542
    aget-wide v0, v15, v16

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 543
    const/4 v0, 0x3

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 544
    const/4 v0, 0x4

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_d

    .line 551
    :cond_13
    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 553
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 554
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 557
    :goto_d
    if-gez v9, :cond_15

    .line 558
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 559
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    .line 560
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v0, v6

    move-object/from16 v16, v2

    move v2, v7

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 560
    .end local v5    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_e

    .line 568
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_14
    move-object/from16 v17, v5

    .line 568
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_e

    .line 563
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_15
    move-object/from16 v17, v5

    .line 563
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_16

    .line 564
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 565
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 568
    :cond_16
    :goto_e
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "Load"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats added "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " utime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " stime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " minfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " majfaults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_17
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 573
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 574
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 575
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 576
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 577
    if-nez p3, :cond_18

    iget-boolean v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_18

    .line 578
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 440
    .end local v7    # "pid":I
    .end local v10    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v13    # "procStatsString":[Ljava/lang/String;
    .end local v15    # "procStats":[J
    .end local v17    # "path":Ljava/lang/String;
    :cond_18
    move v1, v12

    .line 440
    .end local v12    # "curStatsIndex":I
    .restart local v1    # "curStatsIndex":I
    :goto_f
    add-int/lit8 v2, v27, 0x1

    .line 440
    .end local v27    # "i":I
    .local v2, "i":I
    move v0, v2

    move v7, v9

    move/from16 v13, v25

    move-object/from16 v11, v33

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    const/4 v12, 0x0

    goto/16 :goto_1

    .line 601
    .end local v2    # "i":I
    .end local v25    # "NP":I
    .end local v33    # "pids":[I
    .restart local v11    # "pids":[I
    .local v13, "NP":I
    :cond_19
    move v9, v7

    move-object/from16 v33, v11

    move/from16 v25, v13

    move/from16 v26, v14

    const/4 v11, 0x1

    .line 601
    .end local v11    # "pids":[I
    .restart local v33    # "pids":[I
    :goto_10
    if-ge v1, v14, :cond_1b

    .line 603
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 604
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 605
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 606
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 607
    iput v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 608
    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 609
    iput-boolean v11, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 610
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    add-int/lit8 v14, v14, -0x1

    .line 612
    sget-boolean v4, Lcom/android/internal/os/ProcessCpuTracker;->localLOGV:Z

    if-eqz v4, :cond_1a

    const-string v4, "ProcessCpuTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1a
    goto :goto_10

    .line 615
    :cond_1b
    return-object v33
.end method

.method private getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 924
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 925
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    .line 926
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/ProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 929
    move-object v0, v1

    .line 930
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 931
    .local v2, "i":I
    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 932
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 935
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 936
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 939
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 940
    :cond_3
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 941
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 943
    :cond_4
    return-void
.end method

.method private static persistToDisk()Z
    .locals 10

    .line 1047
    const-string v0, "/data/system/cputrack.log"

    .line 1048
    .local v0, "logName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1050
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1051
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1053
    :cond_0
    const/4 v3, 0x0

    .line 1058
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x32000

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_1

    .line 1059
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v5

    goto :goto_0

    .line 1061
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/system/cputrack.log.old"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1063
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1064
    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1066
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v3, v7

    .line 1073
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_0
    nop

    .line 1076
    :try_start_1
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1077
    :try_start_2
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1078
    .local v8, "record":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1079
    .end local v8    # "record":Ljava/lang/String;
    goto :goto_1

    .line 1080
    :cond_3
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1081
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1087
    nop

    .line 1089
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1093
    goto :goto_2

    .line 1090
    :catch_0
    move-exception v4

    .line 1092
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1094
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 1097
    return v6

    .line 1081
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1087
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 1082
    :catch_1
    move-exception v5

    .line 1084
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1085
    nop

    .line 1087
    nop

    .line 1089
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1093
    goto :goto_3

    .line 1090
    :catch_2
    move-exception v6

    .line 1092
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1094
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, 0x0

    .line 1085
    return v4

    .line 1087
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 1089
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1093
    goto :goto_5

    .line 1090
    :catch_3
    move-exception v5

    .line 1092
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 1094
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v3, 0x0

    throw v4

    .line 1068
    :catch_4
    move-exception v5

    .line 1070
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1071
    const/4 v3, 0x0

    .line 1072
    return v4
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 849
    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    if-nez p5, :cond_0

    const/4 v0, 0x1

    .line 851
    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    move v15, v0

    goto :goto_0

    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_0
    move/from16 v15, p5

    .end local p5    # "totalTime":I
    .local v15, "totalTime":I
    :goto_0
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 852
    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    if-ltz v7, :cond_1

    .line 854
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 855
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    :cond_1
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 860
    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 862
    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    if-lez v10, :cond_2

    .line 864
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    int-to-long v2, v10

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 866
    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    :cond_2
    if-lez v11, :cond_3

    .line 869
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 871
    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    :cond_3
    if-lez v12, :cond_4

    .line 874
    const-string v0, " + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 875
    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 876
    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    :cond_4
    if-gtz v13, :cond_5

    if-lez v14, :cond_7

    .line 879
    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 880
    if-lez v13, :cond_6

    .line 881
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 883
    const-string v0, " minor"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    :cond_6
    if-lez v14, :cond_7

    .line 886
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 888
    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 891
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 892
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 834
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 835
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 836
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 837
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 838
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 839
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 840
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 841
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 844
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 898
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 899
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    move-object v2, v1

    .line 901
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 902
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 903
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 905
    if-lez v3, :cond_2

    .line 907
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 908
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    aget-byte v6, v6, v5

    if-ne v6, p2, :cond_0

    .line 909
    goto :goto_1

    .line 907
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 912
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/os/ProcessCpuTracker;->mBuffer:[B

    invoke-direct {v6, v7, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 918
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 912
    return-object v6

    .line 917
    .end local v3    # "len":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 918
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 915
    :catch_0
    move-exception v3

    goto :goto_2

    .line 914
    :catch_1
    move-exception v3

    .line 917
    :cond_2
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 918
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 919
    nop

    .line 920
    return-object v1
.end method

.method public static tryPersistToDisk()V
    .locals 3

    .line 1030
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    return-void

    .line 1033
    :cond_0
    sget-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1034
    return-void

    .line 1037
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1039
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->persistToDisk()Z

    .line 1040
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/os/ProcessCpuTracker;->sLastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1043
    nop

    .line 1044
    return-void

    .line 1042
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 8

    .line 691
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    .line 692
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 695
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 696
    .local v4, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v5, :cond_2

    .line 697
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 699
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object v3, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 701
    .local v3, "M":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 702
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 703
    .local v6, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v7, :cond_0

    .line 704
    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v6    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 707
    .end local v5    # "j":I
    :cond_1
    iget-object v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 694
    .end local v3    # "M":I
    .end local v4    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 712
    iput-boolean v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 714
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method public final collectAnbormalStats()Z
    .locals 11

    .line 958
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 959
    const-string/jumbo v0, "persist.sys.cputrack.limit"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->LIMIT:I

    .line 961
    :cond_0
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->checkPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 962
    return v1

    .line 964
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 965
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-wide v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 972
    const-string/jumbo v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    sget v3, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    const-string v3, "C]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    sget-boolean v3, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 976
    const-string v3, "ProcessCpuTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectAnbormalStats # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 978
    .local v3, "N":I
    const/4 v4, 0x1

    .line 979
    .local v4, "noRecord":Z
    nop

    .line 979
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 980
    iget-object v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 981
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-eqz v5, :cond_4

    iget-wide v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 982
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    iget-wide v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    div-long/2addr v6, v8

    .line 983
    .local v6, "percent":J
    sget v8, Lcom/android/internal/os/ProcessCpuTracker;->LIMIT:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 984
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 985
    :cond_3
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 992
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 996
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    iget-wide v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 998
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v6    # "percent":J
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1002
    .end local v1    # "i":I
    :cond_5
    if-nez v4, :cond_6

    .line 1003
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1004
    :try_start_0
    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1008
    :cond_6
    :goto_1
    const/4 v1, 0x0

    .line 1009
    .local v1, "needSave":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1010
    .local v5, "now":J
    sget-wide v7, Lcom/android/internal/os/ProcessCpuTracker;->sLastWriteTime:J

    sub-long v7, v5, v7

    const-wide/32 v9, 0x1b7740

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    .line 1012
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 1013
    const/4 v1, 0x1

    goto :goto_2

    .line 1015
    :cond_7
    sget-object v7, Lcom/android/internal/os/ProcessCpuTracker;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_8

    .line 1016
    const/4 v1, 0x1

    .line 1019
    :cond_8
    :goto_2
    return v1
.end method

.method public final countStats()I
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .line 737
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 738
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 7
    .param p1, "pid"    # I

    .line 623
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 624
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 626
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 628
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 630
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 632
    .end local v3    # "time":J
    :cond_0
    const-wide/16 v3, 0x0

    monitor-exit v0

    return-wide v3

    .line 633
    .end local v1    # "statFile":Ljava/lang/String;
    .end local v2    # "statsData":[J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    .line 675
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .line 654
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .line 661
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .line 668
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .line 647
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 721
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 728
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 729
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 730
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v2    # "p":I
    :cond_1
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .line 683
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 684
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 685
    const/4 v1, 0x0

    return v1

    .line 687
    :cond_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 742
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init()V
    .locals 3

    .line 329
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 332
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 322
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public final printCpuTrack(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1101
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->tryPersistToDisk()V

    .line 1102
    const-string v0, "$CPU TRACK:v2\t uid pid name percent utime stime uptime\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1104
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 1105
    .local v1, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/cputrack.log.old"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/io/File;

    const-string v5, "/data/system/cputrack.log"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 1106
    .local v2, "filelist":[Ljava/io/File;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 1107
    .local v3, "buffer":[B
    array-length v6, v2

    move-object v7, v1

    move v1, v4

    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v7, "is":Ljava/io/FileInputStream;
    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v8, v2, v1

    .line 1109
    .local v8, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    .line 1122
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1123
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_3

    .line 1110
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v7, v9

    .line 1111
    move v9, v5

    .line 1112
    .local v9, "len":I
    :cond_1
    :goto_1
    if-lez v9, :cond_2

    .line 1113
    invoke-virtual {v7, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v9, v10

    .line 1114
    if-lez v9, :cond_1

    .line 1115
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3, v4, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1118
    :cond_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "len":I
    goto :goto_2

    .line 1122
    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1123
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 1120
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1119
    :catch_1
    move-exception v9

    .line 1122
    .end local v8    # "file":Ljava/io/File;
    :goto_2
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1123
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1124
    nop

    .line 1107
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    :cond_3
    return-void
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .line 746
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 747
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 748
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 750
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 752
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 754
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 755
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 1
    .param p1, "now"    # J

    .line 760
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final printCurrentState(JI)Ljava/lang/String;
    .locals 32
    .param p1, "now"    # J
    .param p3, "numProcess"    # I

    move-object/from16 v13, p0

    .line 767
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 769
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 771
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v11, v0

    .line 772
    .local v11, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v10, 0x0

    const/16 v1, 0x400

    invoke-direct {v0, v11, v10, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v9, v0

    .line 774
    .local v9, "pw":Ljava/io/PrintWriter;
    const-string v0, "CPU usage from "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 776
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 777
    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 779
    const-string/jumbo v0, "ms ago"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_0
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 782
    const-string/jumbo v0, "ms to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 784
    const-string/jumbo v0, "ms later"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 786
    :goto_0
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 788
    const-string v0, " to "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 790
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v14, v0, v2

    .line 793
    .local v14, "sampleTime":J
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v16, v0, v2

    .line 794
    .local v16, "sampleRealTime":J
    const-wide/16 v0, 0x0

    cmp-long v2, v16, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_1

    mul-long v0, v14, v3

    div-long v0, v0, v16

    nop

    :cond_1
    move-wide v7, v0

    .line 795
    .local v7, "percAwake":J
    cmp-long v0, v7, v3

    if-eqz v0, :cond_2

    .line 796
    const-string v0, " with "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v9, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 798
    const-string v0, "% awake"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    :cond_2
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v6, v0, v1

    .line 805
    .local v6, "totalTime":I
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " over sample time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v4, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_3
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 809
    .local v5, "N":I
    move v0, v10

    .line 809
    .local v0, "i":I
    :goto_1
    move v4, v0

    .line 809
    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v5, :cond_9

    .line 810
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 811
    .local v3, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_4

    const-string v0, " +"

    :goto_2
    move-object v2, v0

    goto :goto_3

    :cond_4
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_5

    const-string v0, " -"

    goto :goto_2

    :cond_5
    const-string v0, "  "

    goto :goto_2

    :goto_3
    iget v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v18, v11

    iget-wide v10, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .end local v11    # "sw":Ljava/io/StringWriter;
    .local v18, "sw":Ljava/io/StringWriter;
    long-to-int v10, v10

    iget v11, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-wide/from16 v20, v7

    iget v7, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 811
    .end local v7    # "percAwake":J
    .local v20, "percAwake":J
    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v8, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move/from16 v25, v8

    iget v8, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move-object/from16 v26, v0

    move-object v0, v13

    move/from16 v27, v1

    move-object v1, v9

    move-object/from16 v28, v3

    move/from16 v3, v27

    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v28, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v27, v4

    move-object/from16 v4, v26

    .line 811
    .end local v4    # "i":I
    .local v27, "i":I
    move/from16 v26, v5

    move v5, v10

    .line 811
    .end local v5    # "N":I
    .local v26, "N":I
    move/from16 v29, v6

    move v6, v11

    .line 811
    .end local v6    # "totalTime":I
    .local v29, "totalTime":I
    move/from16 v24, v8

    move/from16 v11, v25

    const/4 v8, 0x0

    move-object v10, v9

    move/from16 v9, v22

    .line 811
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .local v10, "pw":Ljava/io/PrintWriter;
    move-object/from16 v30, v10

    const/16 v19, 0x0

    move/from16 v10, v23

    .line 811
    .end local v10    # "pw":Ljava/io/PrintWriter;
    .local v30, "pw":Ljava/io/PrintWriter;
    move-object/from16 v31, v18

    .line 811
    .end local v18    # "sw":Ljava/io/StringWriter;
    .local v31, "sw":Ljava/io/StringWriter;
    move-object/from16 v18, v12

    move/from16 v12, v24

    .line 811
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 814
    move-object/from16 v12, v28

    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 814
    .end local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v12, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-nez v0, :cond_8

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 815
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 816
    .local v11, "M":I
    move/from16 v0, v19

    .line 816
    .local v0, "j":I
    :goto_4
    move v10, v0

    .line 816
    .end local v0    # "j":I
    .local v10, "j":I
    if-ge v10, v11, :cond_8

    .line 817
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 818
    .local v9, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    nop

    .line 819
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_6

    const-string v0, "   +"

    :goto_5
    move-object v2, v0

    goto :goto_6

    :cond_6
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_7

    const-string v0, "   -"

    goto :goto_5

    :cond_7
    const-string v0, "    "

    goto :goto_5

    :goto_6
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 818
    move-object v0, v13

    move-object/from16 v1, v30

    move-object/from16 v28, v9

    move/from16 v9, v22

    .line 818
    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v28, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v22, v10

    move/from16 v10, v23

    .line 818
    .end local v10    # "j":I
    .local v22, "j":I
    move/from16 v23, v11

    move/from16 v11, v24

    .line 818
    .end local v11    # "M":I
    .local v23, "M":I
    move-object/from16 v24, v12

    move/from16 v12, v25

    .line 818
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v24, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 816
    .end local v28    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v0, v22, 0x1

    .line 816
    .end local v22    # "j":I
    .restart local v0    # "j":I
    move/from16 v11, v23

    move-object/from16 v12, v24

    goto :goto_4

    .line 809
    .end local v0    # "j":I
    .end local v23    # "M":I
    .end local v24    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8
    add-int/lit8 v0, v27, 0x1

    .line 809
    .end local v27    # "i":I
    .local v0, "i":I
    move-object/from16 v12, v18

    move/from16 v10, v19

    move-wide/from16 v7, v20

    move/from16 v5, v26

    move/from16 v6, v29

    move-object/from16 v9, v30

    move-object/from16 v11, v31

    goto/16 :goto_1

    .line 826
    .end local v0    # "i":I
    .end local v18    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v20    # "percAwake":J
    .end local v26    # "N":I
    .end local v29    # "totalTime":I
    .end local v30    # "pw":Ljava/io/PrintWriter;
    .end local v31    # "sw":Ljava/io/StringWriter;
    .restart local v5    # "N":I
    .restart local v6    # "totalTime":I
    .restart local v7    # "percAwake":J
    .local v9, "pw":Ljava/io/PrintWriter;
    .local v11, "sw":Ljava/io/StringWriter;
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    :cond_9
    move/from16 v26, v5

    move/from16 v29, v6

    move-wide/from16 v20, v7

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v18, v12

    .line 826
    .end local v5    # "N":I
    .end local v6    # "totalTime":I
    .end local v7    # "percAwake":J
    .end local v9    # "pw":Ljava/io/PrintWriter;
    .end local v11    # "sw":Ljava/io/StringWriter;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v20    # "percAwake":J
    .restart local v26    # "N":I
    .restart local v29    # "totalTime":I
    .restart local v30    # "pw":Ljava/io/PrintWriter;
    .restart local v31    # "sw":Ljava/io/StringWriter;
    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object/from16 v1, v30

    move/from16 v5, v29

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 829
    move-object/from16 v0, v30

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 830
    .end local v30    # "pw":Ljava/io/PrintWriter;
    .local v0, "pw":Ljava/io/PrintWriter;
    move-object/from16 v1, v31

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 830
    .end local v31    # "sw":Ljava/io/StringWriter;
    .local v1, "sw":Ljava/io/StringWriter;
    return-object v2
.end method

.method public update()V
    .locals 36

    .line 335
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcessCpuTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 338
    .local v8, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 339
    .local v10, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 341
    .local v12, "nowWallTime":J
    iget-object v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 342
    .local v14, "sysCpu":[J
    const-string v0, "/proc/stat"

    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v15, 0x0

    invoke-static {v0, v1, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 345
    aget-wide v0, v14, v5

    aget-wide v2, v14, v6

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    .line 347
    .local v0, "usertime":J
    aget-wide v2, v14, v16

    iget-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v2, v5

    .line 349
    .local v2, "systemtime":J
    const/4 v4, 0x3

    aget-wide v5, v14, v4

    move-wide/from16 v19, v12

    iget-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v12    # "nowWallTime":J
    .local v19, "nowWallTime":J
    mul-long/2addr v5, v12

    .line 351
    .local v5, "idletime":J
    const/4 v12, 0x4

    aget-wide v21, v14, v12

    iget-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v12, v12, v21

    .line 352
    .local v12, "iowaittime":J
    const/16 v21, 0x5

    aget-wide v23, v14, v21

    move-wide/from16 v25, v5

    iget-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v5    # "idletime":J
    .local v25, "idletime":J
    mul-long v4, v4, v23

    .line 353
    .local v4, "irqtime":J
    const/4 v6, 0x6

    aget-wide v23, v14, v6

    move-wide/from16 v27, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v10    # "nowRealtime":J
    .local v27, "nowRealtime":J
    mul-long v10, v10, v23

    .line 360
    .local v10, "softirqtime":J
    move-wide/from16 v29, v8

    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .end local v8    # "nowUptime":J
    .local v29, "nowUptime":J
    sub-long v8, v0, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 361
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v8, v2, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 362
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v8, v12, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 363
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v8, v4, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 364
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v8, v10, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 365
    iget-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v8, v25, v8

    long-to-int v8, v8

    iput v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 366
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 368
    sget-boolean v8, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 369
    const-string v8, "Load"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total U:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-wide v23, v14, v15

    move-wide/from16 v31, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v10    # "softirqtime":J
    .local v31, "softirqtime":J
    mul-long v10, v10, v23

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " N:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-wide v17, v14, v10

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long v10, v10, v17

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " S:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v14, v16

    move-wide/from16 v33, v4

    iget-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .end local v4    # "irqtime":J
    .local v33, "irqtime":J
    mul-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " I:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget-wide v4, v14, v4

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v10

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " W:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-wide v4, v14, v4

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v10

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Q:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v14, v21

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v10

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " O:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v14, v6

    iget-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v10

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v4, "Load"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rel U:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " S:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " I:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Q:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    .end local v31    # "softirqtime":J
    .end local v33    # "irqtime":J
    .restart local v4    # "irqtime":J
    .restart local v10    # "softirqtime":J
    :cond_1
    move-wide/from16 v33, v4

    move-wide/from16 v31, v10

    const/4 v15, 0x0

    .end local v4    # "irqtime":J
    .end local v10    # "softirqtime":J
    .restart local v31    # "softirqtime":J
    .restart local v33    # "irqtime":J
    :goto_0
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 379
    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 380
    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 381
    move-wide/from16 v4, v33

    iput-wide v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 382
    .end local v33    # "irqtime":J
    .restart local v4    # "irqtime":J
    move-wide/from16 v8, v31

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 383
    .end local v31    # "softirqtime":J
    .local v8, "softirqtime":J
    move-wide/from16 v10, v25

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    .end local v0    # "usertime":J
    .end local v2    # "systemtime":J
    .end local v4    # "irqtime":J
    .end local v8    # "softirqtime":J
    .end local v12    # "iowaittime":J
    .end local v25    # "idletime":J
    goto :goto_1

    .line 398
    .end local v19    # "nowWallTime":J
    .end local v27    # "nowRealtime":J
    .end local v29    # "nowUptime":J
    .local v8, "nowUptime":J
    .local v10, "nowRealtime":J
    .local v12, "nowWallTime":J
    :cond_2
    move v15, v5

    move-wide/from16 v29, v8

    move-wide/from16 v27, v10

    move-wide/from16 v19, v12

    .end local v8    # "nowUptime":J
    .end local v10    # "nowRealtime":J
    .end local v12    # "nowWallTime":J
    .restart local v19    # "nowWallTime":J
    .restart local v27    # "nowRealtime":J
    .restart local v29    # "nowUptime":J
    :goto_1
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 399
    move-wide/from16 v8, v29

    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 400
    .end local v29    # "nowUptime":J
    .restart local v8    # "nowUptime":J
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 401
    move-wide/from16 v10, v27

    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 402
    .end local v27    # "nowRealtime":J
    .restart local v10    # "nowRealtime":J
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 403
    move-wide/from16 v12, v19

    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 405
    .end local v19    # "nowWallTime":J
    .restart local v12    # "nowWallTime":J
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v6, v0

    .line 407
    .local v6, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v7

    move-object v15, v6

    const/16 v17, 0x1

    move-object v6, v0

    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .local v15, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 410
    nop

    .line 412
    iget-object v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 413
    .local v0, "loadAverages":[F
    const-string v1, "/proc/loadavg"

    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 415
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 416
    .local v2, "load1":F
    aget v1, v0, v17

    .line 417
    .local v1, "load5":F
    aget v3, v0, v16

    .line 418
    .local v3, "load15":F
    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_3

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_3

    iget v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_4

    .line 419
    :cond_3
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 420
    iput v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 421
    iput v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 422
    invoke-virtual {v7, v2, v1, v3}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 426
    .end local v1    # "load5":F
    .end local v2    # "load1":F
    .end local v3    # "load15":F
    :cond_4
    sget-boolean v1, Lcom/android/internal/os/ProcessCpuTracker;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ProcessCpuTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 430
    iput-boolean v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 431
    return-void

    .line 409
    .end local v0    # "loadAverages":[F
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v15    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :catchall_1
    move-exception v0

    move-object v15, v6

    .end local v6    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v15    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_2
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
