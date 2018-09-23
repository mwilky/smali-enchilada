.class public final Lcom/android/server/job/controllers/StorageController;
.super Lcom/android/server/job/controllers/StateController;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/StorageController$StorageTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Storage"


# instance fields
.field private final mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

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

    const-string v0, "JobScheduler.Storage"

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
    sput-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;-><init>(Lcom/android/server/job/controllers/StorageController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/StorageController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/StorageController;->maybeReportNewStorageState()V

    return-void
.end method

.method private maybeReportNewStorageState()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    move-result v5

    if-eq v5, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 15
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

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000007L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v6

    const-wide v7, 0x10800000001L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v6

    const-wide v7, 0x10500000002L

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    iget-object v9, v0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v10, p4

    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    const-wide v11, 0x20b00000003L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v13, 0x10b00000001L

    invoke-virtual {v9, v1, v13, v14}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    nop

    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v13

    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v10, p4

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
