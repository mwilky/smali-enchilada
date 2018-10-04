.class public final Lcom/android/internal/app/procstats/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_BOUND:I = 0x2

.field public static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mBoundCount:I

.field private mBoundStartTime:J

.field private mBoundState:I

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mExecCount:I

.field private mExecStartTime:J

.field private mExecState:I

.field private final mName:Ljava/lang/String;

.field private mOwner:Ljava/lang/Object;

.field private final mPackage:Ljava/lang/String;

.field private mProc:Lcom/android/internal/app/procstats/ProcessState;

.field private final mProcessName:Ljava/lang/String;

.field private mRestarting:Z

.field private mRunCount:I

.field private mRunStartTime:J

.field private mRunState:I

.field private mStarted:Z

.field private mStartedCount:I

.field private mStartedStartTime:J

.field private mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput-object p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    return-void
.end method

.method private dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V
    .locals 21

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    move/from16 v11, p6

    if-eqz v11, :cond_1

    if-eqz p15, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " op count "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p3

    move/from16 v3, p7

    move/from16 v4, p8

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p0

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, p9

    move-wide/from16 v19, p11

    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/app/procstats/ServiceState;->dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J

    move-result-wide v0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v2, p4

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " count "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " / time "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    long-to-double v3, v0

    move-wide/from16 v5, p13

    long-to-double v7, v5

    div-double/2addr v3, v7

    invoke-static {v9, v3, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printPercent(Ljava/io/PrintWriter;D)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, p4

    move-wide/from16 v5, p13

    :goto_1
    return-void
.end method

.method private dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move/from16 v3, p10

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v6, p5

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v10}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    iget-object v2, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v11}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    iget-object v4, v0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v12

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    div-int/lit8 v0, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    move v14, v2

    move/from16 v2, p8

    if-eq v4, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v3, v0, :cond_2

    const/4 v9, 0x1

    sub-long v15, p13, p11

    add-long/2addr v12, v15

    :cond_2
    move/from16 v17, v4

    move-wide v4, v12

    invoke-static {v1, v0, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p9

    move-object/from16 v4, p3

    move/from16 v5, p4

    goto :goto_0

    :cond_3
    move/from16 v2, p8

    if-nez v9, :cond_4

    const/4 v0, -0x1

    if-eq v3, v0, :cond_4

    sub-long v4, p13, p11

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private updateRunning(IJ)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p1

    :goto_1
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p2, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_2

    :cond_2
    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v0, p1, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_6

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    const-string v0, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cleared while started: pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_4

    if-nez p2, :cond_3

    const-string v0, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " cleared while bound: pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " proc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_4
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_6

    if-nez p2, :cond_5

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service owner "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cleared while exec: pkg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " service="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " proc="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public commitStateTime(J)V
    .locals 5

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p1, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    :cond_3
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .locals 20

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v5, "Running"

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz p9, :cond_1

    if-eqz p10, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v18, v17

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v18, v16

    :goto_1
    const/4 v7, 0x0

    move-object v0, v15

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Started"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    const/4 v7, 0x1

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    if-eqz p9, :cond_3

    if-eqz p10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v17

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v16

    :goto_3
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Bound"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    const/4 v7, 0x2

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    if-eqz p9, :cond_5

    if-eqz p10, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v18, v17

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v18, v16

    :goto_5
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    const-string v5, "Executing"

    move-object/from16 v15, p0

    iget v6, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    const/4 v7, 0x3

    iget v8, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    if-eqz p9, :cond_7

    if-eqz p10, :cond_6

    goto :goto_6

    :cond_6
    goto :goto_7

    :cond_7
    :goto_6
    move/from16 v17, v16

    :goto_7
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJJZ)V

    if-eqz p10, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v1, :cond_8

    const-string v1, "        mOwner="

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8

    :cond_8
    move-object/from16 v2, p1

    :goto_8
    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v1, :cond_b

    :cond_9
    const-string v1, "        mStarted="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mRestarting="

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_9

    :cond_a
    move-object/from16 v2, p1

    move-object/from16 v0, p0

    :cond_b
    :goto_9
    return-void
.end method

.method public dumpTime(Ljava/io/PrintWriter;Ljava/lang/String;IIJJ)J
    .locals 20

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    move-wide v2, v1

    move v1, v4

    :goto_0
    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    if-ge v1, v6, :cond_6

    const/4 v6, -0x1

    move-wide v9, v2

    move v2, v4

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    add-int v3, v2, v1

    move-object/from16 v11, p0

    move/from16 v12, p3

    move/from16 v13, p4

    move-wide/from16 v14, p5

    move/from16 v16, v3

    move-wide/from16 v17, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/app/procstats/ServiceState;->getDuration(IIJIJ)J

    move-result-wide v11

    const-string v13, ""

    move/from16 v14, p4

    if-ne v14, v3, :cond_0

    if-eqz v0, :cond_0

    const-string v13, " (running)"

    :cond_0
    cmp-long v15, v11, v7

    if-eqz v15, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eq v5, v1, :cond_1

    nop

    move v15, v1

    goto :goto_2

    :cond_1
    nop

    const/4 v15, -0x1

    :goto_2
    invoke-static {v0, v15}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v5, v1

    if-eq v6, v2, :cond_2

    move v15, v2

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    :goto_3
    invoke-static {v0, v15, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v6, v2

    const-string v15, ": "

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11, v12, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-long/2addr v9, v11

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move/from16 v14, p4

    add-int/lit8 v1, v1, 0x4

    move-wide v2, v9

    goto :goto_0

    :cond_6
    move/from16 v14, p4

    cmp-long v1, v2, v7

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    TOTAL: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    return-wide v2
.end method

.method public dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 16

    move-object/from16 v15, p0

    const-string/jumbo v2, "pkgsvc-run"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-start"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-bound"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    const-string/jumbo v2, "pkgsvc-exec"

    iget v9, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iget v10, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iget-wide v11, v15, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v14}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIIJJ)V

    return-void
.end method

.method public getDuration(IIJIJ)J
    .locals 5

    mul-int/lit8 v0, p5, 0x4

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v1

    if-ne p2, p5, :cond_0

    sub-long v3, p6, p3

    add-long/2addr v1, v3

    :cond_0
    return-wide v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public isInUse()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRestarting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    const/4 v0, 0x1

    return v0
.end method

.method public resetSafely(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    move v1, v2

    nop

    :cond_3
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunStartTime:J

    return-void
.end method

.method public setBound(ZIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_4
    return-void
.end method

.method public setExecuting(ZIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v1, :cond_4

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-wide v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    iput-wide p3, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecStartTime:J

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_4
    return-void
.end method

.method public setMemFactor(IJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isRestarting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundState:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecState:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setProcess(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setRestarting(ZIJ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->updateStartedState(IJ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateStartedState(IJ)V
    .locals 7

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStarted:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mRestarting:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    move v4, p1

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v4, :cond_8

    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    if-eq v5, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    sub-long v5, p2, v5

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    :cond_5
    :goto_4
    iput v4, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedState:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedStartTime:J

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, v1, :cond_7

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/android/internal/app/procstats/ServiceState;->mProc:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    :cond_7
    :goto_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->updateRunning(IJ)V

    :cond_8
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
