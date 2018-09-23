.class public final Lcom/android/server/job/controllers/BackgroundJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KNOWN_ACTIVE:I = 0x1

.field static final KNOWN_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Background"

.field static final UNKNOWN:I


# instance fields
.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Background"

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
    sput-boolean v0, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BackgroundJobsController$1;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    iput-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateAllJobRestrictionsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsForUidLocked(IZ)V

    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$0(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " active"

    goto :goto_0

    :cond_0
    const-string v2, " idle"

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, ", whitelisted"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const-string v2, ": "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "allowed]"

    goto :goto_1

    :cond_3
    const-string v2, "disallowed]"

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    const-string v2, " RUNNABLE"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v2, " WAITING"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$1(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10

    nop

    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-virtual {p2, p1, v2, v3}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v4

    const-wide v5, 0x10800000004L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidPowerSaveWhitelisted(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTracker;->isUidTempPowerSaveWhitelisted(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    nop

    move v4, v5

    :goto_1
    const-wide v7, 0x10800000005L

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/AppStateTracker;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000007L

    iget v4, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v9, 0x400000

    and-int/2addr v4, v9

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private updateAllJobRestrictionsLocked()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method private updateJobRestrictionsForUidLocked(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateJobRestrictionsLocked(II)V

    return-void
.end method

.method private updateJobRestrictionsLocked(II)V
    .locals 12

    new-instance v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;

    invoke-direct {v0, p0, p2}, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;I)V

    sget-boolean v1, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v1

    if-lez p1, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    :goto_1
    sget-boolean v6, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v4

    nop

    :cond_2
    sget-boolean v6, Lcom/android/server/job/controllers/BackgroundJobsController;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "JobScheduler.Background"

    const-string v7, "Job status updated: %d/%d checked/total jobs, %d us"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x3e8

    div-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v6, v0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChanged:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_4
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 7
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

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v6, p1, v2, v3}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    new-instance v3, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;

    invoke-direct {v3, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$ypgNv91qX_67RP8z3Z9CsC0SRRs;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v2, p4, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$BackgroundJobsController$5YoufKSiImueGHv9obiMns19gXE;-><init>(Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0

    return-void
.end method

.method updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v3

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    move v3, v5

    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AppStateTracker;->areJobsRestricted(ILjava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v4

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v3

    goto :goto_1

    :cond_1
    if-ne p2, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->setBackgroundNotRestrictedConstraintSatisfied(Z)Z

    move-result v4

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setUidActive(Z)Z

    move-result v5

    or-int/2addr v4, v5

    return v4
.end method
