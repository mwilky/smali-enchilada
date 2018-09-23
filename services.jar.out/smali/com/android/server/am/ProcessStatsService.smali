.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mInjectedScreenState:Ljava/lang/Boolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAm"
    .end annotation
.end field

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 9

    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_1

    return-void

    :cond_1
    move-object v3, v1

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 14

    move-object v8, p1

    const-wide/16 v0, 0x3c

    mul-long v2, p2, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    move-object v9, p0

    invoke-virtual {v9, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v0, "Unable to build stats!"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v11, v0

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v12, v0

    invoke-virtual {v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "Failure reading: "

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p7, :cond_2

    move-object/from16 v7, p6

    invoke-virtual {v11, v8, v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v7, p6

    if-nez p8, :cond_4

    if-eqz p9, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v11

    move-object v1, v8

    move-object v2, v7

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_4
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v11

    move-object v1, v8

    move-object v2, v7

    move-wide/from16 v3, p4

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    :goto_1
    return-void
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 43

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    move/from16 v19, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v20, 0x0

    move/from16 v21, v7

    const/4 v7, 0x1

    move-object/from16 v22, v0

    new-array v0, v7, [I

    move/from16 v23, v6

    const/4 v6, 0x0

    const/16 v24, 0x3

    aput v24, v0, v6

    const/16 v24, 0x1

    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    if-eqz v15, :cond_25

    move/from16 v26, v24

    move/from16 v24, v20

    move/from16 v20, v18

    move/from16 v18, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    move v0, v6

    :goto_0
    move/from16 v27, v0

    array-length v0, v15

    move/from16 v6, v27

    if-ge v6, v0, :cond_24

    aget-object v7, v15, v6

    const-string v0, "--checkin"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v19, 0x1

    goto/16 :goto_8

    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_8

    :cond_1
    const-string v0, "--csv"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_2
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v6, 0x1

    array-length v6, v15

    if-lt v0, v6, :cond_3

    const-string v6, "Error: argument required for --csv-screen"

    invoke-virtual {v14, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_3
    move-object/from16 v30, v1

    const/4 v6, 0x1

    new-array v1, v6, [Z

    move/from16 v31, v2

    new-array v2, v6, [Ljava/lang/String;

    sget-object v6, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v32, v3

    const/4 v3, 0x4

    move/from16 v33, v4

    aget-object v4, v15, v0

    invoke-static {v6, v3, v4, v1, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_4
    const/4 v6, 0x0

    aget-boolean v1, v1, v6

    nop

    move v6, v0

    move/from16 v20, v1

    move-object/from16 v22, v3

    :goto_1
    move-object/from16 v1, v30

    :goto_2
    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_8

    :cond_5
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    const-string v0, "--csv-mem"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v6, 0x1

    array-length v1, v15

    if-lt v0, v1, :cond_6

    const-string v1, "Error: argument required for --csv-mem"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_6
    const/4 v1, 0x1

    new-array v2, v1, [Z

    new-array v3, v1, [Ljava/lang/String;

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v6, v15, v0

    invoke-static {v4, v1, v6, v2, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_7
    const/4 v6, 0x0

    aget-boolean v1, v2, v6

    nop

    move v6, v0

    move/from16 v24, v1

    move-object v1, v4

    goto :goto_2

    :cond_8
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v6, 0x1

    array-length v1, v15

    if-lt v0, v1, :cond_9

    const-string v1, "Error: argument required for --csv-proc"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_9
    const/4 v1, 0x1

    new-array v2, v1, [Z

    new-array v3, v1, [Ljava/lang/String;

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v6, v15, v0

    invoke-static {v4, v1, v6, v2, v3}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in \""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_a
    const/4 v6, 0x0

    aget-boolean v1, v2, v6

    nop

    move v6, v0

    move/from16 v26, v1

    move-object/from16 v25, v4

    goto/16 :goto_1

    :cond_b
    const-string v0, "--details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_c
    const-string v0, "--full-details"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_d
    const-string v0, "--hours"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 v1, v6, 0x1

    array-length v0, v15

    if-lt v1, v0, :cond_e

    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_e
    :try_start_0
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v0

    nop

    :goto_3
    move v6, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_f
    const-string v0, "--last"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    add-int/lit8 v1, v6, 0x1

    array-length v0, v15

    if-lt v1, v0, :cond_10

    const-string v0, "Error: argument required for --last"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_10
    :try_start_1
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v0

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --last argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_11
    const-string v0, "--max"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    add-int/lit8 v1, v6, 0x1

    array-length v0, v15

    if-lt v1, v0, :cond_12

    const-string v0, "Error: argument required for --max"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_12
    :try_start_2
    aget-object v0, v15, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v11, v0

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --max argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_13
    const-string v0, "--active"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    const/4 v4, 0x1

    move/from16 v18, v0

    :goto_4
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_8

    :cond_14
    const-string v0, "--current"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    goto :goto_4

    :cond_15
    const-string v0, "--commit"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {v13, v3, v3}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    const-string v0, "Process stats committed."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_16
    const-string v0, "--reset"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move/from16 v34, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    const-string v0, "Process stats reset."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move/from16 v34, v5

    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_17
    move/from16 v34, v5

    const-string v0, "--clear"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    invoke-direct {v13, v5, v4, v4}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const-string v2, "All process stats cleared."

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_19
    const-string v0, "--write"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const-string v0, "Process stats written."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_7
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v5, v34

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1a
    const-string v0, "--read"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v13, v0, v2}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    const-string v0, "Process stats read."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1b
    const-string v0, "--start-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    const-string v0, "Started high frequency sampling."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1c
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v21, 0x1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1d
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v21, 0x1

    goto/16 :goto_7

    :catchall_8
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1e
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v21, 0x1

    goto/16 :goto_7

    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_1f
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    iput-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/16 v21, 0x1

    goto/16 :goto_7

    :catchall_a
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_20
    const-string v0, "-h"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_21
    const-string v0, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    const/4 v1, 0x1

    move v5, v0

    move/from16 v23, v1

    goto/16 :goto_1

    :cond_22
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_23
    move-object v0, v7

    const/4 v1, 0x1

    move-object v12, v0

    move v5, v1

    goto/16 :goto_1

    :goto_8
    const/4 v7, 0x1

    add-int/lit8 v0, v6, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_24
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    move/from16 v34, v5

    move v7, v10

    move-object/from16 v10, v22

    move/from16 v22, v18

    move/from16 v18, v8

    move v8, v9

    move-object/from16 v9, v25

    move/from16 v25, v24

    move/from16 v24, v20

    move/from16 v20, v11

    move-object/from16 v11, v30

    goto :goto_9

    :cond_25
    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move/from16 v34, v4

    move v7, v9

    move/from16 v26, v24

    move-object/from16 v9, v25

    move/from16 v24, v18

    move/from16 v25, v20

    move/from16 v18, v5

    move/from16 v20, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object v11, v0

    :goto_9
    if-eqz v21, :cond_26

    return-void

    :cond_26
    if-eqz v32, :cond_2a

    const-string v0, "Processes running summed over"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v24, :cond_27

    const/4 v0, 0x0

    :goto_a
    array-length v1, v10

    if-ge v0, v1, :cond_27

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v10, v0

    invoke-static {v14, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_27
    if-nez v25, :cond_28

    const/4 v0, 0x0

    :goto_b
    array-length v1, v11

    if-ge v0, v1, :cond_28

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v11, v0

    invoke-static {v14, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    if-nez v26, :cond_29

    const/16 v28, 0x0

    :goto_c
    move/from16 v0, v28

    array-length v1, v9

    if-ge v0, v1, :cond_29

    const-string v1, " "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v9, v0

    aget-object v1, v1, v2

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v28, v0, 0x1

    goto :goto_c

    :cond_29
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    const/4 v3, 0x0

    move-object v1, v13

    move-object v2, v14

    move/from16 v4, v24

    move-object v5, v10

    move-object/from16 v27, v6

    move/from16 v6, v25

    move/from16 v35, v7

    move-object v7, v11

    move/from16 v36, v8

    move/from16 v8, v26

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-wide/from16 v10, v16

    move-object/from16 v39, v12

    :try_start_19
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    monitor-exit v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_b
    move-exception v0

    goto :goto_d

    :catchall_c
    move-exception v0

    move-object/from16 v27, v6

    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    :goto_d
    :try_start_1a
    monitor-exit v27
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_2a
    move/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v30, v9

    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    move/from16 v12, v36

    if-eqz v12, :cond_2b

    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    int-to-long v3, v12

    move-object v1, v13

    move-object v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v7, v39

    move/from16 v8, v31

    move/from16 v9, v34

    move/from16 v10, v18

    move/from16 v11, v23

    move/from16 v27, v12

    move/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    return-void

    :cond_2b
    move/from16 v27, v12

    move/from16 v12, v35

    if-lez v12, :cond_37

    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-direct {v13, v1, v1, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v12, v1, :cond_2c

    const-string v1, "Only have "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " data sets"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2c
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v9, v1

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v10, v1

    invoke-virtual {v13, v10, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_2f

    if-nez v19, :cond_2d

    if-eqz v31, :cond_2e

    :cond_2d
    const-string v1, "err,"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2e
    const-string v1, "Failure reading "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "; "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2f
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v1, ".ci"

    invoke-virtual {v11, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v29

    if-nez v19, :cond_36

    if-eqz v31, :cond_30

    goto :goto_11

    :cond_30
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v29, :cond_31

    const-string v1, " (checked in)"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_31
    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v34, :cond_34

    if-eqz v18, :cond_32

    goto :goto_f

    :cond_32
    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v39

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    :cond_33
    :goto_e
    move-object/from16 v8, v39

    goto :goto_12

    :cond_34
    :goto_f
    if-nez v18, :cond_35

    move v6, v7

    goto :goto_10

    :cond_35
    const/4 v6, 0x0

    :goto_10
    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v39

    move-wide/from16 v4, v16

    move/from16 v7, v23

    move/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    if-eqz v23, :cond_33

    const-string v1, "  mFile="

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    :cond_36
    :goto_11
    move-object/from16 v8, v39

    invoke-virtual {v10, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_37
    move-object/from16 v8, v39

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez v23, :cond_39

    if-eqz v19, :cond_38

    goto :goto_13

    :cond_38
    move v9, v1

    move/from16 v35, v7

    const/16 v39, 0x0

    goto/16 :goto_1e

    :cond_39
    :goto_13
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez v19, :cond_3a

    move v0, v7

    goto :goto_14

    :cond_3a
    const/4 v0, 0x0

    :goto_14
    const/4 v2, 0x0

    :try_start_1b
    invoke-direct {v13, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    move-object v9, v0

    if-eqz v9, :cond_46

    if-eqz v19, :cond_3b

    const/4 v6, 0x0

    goto :goto_15

    :cond_3b
    :try_start_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v6, v0, v20

    :goto_15
    move v0, v6

    if-gez v0, :cond_3c

    const/4 v0, 0x0

    :cond_3c
    move v10, v0

    move v0, v10

    :goto_16
    move v11, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    if-ge v11, v0, :cond_46

    :try_start_1d
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    const/4 v6, 0x0

    :try_start_1e
    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v4, v2

    invoke-virtual {v13, v4, v0}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_3f

    if-nez v19, :cond_3d

    if-eqz v31, :cond_3e

    :cond_3d
    const-string v2, "err,"

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3e
    const-string v2, "Failure reading "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "; "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    move/from16 v39, v6

    move/from16 v35, v7

    goto/16 :goto_1d

    :cond_3f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    const-string v2, ".ci"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    move/from16 v28, v2

    if-nez v19, :cond_44

    if-eqz v31, :cond_40

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    goto/16 :goto_1a

    :cond_40
    if-eqz v1, :cond_41

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    goto :goto_17

    :cond_41
    const/4 v1, 0x1

    :goto_17
    move/from16 v29, v1

    :try_start_1f
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    if-eqz v28, :cond_42

    :try_start_20
    const-string v1, " (checked in)"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v1, v29

    goto/16 :goto_27

    :catch_3
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    move/from16 v1, v29

    goto/16 :goto_1c

    :cond_42
    :goto_18
    :try_start_21
    const-string v1, ":"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-eqz v18, :cond_43

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v1, v4

    move-object v2, v14

    move-object v3, v8

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move-wide/from16 v4, v16

    move/from16 v39, v6

    move/from16 v6, v35

    move/from16 v35, v7

    move/from16 v7, v36

    move-object/from16 v42, v8

    move/from16 v8, v22

    :try_start_22
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_19

    :catchall_e
    move-exception v0

    move/from16 v35, v12

    move/from16 v1, v29

    move-object/from16 v28, v42

    goto/16 :goto_27

    :catch_4
    move-exception v0

    move/from16 v1, v29

    move-object/from16 v8, v42

    goto/16 :goto_1c

    :cond_43
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    move-object/from16 v1, v40

    move-object v2, v14

    move-object/from16 v3, v42

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :goto_19
    move/from16 v1, v29

    move-object/from16 v2, v40

    move-object/from16 v8, v42

    goto :goto_1b

    :catchall_f
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v1, v29

    goto/16 :goto_27

    :catch_5
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    move/from16 v1, v29

    goto :goto_1c

    :cond_44
    move-object/from16 v40, v4

    move-object/from16 v41, v5

    move/from16 v39, v6

    move/from16 v35, v7

    move-object/from16 v42, v8

    :goto_1a
    move-object/from16 v2, v40

    move-object/from16 v8, v42

    :try_start_23
    invoke-virtual {v2, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_1b
    if-eqz v19, :cond_45

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v41

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".ci"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_6
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    :cond_45
    goto :goto_1d

    :catch_6
    move-exception v0

    goto :goto_1c

    :catch_7
    move-exception v0

    move/from16 v39, v6

    move/from16 v35, v7

    goto :goto_1c

    :catch_8
    move-exception v0

    move/from16 v35, v7

    const/16 v39, 0x0

    :goto_1c
    :try_start_24
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    :goto_1d
    add-int/lit8 v0, v11, 0x1

    move/from16 v7, v35

    goto/16 :goto_16

    :catchall_10
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    goto/16 :goto_27

    :cond_46
    move/from16 v35, v7

    const/16 v39, 0x0

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    move v9, v1

    :goto_1e
    if-nez v19, :cond_4f

    iget-object v10, v13, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_15

    if-eqz v31, :cond_47

    :try_start_26
    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v14, v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move-object/from16 v28, v8

    move/from16 v29, v9

    goto :goto_23

    :catchall_11
    move-exception v0

    move-object/from16 v28, v8

    :goto_1f
    move/from16 v35, v12

    goto/16 :goto_25

    :cond_47
    if-eqz v9, :cond_48

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_11

    :cond_48
    :try_start_27
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    if-nez v34, :cond_4a

    if-eqz v18, :cond_49

    goto :goto_20

    :cond_49
    :try_start_28
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v2, v14

    move-object v3, v8

    move-wide/from16 v4, v16

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    move-object/from16 v28, v8

    goto :goto_22

    :cond_4a
    :goto_20
    :try_start_29
    iget-object v1, v13, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    if-nez v18, :cond_4b

    move/from16 v6, v35

    goto :goto_21

    :cond_4b
    move/from16 v6, v39

    :goto_21
    move-object v2, v14

    move-object v3, v8

    move-wide/from16 v4, v16

    move/from16 v7, v23

    move-object/from16 v28, v8

    move/from16 v8, v22

    :try_start_2a
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    if-eqz v23, :cond_4c

    :try_start_2b
    const-string v0, "  mFile="

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    goto :goto_22

    :catchall_12
    move-exception v0

    goto :goto_1f

    :cond_4c
    :goto_22
    const/4 v0, 0x1

    move/from16 v29, v0

    :goto_23
    :try_start_2c
    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v33, :cond_4e

    if-eqz v29, :cond_4d

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_4d
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x18

    move-object v1, v13

    move-object v2, v14

    move-wide/from16 v5, v16

    move-object/from16 v7, v28

    move/from16 v8, v31

    move/from16 v9, v34

    move/from16 v10, v18

    move/from16 v11, v23

    move/from16 v35, v12

    move/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v3, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto :goto_26

    :cond_4e
    move/from16 v35, v12

    goto :goto_26

    :catchall_13
    move-exception v0

    move/from16 v35, v12

    move/from16 v9, v29

    :goto_24
    goto :goto_25

    :catchall_14
    move-exception v0

    move/from16 v35, v12

    goto :goto_24

    :catchall_15
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    :goto_25
    :try_start_2d
    monitor-exit v10
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16
    move-exception v0

    goto :goto_25

    :cond_4f
    move-object/from16 v28, v8

    move/from16 v35, v12

    move/from16 v29, v9

    :goto_26
    return-void

    :catchall_17
    move-exception v0

    move-object/from16 v28, v8

    move/from16 v35, v12

    :goto_27
    iget-object v2, v13, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 14

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const-wide v3, 0x10b00000001L

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToProto(Landroid/util/proto/ProtoOutputStream;JJ)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-wide v9, 0x10b00000002L

    const/4 v11, 0x3

    move-object v7, p0

    move-object v8, v0

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    const-wide v9, 0x10b00000003L

    const/16 v11, 0x18

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    if-nez p3, :cond_1

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    const/16 v6, 0x20

    if-eq v4, v6, :cond_1

    if-eqz v4, :cond_1

    goto :goto_6

    :cond_1
    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    const/4 v6, 0x0

    if-nez v3, :cond_3

    aput-boolean v5, p3, v2

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    aget-boolean v7, p3, v2

    if-eq v7, v5, :cond_4

    const-string/jumbo v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v2

    return-object v6

    :cond_4
    :goto_3
    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_7

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v2

    :goto_4
    array-length v9, p0

    if-ge v8, v9, :cond_6

    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v2

    return-object v6

    :cond_7
    add-int/lit8 v3, v1, 0x1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    return-object v1
.end method

.method private updateFile()V
    .locals 5

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getCurrentMemoryState()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    :goto_0
    move v1, v3

    if-ltz v1, :cond_0

    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getMemFactorLocked()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    cmp-long v0, v8, p1

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {v1, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    :goto_0
    move v0, v6

    if-ltz v0, :cond_1

    iget-wide v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    cmp-long v6, v10, p1

    if-gez v6, :cond_1

    new-instance v6, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    add-int/lit8 v0, v0, -0x1

    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    invoke-virtual {v1, v10, v6}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v11, :cond_0

    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v14, v8

    :try_start_2
    iget-wide v7, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v12, v7

    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v7, "ProcessStatsService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_1

    :cond_0
    move-wide v14, v8

    const-string v7, "ProcessStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    move v6, v0

    move-wide v8, v14

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1
    move-wide v14, v8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v2, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide v14, v8

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide v14, v8

    goto :goto_3

    :cond_2
    move-wide v14, v8

    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/ProcessStatsService$3;

    const-string v6, "ProcessStats pipe output"

    invoke-direct {v5, v1, v6, v4, v0}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    const/4 v6, 0x0

    aget-object v6, v4, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    const-string v4, "ProcessStatsService"

    const-string v5, "Failed building output pipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-object v3

    :goto_4
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isMemFactorLowered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method performWriteState(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, v3

    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v3, "procstats"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    add-long/2addr v6, p1

    invoke-static {v3, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method readLocked(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    iget-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caught exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const-string v2, "ProcessStatsService"

    const-string v3, "Error reading process statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAm"
    .end annotation

    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_1
    if-eqz p2, :cond_2

    add-int/lit8 p1, p1, 0x4

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_7

    nop

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_2
    if-ltz v4, :cond_6

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_3
    if-ltz v6, :cond_5

    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_4
    if-ltz v9, :cond_4

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    return v1
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 8

    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public shutdownLocked()V
    .locals 2

    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruning old procstats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    new-instance v3, Landroid/util/AtomicFile;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5, v4}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public writeStateSyncLocked()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    return-void
.end method
