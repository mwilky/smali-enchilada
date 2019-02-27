.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:J

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x5
        0x7
        0x1
        0x8
        0x9
        0xa
        0xb
        0xc
        0xb
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput-wide p7, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method private addCachedKill(IJJJ)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    :goto_0
    return-void
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-wide/from16 v2, p9

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    iget-wide v11, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v11, v11

    long-to-double v13, v2

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v11, v13

    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v13, v11, v13

    if-gez v13, :cond_1

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p11

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    move/from16 v13, p11

    invoke-virtual {v4, v0, v2, v3, v13}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    if-eqz p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_4
    :goto_1
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " common.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v1, :cond_0

    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling dead proc: name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " common.name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v7, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    iget-wide v3, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    goto/16 :goto_0

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No existing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for multi-proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for multi-proc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    iget v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v3, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v5, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    :cond_0
    return-void
.end method

.method public addPss(JJJZIJLandroid/util/ArrayMap;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const-wide/16 v2, 0x1

    packed-switch p8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssCount:J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalSlowPssTime:J

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssCount:J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mExternalPssTime:J

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssCount:J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllPollPssTime:J

    goto :goto_0

    :pswitch_3
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssCount:J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalAllMemPssTime:J

    goto :goto_0

    :pswitch_4
    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    add-long/2addr v5, v2

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssCount:J

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    add-long v4, v4, p9

    iput-wide v4, v2, Lcom/android/internal/app/procstats/ProcessStats;->mInternalSinglePssTime:J

    nop

    :goto_0
    if-nez p7, :cond_0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    return-void

    :cond_0
    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v6, 0x1

    move-wide/from16 v7, p1

    move-wide/from16 v9, p1

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    move-wide/from16 v15, p3

    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, p5

    move-wide/from16 v23, p5

    invoke-virtual/range {v4 .. v24}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p11 .. p11}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    invoke-direct {v0, v1, v3}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    iget-object v5, v4, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v7, 0x1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p5

    move-wide/from16 v24, p5

    invoke-virtual/range {v5 .. v25}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJJJJ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v2}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    new-instance v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v4}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    const/4 v5, 0x0

    move v7, v5

    const/4 v5, 0x0

    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v8

    const/4 v9, 0x7

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    if-ge v5, v8, :cond_3

    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v8, v5}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v13

    rem-int/lit8 v14, v13, 0xe

    move/from16 v16, v7

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v6

    cmp-long v11, v6, v11

    if-lez v11, :cond_2

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v11

    const/16 v16, 0x1

    if-gt v14, v10, :cond_0

    invoke-virtual {v2, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_0
    if-gt v14, v9, :cond_1

    invoke-virtual {v3, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v11, v12, v6, v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_2
    :goto_1
    move/from16 v7, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move/from16 v16, v7

    if-nez v16, :cond_4

    return-void

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    const-wide/16 v17, 0x3

    cmp-long v8, v13, v17

    if-gez v8, :cond_5

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v13, v11

    if-lez v8, :cond_5

    const/4 v5, 0x1

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v9, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v13, v14, v9, v10}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_5
    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_6

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_6

    const/4 v6, 0x1

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v2, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_6
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_7

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_7

    const/4 v7, 0x1

    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_7
    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_8

    if-nez v5, :cond_8

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_8

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v3, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_8
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_9

    if-nez v7, :cond_9

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_9

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_9
    iget-wide v8, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v17

    if-gez v8, :cond_a

    if-nez v6, :cond_a

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    cmp-long v8, v8, v11

    if-lez v8, :cond_a

    iget-wide v8, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    iget-wide v13, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    invoke-virtual {v4, v8, v9, v13, v14}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    :cond_a
    const/4 v15, 0x0

    :goto_2
    move v8, v15

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v9

    if-ge v8, v9, :cond_f

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v9, v8}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v10

    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v13, v9}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v13

    iget v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v15, v10, :cond_b

    iget-wide v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v11, p2, v11

    add-long/2addr v13, v11

    :cond_b
    rem-int/lit8 v11, v10, 0xe

    iget-object v12, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    aget-wide v21, v12, v11

    add-long v21, v21, v13

    aput-wide v21, v12, v11

    invoke-virtual {v0, v10}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v21

    const-wide/16 v19, 0x0

    cmp-long v12, v21, v19

    if-lez v12, :cond_c

    invoke-virtual {v0, v10}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v23

    move-wide/from16 v25, v13

    move-wide/from16 v12, v21

    move-wide/from16 v14, v23

    goto :goto_3

    :cond_c
    const/4 v12, 0x2

    if-gt v11, v12, :cond_d

    move-wide/from16 v25, v13

    iget-wide v12, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    iget-wide v14, v2, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    goto :goto_3

    :cond_d
    move-wide/from16 v25, v13

    const/4 v12, 0x7

    if-gt v11, v12, :cond_e

    iget-wide v13, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v27, v13

    iget-wide v12, v3, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide v14, v12

    move-wide/from16 v12, v27

    goto :goto_3

    :cond_e
    iget-wide v12, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    iget-wide v14, v4, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    :goto_3
    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    aget-wide v2, v0, v11

    long-to-double v2, v2

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v11

    move-object/from16 v31, v4

    move/from16 v32, v5

    int-to-double v4, v0

    mul-double/2addr v2, v4

    long-to-double v4, v14

    move/from16 v33, v6

    move/from16 v34, v7

    long-to-double v6, v12

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v0, v0, v11

    int-to-long v4, v0

    add-long/2addr v4, v12

    long-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    double-to-long v4, v2

    aput-wide v4, v0, v11

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v4, v0, v11

    int-to-long v4, v4

    add-long/2addr v4, v12

    long-to-int v4, v4

    aput v4, v0, v11

    iget-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v0, v11

    long-to-double v6, v14

    move-wide/from16 v35, v2

    move/from16 v37, v9

    move/from16 v38, v10

    move-wide/from16 v1, v25

    long-to-double v9, v1

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    aput-wide v4, v0, v11

    add-int/lit8 v15, v8, 0x1

    move-wide/from16 v11, v19

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10

    new-instance v9, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IJLjava/lang/String;J)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    return-object v0
