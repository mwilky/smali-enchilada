.class public final Lcom/android/server/job/controllers/DeviceIdleJobsController;
.super Lcom/android/server/job/controllers/StateController;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;,
        Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    }
.end annotation


# static fields
.field private static final BACKGROUND_JOBS_DELAY:J = 0xbb8L

.field private static final DEBUG:Z

.field static final PROCESS_BACKGROUND_JOBS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdle"


# instance fields
.field private final mAllowInIdleJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceIdleMode:Z

.field private final mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

.field private mDeviceIdleWhitelistAppIds:[I

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

.field private final mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveTempWhitelistAppIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.DeviceIdle"

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
    sput-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    new-instance v0, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    return-object v0
.end method

.method public static synthetic lambda$dumpControllerStateLocked$0(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v0, " from "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    nop

    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, " RUNNABLE"

    goto :goto_0

    :cond_0
    const-string v0, " WAITING"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    if-eqz v0, :cond_1

    const-string v0, " WHITELISTED"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " ALLOWED_IN_DOZE"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static synthetic lambda$dumpControllerStateLocked$1(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

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

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p2, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p2, Lcom/android/server/job/controllers/JobStatus;->dozeWhitelisted:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setDeviceNotDozingConstraintSatisfied(ZZ)Z

    move-result v2

    return v2
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

    const-wide v2, 0x10b00000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v4

    new-instance v5, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$JMszgdQK87AK2bjaiI_rwQuTKpc;

    invoke-direct {v5, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$JMszgdQK87AK2bjaiI_rwQuTKpc;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v4, p4, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/job/controllers/-$$Lambda$DeviceIdleJobsController$essc-q8XD1L8ojfbmN1Aow_AVPk;-><init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    return-void
.end method

.method isTempWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isWhitelistedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUidActiveLocked(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "JobScheduler.DeviceIdle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " going "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v4, "active"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "inactive"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iput-boolean v1, v2, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChanged:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    iget-boolean v1, v1, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;->mChanged:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    :cond_4
    return-void
.end method

.method updateIdleMode(Z)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    if-eq v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    sget-boolean v2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "JobScheduler.DeviceIdle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDeviceIdleMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleUpdateFunctor:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleUpdateFunctor;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mHandler:Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/job/controllers/DeviceIdleJobsController$DeviceIdleJobsDelayHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/job/StateChangedListener;->onDeviceIdleStateChanged(Z)V

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
