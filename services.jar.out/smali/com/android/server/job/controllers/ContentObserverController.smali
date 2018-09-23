.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.ContentObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    if-ge v8, v9, :cond_1

    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_1

    :cond_0
    const-wide v14, 0x20b00000001L

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    nop

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_d

    nop

    const-wide v14, 0x20b00000002L

    move/from16 v16, v8

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v10, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_c

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    move/from16 v19, v18

    move/from16 v0, v19

    if-ge v0, v15, :cond_3

    move/from16 v20, v10

    iget-object v10, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    move/from16 v21, v12

    iget-object v12, v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v17, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v18, v0, 0x1

    move/from16 v10, v20

    move/from16 v12, v21

    move-object/from16 v0, p0

    goto :goto_4

    :cond_3
    move/from16 v20, v10

    move/from16 v21, v12

    :goto_5
    if-nez v17, :cond_4

    nop

    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move-object/from16 v26, v11

    goto/16 :goto_b

    :cond_4
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_5

    const-wide v2, 0x10900000001L

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v2

    move-object/from16 v26, v11

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v15, :cond_b

    const-wide v10, 0x20b00000003L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v27, v14

    move/from16 v28, v15

    const-wide v14, 0x10b00000001L

    invoke-virtual {v12, v1, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    const-wide v14, 0x10500000002L

    invoke-virtual {v1, v14, v15, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v12, :cond_6

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    move-wide/from16 v29, v7

    goto/16 :goto_a

    :cond_6
    iget-boolean v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v12, :cond_7

    const-wide v14, 0x10300000003L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000004L

    iget-object v8, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v14

    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_7

    :cond_7
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    :goto_7
    const/4 v6, 0x0

    :goto_8
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    const-wide v7, 0x20900000005L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    iget-object v6, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    :goto_9
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    if-eqz v7, :cond_9

    const-wide v14, 0x20900000006L

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v7

    goto :goto_9

    :cond_a
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v6, v31

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v7, v29

    goto/16 :goto_6

    :cond_b
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    move-object/from16 v27, v14

    move/from16 v28, v15

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v20

    move/from16 v12, v21

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-object/from16 v11, v26

    move-wide/from16 v7, v29

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v14, 0x20b00000002L

    goto/16 :goto_3

    :cond_c
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move/from16 v20, v10

    move-object/from16 v26, v11

    move/from16 v21, v12

    move-wide/from16 v2, v29

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    move-wide/from16 v3, v22

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    goto/16 :goto_2

    :cond_d
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move/from16 v16, v8

    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v4, v22

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "#"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v6, " from "

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_c

    const-string v5, "Observers:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_b

    iget-object v6, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_a

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    iget-object v11, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_3

    iget-object v14, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v12, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    if-nez v12, :cond_4

    goto/16 :goto_a

    :cond_4
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v14, " 0x"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v14, " ("

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v14, "):"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "Jobs:"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v11, :cond_9

    iget-object v15, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const-string v3, "#"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v3, " from "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-static {v1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v3, :cond_8

    const-string v3, ":"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-boolean v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v3, :cond_5

    const-string v3, "Trigger pending: update="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_5
    const-string v2, "Changed Authorities:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_7
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_7

    const-string v2, "          Changed URIs:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_9

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_c
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    :cond_0
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "JobScheduler.ContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking content-trigger job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    :cond_3
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    :cond_5
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    :cond_7
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    :cond_8
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    :cond_9
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v1, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    :cond_0
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "JobScheduler.ContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer tracking job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method