.end method

.method public commitStateTime(J)V
    .locals 4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    array-length v6, v6

    if-ge v5, v6, :cond_a

    const/4 v6, 0x0

    :goto_1
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    array-length v7, v7

    if-ge v6, v7, :cond_9

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    array-length v8, v8

    if-ge v7, v8, :cond_8

    iget-object v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    aget v8, v8, v5

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    aget v9, v9, v6

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0xe

    iget-object v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    aget v9, v9, v7

    add-int/2addr v8, v9

    iget-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v11, p2

    invoke-virtual {v0, v8, v11, v12}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    iput-wide v9, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v9

    cmp-long v13, v9, v2

    if-lez v13, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v13

    move v15, v5

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v11

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    move-wide/from16 v20, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v9

    move-wide/from16 v22, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v9

    move-wide/from16 v24, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v9

    move-wide/from16 v26, v9

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v9

    move/from16 v28, v8

    move-wide/from16 v29, v9

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v16, 0x0

    cmp-long v8, v8, v16

    if-nez v8, :cond_0

    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    iput-wide v4, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v8, v22

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v31, v8

    move-wide/from16 v8, v24

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    move-wide/from16 v33, v8

    move-wide/from16 v8, v26

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    move-wide/from16 v35, v8

    move-wide/from16 v8, v29

    iput-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    move-wide/from16 v45, v2

    move-wide/from16 v41, v4

    move-wide v2, v8

    move-wide/from16 v39, v13

    move-wide/from16 v4, v20

    move-wide/from16 v47, v31

    move-wide/from16 v49, v33

    move-wide/from16 v51, v35

    move-wide v8, v6

    goto/16 :goto_5

    :cond_0
    move-wide/from16 v31, v22

    move-wide/from16 v33, v24

    move-wide/from16 v35, v26

    move-wide/from16 v8, v29

    move-wide/from16 v37, v8

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_1

    iput-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    :cond_1
    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    long-to-double v8, v8

    move-wide/from16 v39, v13

    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v13, v13

    mul-double/2addr v8, v13

    long-to-double v13, v4

    move-wide/from16 v41, v4

    move-wide/from16 v43, v6

    move-wide/from16 v4, v20

    long-to-double v6, v4

    mul-double/2addr v13, v6

    add-double/2addr v8, v13

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v4

    long-to-double v6, v6

    div-double/2addr v8, v6

    double-to-long v6, v8

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :cond_2
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    cmp-long v6, v11, v6

    if-gez v6, :cond_3

    iput-wide v11, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    :cond_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    long-to-double v6, v6

    iget-wide v8, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    move-wide/from16 v8, v43

    long-to-double v13, v8

    move-wide/from16 v45, v2

    long-to-double v2, v4

    mul-double/2addr v13, v2

    add-double/2addr v6, v13

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v6, v2

    double-to-long v2, v6

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    cmp-long v2, v31, v2

    if-lez v2, :cond_4

    move-wide/from16 v2, v31

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    :cond_4
    move-wide/from16 v2, v31

    :goto_3
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    cmp-long v6, v33, v6

    if-gez v6, :cond_5

    move-wide/from16 v6, v33

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minRss:J

    goto :goto_4

    :cond_5
    move-wide/from16 v6, v33

    :goto_4
    iget-wide v13, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    long-to-double v13, v13

    move-wide/from16 v47, v2

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    long-to-double v2, v2

    mul-double/2addr v13, v2

    move-wide/from16 v49, v6

    move-wide/from16 v2, v35

    long-to-double v6, v2

    move-wide/from16 v51, v2

    long-to-double v2, v4

    mul-double/2addr v6, v2

    add-double/2addr v13, v6

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v13, v2

    double-to-long v2, v13

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgRss:J

    iget-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    cmp-long v2, v37, v2

    if-lez v2, :cond_6

    move-wide/from16 v2, v37

    iput-wide v2, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxRss:J

    goto :goto_5

    :cond_6
    move-wide/from16 v2, v37

    :goto_5
    iget-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    goto :goto_6

    :cond_7
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    move/from16 v19, v7

    :goto_6
    add-int/lit8 v7, v19, 0x1

    move v5, v15

    move-wide/from16 v2, v16

    move/from16 v6, v18

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v16, v2

    move v15, v5

    move/from16 v18, v6

    add-int/lit8 v6, v18, 0x1

    goto/16 :goto_1

    :cond_9
    move-wide/from16 v16, v2

    move v15, v5

    add-int/lit8 v5, v15, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_1

    move-wide v4, v3

    move v3, v2

    :goto_2
    array-length v6, p3

    if-ge v3, v6, :cond_0

    aget v6, p1, v0

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v3

    add-int/2addr v6, v7

    invoke-virtual {p0, v6, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v7

    add-long/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-wide v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-wide v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v3
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_2

    const-string v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v4

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p1, v4}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v6, v3, v1}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x3

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x4

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x5

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x6

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v7, 0x7

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v7, 0x8

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x9

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    const/4 v0, 0x1

    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    if-eqz p2, :cond_0

    array-length v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    if-eqz p4, :cond_1

    array-length v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    :goto_1
    if-eqz p6, :cond_2

    array-length v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v7, :cond_11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v9, :cond_f

    if-eqz p2, :cond_3

    aget v14, v2, v11

    goto :goto_6

    :cond_3
    const/4 v14, 0x0

    :goto_6
    if-eqz p4, :cond_4

    aget v15, v4, v12

    goto :goto_7

    :cond_4
    const/4 v15, 0x0

    :goto_7
    if-eqz p6, :cond_5

    aget v16, v5, v13

    goto :goto_8

    :cond_5
    const/16 v16, 0x0

    :goto_8
    if-eqz p2, :cond_6

    const/4 v6, 0x1

    goto :goto_9

    :cond_6
    array-length v6, v2

    :goto_9
    if-eqz p4, :cond_7

    const/4 v10, 0x1

    goto :goto_a

    :cond_7
    array-length v10, v4

    :goto_a
    if-eqz p6, :cond_8

    move/from16 v17, v7

    const/4 v7, 0x1

    goto :goto_b

    :cond_8
    move/from16 v17, v7

    array-length v7, v5

    :goto_b
    const-wide/16 v18, 0x0

    move/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v8, v18

    const/16 v18, 0x0

    :goto_c
    move/from16 v22, v18

    move/from16 v23, v11

    move/from16 v11, v22

    if-ge v11, v6, :cond_e

    move-wide/from16 v18, v8

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v10, :cond_d

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v7, :cond_c

    if-eqz p2, :cond_9

    const/16 v22, 0x0

    goto :goto_f

    :cond_9
    aget v22, v2, v11

    :goto_f
    if-eqz p4, :cond_a

    const/16 v24, 0x0

    goto :goto_10

    :cond_a
    aget v24, v4, v8

    :goto_10
    if-eqz p6, :cond_b

    const/16 v25, 0x0

    goto :goto_11

    :cond_b
    aget v25, v5, v9

    :goto_11
    add-int v26, v14, v22

    add-int v26, v26, v15

    add-int v26, v26, v24

    mul-int/lit8 v26, v26, 0xe

    add-int v26, v26, v16

    add-int v1, v26, v25

    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v27

    add-long v18, v18, v27

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_e

    :cond_c
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto :goto_d

    :cond_d
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    add-int/lit8 v1, v11, 0x1

    move-wide/from16 v8, v18

    move/from16 v11, v23

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v18, v1

    goto :goto_c

    :cond_e
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v11, v23

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_5

    :cond_f
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_4

    :cond_10
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v11

    add-int/lit8 v11, v23, 0x1

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    goto/16 :goto_3

    :cond_11
    move-object/from16 v2, p0

    move-wide/from16 v3, p8

    move/from16 v17, v7

    move/from16 v20, v8

    move/from16 v21, v9

    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJLjava/lang/String;J)V
    .locals 2

    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p7, p8}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "pkgpss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "pkgkills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4, p5}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p6}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_3

    :cond_2
    const-string v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    return-void
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    move v9, v7

    move-wide v6, v5

    const/4 v5, 0x0

    :goto_0
    array-length v10, v2

    if-ge v5, v10, :cond_8

    const/4 v10, -0x1

    move-wide/from16 v16, v6

    const/4 v6, 0x0

    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_7

    const/4 v7, 0x0

    :goto_2
    array-length v8, v4

    if-ge v7, v8, :cond_6

    aget v8, v2, v5

    aget v14, v3, v6

    add-int v18, v8, v14

    mul-int/lit8 v18, v18, 0xe

    aget v19, v4, v7

    add-int v11, v18, v19

    iget-object v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v12, v11

    invoke-virtual {v15, v12}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    const-string v15, ""

    move-object/from16 v20, v15

    iget v15, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v15, v11, :cond_0

    const-string v15, " (running)"

    goto :goto_3

    :cond_0
    move-object/from16 v15, v20

    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v20, v12, v18

    if-eqz v20, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    move/from16 v21, v11

    const/4 v11, 0x1

    if-le v0, v11, :cond_2

    if-eq v9, v8, :cond_1

    nop

    move v0, v8

    goto :goto_4

    :cond_1
    nop

    const/4 v0, -0x1

    :goto_4
    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v9, v8

    :cond_2
    array-length v0, v3

    const/4 v11, 0x1

    if-le v0, v11, :cond_4

    nop

    if-eq v10, v14, :cond_3

    move v0, v14

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    :goto_5
    const/16 v11, 0x2f

    invoke-static {v1, v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v0, v14

    move v10, v0

    :cond_4
    sget-object v0, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v11, v4, v7

    aget-object v0, v0, v11

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v16, v16, v12

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v6, v16

    move-object/from16 v0, p0

    goto :goto_0

    :cond_8
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v0, v2

    const/4 v5, 0x1

    if-le v0, v5, :cond_9

    const/4 v0, -0x1

    invoke-static {v1, v0}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    :goto_6
    array-length v8, v3

    if-le v8, v5, :cond_a

    const/16 v5, 0x2f

    invoke-static {v1, v0, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    :cond_a
    const-string v0, "TOTAL  : "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v8, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_0
    array-length v9, v2

    if-ge v5, v9, :cond_8

    const/4 v9, -0x1

    move v12, v8

    move v8, v6

    const/4 v6, 0x0

    :goto_1
    array-length v13, v3

    if-ge v6, v13, :cond_7

    move v13, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_2
    array-length v14, v4

    if-ge v8, v14, :cond_6

    aget v14, v2, v5

    aget v15, v3, v6

    add-int v16, v14, v15

    mul-int/lit8 v16, v16, 0xe

    aget v17, v4, v8

    add-int v7, v16, v17

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-lez v16, :cond_5

    if-nez v9, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v20, v9

    const-string v9, "PSS/USS ("

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v9}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " entries):"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_3

    :cond_0
    move/from16 v20, v9

    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v21, v9

    const-string v9, "  "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    array-length v9, v2

    const/16 v16, -0x1

    const/4 v2, 0x1

    if-le v9, v2, :cond_2

    nop

    if-eq v12, v14, :cond_1

    move v9, v14

    goto :goto_4

    :cond_1
    nop

    move/from16 v9, v16

    :goto_4
    invoke-static {v1, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    move v12, v14

    :cond_2
    array-length v9, v3

    if-le v9, v2, :cond_4

    nop

    if-eq v13, v15, :cond_3

    move v2, v15

    goto :goto_5

    :cond_3
    move/from16 v2, v16

    :goto_5
    const/16 v9, 0x2f

    invoke-static {v1, v2, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    move v2, v15

    move v13, v2

    :cond_4
    sget-object v2, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v9, v4, v8

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, " samples "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v2, v16, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v2

    mul-long v2, v2, v18

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move/from16 v9, v21

    goto :goto_6

    :cond_5
    move/from16 v20, v9

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_2

    :cond_6
    move/from16 v20, v9

    add-int/lit8 v6, v6, 0x1

    move v9, v13

    move/from16 v8, v20

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    move v8, v12

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_8
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed for excessive CPU use: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Killed from cached state: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " times from pss "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v9, 0x400

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    mul-long/2addr v2, v9

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_a
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " / "

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {v13, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " / v"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v12, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v13, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ":"

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object v0, v12

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    Persistent: "

    const/4 v14, 0x1

    new-array v6, v14, [I

    const/4 v15, 0x0

    aput v15, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "           Top: "

    new-array v6, v14, [I

    aput v14, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Imp Fg: "

    new-array v6, v14, [I

    const/4 v0, 0x2

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Imp Bg: "

    new-array v6, v14, [I

    const/4 v11, 0x3

    aput v11, v6, v15

    const/16 v16, 0x1

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        Backup: "

    new-array v6, v14, [I

    const/4 v0, 0x4

    aput v0, v6, v15

    const/4 v11, 0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "     Heavy Wgt: "

    new-array v6, v14, [I

    const/16 v0, 0x8

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "       Service: "

    new-array v6, v14, [I

    const/4 v0, 0x5

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    Service Rs: "

    new-array v6, v14, [I

    const/4 v0, 0x6

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "      Receiver: "

    new-array v6, v14, [I

    const/4 v0, 0x7

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "         Heavy: "

    new-array v6, v14, [I

    const/16 v16, 0x9

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "        (Home): "

    new-array v6, v14, [I

    aput v16, v6, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "    (Last Act): "

    new-array v6, v14, [I

    const/16 v0, 0xa

    aput v0, v6, v15

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssAverage(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssMaximum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssRssMinimum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    return-wide v0
.end method

.method public hasAnyData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

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

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    mul-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public isInUse()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

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

.method public isMultiPackage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public makeActive()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeDead()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    return-void
.end method

.method public makeInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return-void
.end method

.method public makeStandalone()V
    .locals 0

    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Didn\'t find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v3, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    :goto_1
    return v1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v1, 0x1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v3, p2

    move-wide v5, p2

    move-wide v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v0, :cond_0

    const/4 v0, 0x6

    mul-int/lit8 v1, p2, 0xe

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v0, v0, p1

    mul-int/lit8 v1, p2, 0xe

    add-int p1, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :cond_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IJ)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v1, 0x10900000001L

    move-object/from16 v15, p4

    invoke-virtual {v10, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10500000002L

    move/from16 v8, p5

    invoke-virtual {v10, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v3, :cond_0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    :cond_0
    const-wide v3, 0x10b00000003L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v3, 0x10500000001L

    iget v5, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {v10, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {v10, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v1, v10

    move-wide/from16 v16, v2

    const-wide v2, 0x10b00000003L

    move-wide/from16 v19, v6

    move-wide/from16 v6, v16

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    move-wide/from16 v1, v19

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v9, v1

    const/4 v1, 0x0

    move/from16 v16, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    iget v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_2

    const/4 v6, 0x1

    move-object/from16 v21, v9

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v7, p6, v8

    add-long/2addr v4, v7

    move/from16 v16, v6

    goto :goto_1

    :cond_2
    move-object/from16 v21, v9

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v9, v21

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v16, :cond_4

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move v8, v1

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v1

    const-wide v6, 0x10300000004L

    const-wide v4, 0x20b00000005L

    if-ge v8, v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, v8}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    nop

    move/from16 v17, v8

    move-object v11, v9

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v23, 0x10e00000003L

    move-object v1, v10

    move/from16 v25, v2

    move/from16 v26, v3

    move-wide/from16 v2, v17

    move-wide/from16 v27, v4

    move-wide/from16 v4, v19

    move-wide/from16 v6, v23

    move/from16 v17, v8

    const/4 v11, 0x0

    move/from16 v8, v26

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    move/from16 v12, v26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, 0x10300000004L

    invoke-virtual {v10, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000005L

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move/from16 v8, v25

    invoke-virtual {v3, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v3

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10b00000006L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x1

    invoke-virtual {v1, v8, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v11, 0x2

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v18

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v11, 0x3

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v20

    move-object v1, v10

    move-wide/from16 v22, v6

    move-wide/from16 v6, v18

    move-object v11, v9

    move/from16 v29, v12

    move v12, v8

    move-wide/from16 v8, v20

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    const-wide v2, 0x10b00000007L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x4

    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v6, 0x5

    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v8, 0x6

    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    move-object v1, v10

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    const-wide v2, 0x10b00000008L

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v4, 0x7

    invoke-virtual {v1, v12, v4}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v6, 0x8

    invoke-virtual {v1, v12, v6}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/16 v8, 0x9

    invoke-virtual {v1, v12, v8}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v8

    move-object v1, v10

    invoke-static/range {v1 .. v9}, Landroid/util/proto/ProtoUtils;->toAggStatsProto(Landroid/util/proto/ProtoOutputStream;JJJJ)V

    move-wide/from16 v1, v27

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    add-int/lit8 v1, v17, 0x1

    move-object v9, v11

    goto/16 :goto_2

    :cond_6
    move-wide v2, v6

    move-object v11, v9

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/util/Map$Entry;

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v17, 0x10e00000001L

    const-wide v19, 0x10e00000002L

    const-wide v21, 0x10e00000003L

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v1, v10

    move-wide/from16 v2, v17

    move-wide/from16 v17, v4

    move-wide/from16 v4, v19

    move-wide/from16 v30, v6

    move-wide/from16 v6, v21

    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagProto(Landroid/util/proto/ProtoOutputStream;JJJI)V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide v3, 0x10300000004L

    invoke-virtual {v10, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v1, v30

    invoke-virtual {v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    move-wide v2, v3

    move-wide/from16 v4, v17

    goto :goto_4

    :cond_7
    invoke-virtual {v10, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
