.class final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataSet"
.end annotation


# instance fields
.field final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMaxFgActive:I

.field mMaxTotalActive:I

.field final mStartClockTime:J

.field final mStartElapsedTime:J

.field final mStartUptimeTime:J

.field mSummedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method private getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    if-nez v1, :cond_1

    new-instance v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    move-object v1, v2

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V
    .locals 4

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p1, v2, v3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 11

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p1, v5, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v6, :cond_0

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    :cond_0
    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v6, :cond_1

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    :cond_1
    iget v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v6, :cond_2

    iget-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iput-boolean v1, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    :cond_2
    iget-object v6, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_2
    if-ltz v6, :cond_3

    iget-object v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v8, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    iget-object v9, v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v1, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iput v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    :cond_6
    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v1, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iput v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_7
    return-void
.end method

.method decActive(ILjava/lang/String;JI)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method decActiveTop(ILjava/lang/String;JI)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .locals 29

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p4

    move/from16 v11, p8

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v7, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v14

    iget-wide v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    const-wide v2, 0x10300000001L

    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v0, p6, v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v8, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000003L

    invoke-virtual {v8, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_0
    move v4, v0

    if-ge v4, v6, :cond_9

    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v11, v0, :cond_0

    nop

    move/from16 v17, v4

    move/from16 v23, v6

    move-wide/from16 v26, v14

    goto/16 :goto_8

    :cond_0
    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v16

    :goto_1
    move v1, v0

    if-ge v1, v3, :cond_8

    move/from16 v18, v3

    move/from16 v17, v4

    const-wide v3, 0x20b00000004L

    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-wide/from16 v19, v3

    const-wide v3, 0x10500000001L

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000002L

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10b00000003L

    invoke-virtual {v0, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v23

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    move-object/from16 v25, v0

    move-object v0, v7

    move/from16 v21, v22

    move/from16 v22, v1

    move-object v1, v8

    move-wide/from16 v26, v14

    move-wide/from16 v14, v19

    move/from16 v19, v18

    move-object/from16 v18, v2

    move-wide v2, v3

    move/from16 v20, v5

    move-wide/from16 v4, v23

    move/from16 v23, v6

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v2, 0x10b00000004L

    move-object/from16 v6, v25

    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v1, v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    move/from16 v22, v1

    move-object v1, v8

    move-object v11, v6

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v2, 0x10b00000005L

    invoke-virtual {v11, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(Landroid/util/proto/ProtoOutputStream;JJI)V

    const-wide v0, 0x10800000006L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v3, 0x1

    if-gtz v2, :cond_2

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v2, v16

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v2, :cond_4

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v2, v16

    goto :goto_5

    :cond_4
    :goto_4
    move v2, v3

    :goto_5
    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    iget v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v2, :cond_6

    iget-boolean v2, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v3, v16

    nop

    :cond_6
    :goto_6
    invoke-virtual {v8, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    move/from16 v0, v16

    :goto_7
    iget-object v1, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const-wide v1, 0x20b00000009L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10e00000001L

    iget-object v5, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    iget-object v5, v11, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v8, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v21, 0x1

    move/from16 v4, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move/from16 v6, v23

    move-wide/from16 v14, v26

    move/from16 v11, p8

    goto/16 :goto_1

    :cond_8
    move/from16 v17, v4

    move/from16 v23, v6

    move-wide/from16 v26, v14

    :goto_8
    add-int/lit8 v0, v17, 0x1

    move/from16 v6, v23

    move-wide/from16 v14, v26

    move/from16 v11, p8

    goto/16 :goto_0

    :cond_9
    move/from16 v23, v6

    move-wide/from16 v26, v14

    const-wide v0, 0x10500000005L

    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    iget v2, v7, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v8, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v13, p8

    invoke-virtual {v8, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v14

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " at "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v6, p6

    invoke-static {v0, v1, v6, v7, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v0, ") over "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_0
    move v5, v0

    if-ge v5, v4, :cond_b

    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const/4 v0, -0x1

    if-eq v13, v0, :cond_0

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v13, v0, :cond_0

    nop

    move/from16 v25, v4

    move/from16 v26, v5

    goto/16 :goto_3

    :cond_0
    iget-object v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move/from16 v0, v16

    :goto_1
    if-ge v0, v1, :cond_a

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v18, v1

    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, " / "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v19

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v17, "pending"

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v22, v1

    move-object v1, v9

    move/from16 v23, v2

    move-object/from16 v24, v3

    move-wide v2, v14

    move/from16 v25, v4

    move/from16 v26, v5

    move-wide/from16 v4, v19

    move/from16 v6, v22

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v6, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string v7, "active"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    invoke-virtual {v13, v11, v12}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v4

    iget v6, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string v7, "active-top"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v0, :cond_1

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, " (pending)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v0, :cond_3

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, " (active)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    iget v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v0, :cond_5

    iget-boolean v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, " (active-top)"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, v16

    :goto_2
    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    if-lez v0, :cond_7

    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    add-int/lit8 v0, v21, 0x1

    move-wide/from16 v6, p6

    move/from16 v1, v18

    move/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v13, p8

    goto/16 :goto_1

    :cond_a
    move/from16 v25, v4

    move/from16 v26, v5

    :goto_3
    add-int/lit8 v0, v26, 0x1

    move-wide/from16 v6, p6

    move/from16 v4, v25

    move/from16 v13, p8

    goto/16 :goto_0

    :cond_b
    move/from16 v25, v4

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Max concurrency: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " total, "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " foreground"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v4, :cond_0

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v4, :cond_0

    iget v4, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v4

    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput-wide p2, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v5, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v6, 0x0

    if-lez v5, :cond_1

    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    :cond_1
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_2

    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    :cond_2
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_3

    iget-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v9, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v9, p2, v9

    add-long/2addr v7, v9

    iput-wide v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iput v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object v1
.end method

.method getTotalTime(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method incActive(ILjava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez v1, :cond_0

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez v1, :cond_0

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez v1, :cond_0

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .locals 3

    long-to-float v0, p4

    long-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-lez v1, :cond_0

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p6, :cond_1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
