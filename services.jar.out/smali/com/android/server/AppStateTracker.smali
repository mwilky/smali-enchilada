.class public Lcom/android/server/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTracker$MyHandler;,
        Lcom/android/server/AppStateTracker$StandbyTracker;,
        Lcom/android/server/AppStateTracker$MyReceiver;,
        Lcom/android/server/AppStateTracker$AppOpsWatcher;,
        Lcom/android/server/AppStateTracker$UidObserver;,
        Lcom/android/server/AppStateTracker$Listener;,
        Lcom/android/server/AppStateTracker$FeatureFlagsObserver;,
        Lcom/android/server/AppStateTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppStateTracker"

.field static final TARGET_OP:I = 0x4e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final mActiveUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field mBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExemptedPackages:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mForceAllAppStandbyForSmallBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mForceAllAppsStandby:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mForcedAppStandbyEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mForegroundUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AppStateTracker$MyHandler;

.field mIActivityManager:Landroid/app/IActivityManager;

.field mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppStateTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerWhitelistedAllAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPowerWhitelistedUserAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mRunAnyRestrictedPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

.field mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private mTempWhitelistedAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNWHITELISTED"

    const-string v5, "ALL_WHITELIST_CHANGED"

    const-string v6, "TEMP_WHITELIST_CHANGED"

    const-string v7, "EXEMPT_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    const-string v9, "FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED"

    const-string v10, "IS_UID_ACTIVE_CACHED"

    const-string v11, "IS_UID_ACTIVE_RAW"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/AppStateTracker$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/AppStateTracker$MyHandler;-><init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/util/SparseBooleanArray;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/AppStateTracker;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AppStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v0

    return-object v0
.end method

.method private static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method private cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/AppStateTracker$Listener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 3

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " "

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method static isAnyAppIdUnwhitelisted([I[I)Z
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    array-length v5, p1

    if-lt v0, v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-nez v3, :cond_5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    aget v6, p0, v2

    aget v7, p1, v0

    if-ne v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ge v6, v7, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    return v1

    :cond_6
    return v5
.end method

.method private isRestricted(ILjava/lang/String;ZZ)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v0

    return v1

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_3
    if-eqz p4, :cond_4

    monitor-exit v0

    return v1

    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v3, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    monitor-exit v0

    return v1

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$onSystemServicesReady$0(Lcom/android/server/AppStateTracker;Landroid/os/PowerSaveState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshForcedAppStandbyUidPackagesLocked()V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x4e

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v7, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-eq v9, v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private toggleForceAllAppsStandbyLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v0}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForceAllAppsStandbyChanged()V

    return-void
.end method

.method private updateForceAllAppStandbyState()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/AppStateTracker$Listener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areAlarmsRestricted(ILjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public areForegroundServicesRestricted(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced App Standby Feature enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    const-string v1, "Foreground uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    const-string v1, "Except-idle + user whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "User whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Temp whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Exempted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "User "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10800000001L

    iget-boolean v0, v1, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000006L

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v0

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000008L

    iget-boolean v0, v1, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {v2, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v7, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide v7, 0x20500000002L

    iget-object v9, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_1
    iget-object v7, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide v7, 0x2050000000bL

    iget-object v9, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, v1, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    array-length v7, v6

    move v8, v0

    :goto_2
    if-ge v8, v7, :cond_4

    aget v9, v6, v8

    const-wide v10, 0x20500000003L

    invoke-virtual {v2, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v6, v1, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    array-length v7, v6

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_5

    aget v9, v6, v8

    const-wide v10, 0x2050000000cL

    invoke-virtual {v2, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    iget-object v6, v1, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    array-length v7, v6

    move v8, v0

    :goto_4
    if-ge v8, v7, :cond_6

    aget v9, v6, v8

    const-wide v10, 0x20500000004L

    invoke-virtual {v2, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    move v6, v0

    :goto_5
    iget-object v7, v1, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v7}, Landroid/util/SparseSetArray;->size()I

    move-result v7

    const-wide v8, 0x10900000002L

    const-wide v10, 0x10500000001L

    if-ge v6, v7, :cond_8

    move v7, v0

    :goto_6
    iget-object v12, v1, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v12

    if-ge v7, v12, :cond_7

    const-wide v12, 0x20b0000000aL

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget-object v14, v1, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v14, v6}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v2, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v14, v1, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v14, v6, v7}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    const-wide v12, 0x20b00000005L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    :cond_9
    iget-object v0, v1, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-wide v6, 0x10b00000009L

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/internal/util/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleUserRemoved(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method injectAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method injectIActivityManager()Landroid/app/IActivityManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method injectUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method isForceAllAppsStandbyEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSmallBatteryDevice()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    return v0
.end method

.method public isUidActive(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidActiveSynced(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return v2
.end method

.method public isUidInForeground(I)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidPowerSaveUserWhitelisted(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidPowerSaveWhitelisted(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUidTempPowerSaveWhitelisted(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSystemServicesReady()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    nop

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v1, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->register()V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    new-instance v1, Lcom/android/server/AppStateTracker$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$StandbyTracker;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/server/AppStateTracker$UidObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x4e

    new-instance v4, Lcom/android/server/AppStateTracker$AppOpsWatcher;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/AppStateTracker$MyReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->refreshForcedAppStandbyUidPackagesLocked()V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;-><init>(Lcom/android/server/AppStateTracker;)V

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setPowerSaveWhitelistAppIds([I[I[I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    iput-object p3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    iput-object p2, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1, v3}, Lcom/android/server/AppStateTracker;->isAnyAppIdUnwhitelisted([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllUnwhitelisted()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllWhitelistChanged()V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {v3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyTempWhitelistChanged()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p3, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :goto_1
    return v2
.end method
