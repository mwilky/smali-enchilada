.class public final Landroid/app/ActivityThread;
.super Landroid/app/ClientTransactionHandler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$DropBoxReporter;,
        Landroid/app/ActivityThread$EventLoggingReporter;,
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$RequestAssistContextExtras;,
        Landroid/app/ActivityThread$UpdateCompatibilityData;,
        Landroid/app/ActivityThread$DumpHeapData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$DumpComponentInfo;,
        Landroid/app/ActivityThread$Profiler;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;,
        Landroid/app/ActivityThread$ProviderKey;
    }
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x4

.field private static DEBUG_BACKUP:Z = false

.field public static DEBUG_BROADCAST:Z = false

.field public static DEBUG_CONFIGURATION:Z = false

.field public static DEBUG_MEMORY_TRIM:Z = false

.field static DEBUG_MESSAGES:Z = false

.field static DEBUG_ONEPLUS:Z = false

.field public static DEBUG_ORDER:Z = false

.field private static DEBUG_PROVIDER:Z = false

.field private static DEBUG_RESULTS:Z = false

.field private static DEBUG_SERVICE:Z = false

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field public static final INVALID_PROC_STATE_SEQ:J = -0x1L

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final ONE_COUNT_COLUMN_HEADER:Ljava/lang/String; = "%21s %8s"

.field public static final PROC_START_SEQ_IDENT:Ljava/lang/String; = "seq="

.field private static final REPORT_TO_ACTIVITY:Z = true

.field public static final SERVICE_DONE_EXECUTING_ANON:I = 0x0

.field public static final SERVICE_DONE_EXECUTING_START:I = 0x1

.field public static final SERVICE_DONE_EXECUTING_STOP:I = 0x2

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field public static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field static localLOGV:Z

.field private static volatile sCurrentActivityThread:Landroid/app/ActivityThread;

.field private static final sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sEmbryoPackageName:Ljava/lang/String;

.field static volatile sMainThreadHandler:Landroid/os/Handler;

.field static volatile sPackageManager:Landroid/content/pm/IPackageManager;


# instance fields
.field final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field final mBackupAgents:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mCompatConfiguration:Landroid/content/res/Configuration;

.field mConfiguration:Landroid/content/res/Configuration;

.field mCoreSettings:Landroid/os/Bundle;

.field mCurDefaultDisplayDpi:I

.field mDensityCompatMode:Z

.field private mDisableTrimMemory:Z

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mGetProviderLocks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGetProviderLocks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mH:Landroid/app/ActivityThread$H;

.field mHiddenApiWarningShown:Z

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationLibDir:Ljava/lang/String;

.field mInstrumentationPackageName:Ljava/lang/String;

.field mInstrumentationSplitAppDirs:[Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mInstrumentedLibDir:Ljava/lang/String;

.field mInstrumentedSplitAppDirs:[Ljava/lang/String;

.field mJitEnabled:Z

.field mLastAssistStructures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/assist/AssistStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastSessionId:I

.field final mLocalProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalProvidersByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field private mMainThreadConfig:Landroid/content/res/Configuration;

.field private mNetworkBlockSeq:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPolicyLock"
    .end annotation
.end field

.field private final mNetworkPolicyLock:Ljava/lang/Object;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation
.end field

.field mProfiler:Landroid/app/ActivityThread$Profiler;

.field final mProviderMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ActivityThread$ProviderKey;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mResourcePackages:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mResourcesManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourcesManager:Landroid/app/ResourcesManager;

.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSomeActivitiesChanged:Z

.field private mSystemContext:Landroid/app/ContextImpl;

.field mSystemThread:Z

.field private mSystemUiContext:Landroid/app/ContextImpl;

.field private final mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

.field mUpdatingSystemConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->sEmbryoPackageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ClientTransactionHandler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mHiddenApiWarningShown:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    new-instance v2, Landroid/app/servertransaction/TransactionExecutor;

    invoke-direct {v2, p0}, Landroid/app/servertransaction/TransactionExecutor;-><init>(Landroid/app/ClientTransactionHandler;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mDisableTrimMemory:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v2, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v2, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    iput-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method static synthetic access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Landroid/app/ActivityThread;->sEmbryoPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Landroid/app/ActivityThread;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleSleeping(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSetCoreSettings(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleEnterAnimationComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityThread;->handleStartBinderTracking()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;)Landroid/app/servertransaction/TransactionExecutor;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRelaunchActivityLocally(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$600(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$800(Landroid/app/ActivityThread;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Landroid/app/ActivityThread;J)J
    .locals 0

    iput-wide p1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    return-wide p1
.end method

.method private attach(ZJ)V
    .locals 4

    sput-object p0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-nez p1, :cond_0

    new-instance v0, Landroid/app/ActivityThread$1;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Landroid/view/ViewRootImpl;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    const-string v0, "<pre-initialized>"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p2, p3}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v1, Landroid/app/ActivityThread$2;

    invoke-direct {v1, p0, v0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->addGcWatcher(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    const-string/jumbo v0, "system_process"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    :try_start_1
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    nop

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v1, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    new-instance v0, Landroid/app/ActivityThread$DropBoxReporter;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$DropBoxReporter;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Llibcore/io/DropBox;->setReporter(Llibcore/io/DropBox$Reporter;)V

    new-instance v0, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;

    invoke-direct {v0, p0}, Landroid/app/-$$Lambda$ActivityThread$ZXDWm3IBeFmLnFVblhB-IOZCr9o;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v0}, Landroid/view/ViewRootImpl;->addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate Application():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->attachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attaching agent with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3700(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0, p3}, Landroid/app/Activity;->performStop(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    :cond_2
    return-void

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to stop activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    throw v0
.end method

.method private checkAndBlockForNetworkAccess()V
    .locals 7

    iget-object v0, p0, Landroid/app/ActivityThread;->mNetworkPolicyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-wide v5, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J

    invoke-interface {v1, v5, v6}, Landroid/app/IActivityManager;->waitForNetworkStateUpdate(J)V

    iput-wide v3, p0, Landroid/app/ActivityThread;->mNetworkBlockSeq:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static final cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4

    iget-boolean v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Activity"

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    iput-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/ContextImpl;->createActivityContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILandroid/content/res/Configuration;)Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const-string v2, "debug.second-display.pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    iget-object v3, v3, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v7, v3, v5

    if-eqz v7, :cond_0

    nop

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ContextImpl;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/ContextImpl;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-object v0
.end method

.method public static currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static currentOpPackageName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static currentPackageName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/app/ActivityThread;->sEmbryoPackageName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public static currentProcessName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static currentResDir()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/ReferrerIntent;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/content/ReferrerIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Lcom/android/internal/content/ReferrerIntent;->prepareToEnterProcess()V

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Lcom/android/internal/content/ReferrerIntent;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResultInfo;

    :try_start_0
    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v3, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    :cond_0
    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering result to activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v3}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    return-void
.end method

.method public static dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V
    .locals 59

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v11, p4

    move-wide/from16 v9, p6

    move-wide/from16 v7, p8

    move-wide/from16 v5, p10

    move-wide/from16 v3, p12

    move-wide/from16 v1, p14

    if-nez p3, :cond_7

    const-wide v1, 0x10b00000003L

    invoke-virtual {v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v23, 0x10b00000001L

    const-string v25, "Native Heap"

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move-wide/from16 v26, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iget v2, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v28, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v29, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v30, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v31, v1

    iget-boolean v1, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v32, v1

    iget v1, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    iget v12, v14, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    move v11, v0

    move-object v0, v13

    move/from16 v22, v1

    move/from16 v17, v2

    move-wide/from16 v38, v26

    move/from16 v16, v28

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v32

    const-wide v14, 0x10500000002L

    move-wide/from16 v1, v23

    move-object/from16 v3, v25

    move v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move-wide v10, v9

    move/from16 v9, v20

    move/from16 v10, v21

    move-wide/from16 v14, p4

    move/from16 v11, v22

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    const-wide v0, 0x10500000002L

    invoke-virtual {v13, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000003L

    move-wide/from16 v11, p6

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000004L

    move-wide/from16 v7, p8

    invoke-virtual {v13, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v0, v38

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v2, 0x10b00000004L

    invoke-virtual {v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v16, 0x10b00000001L

    const-string v18, "Dalvik Heap"

    move-wide/from16 v19, v0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v0, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v6, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v5, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v9, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v10, v1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v50, v2

    iget-boolean v2, v1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v51, v2

    iget v2, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v12, v1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    move v11, v0

    move-object v0, v13

    move-object v14, v1

    move/from16 v22, v2

    move/from16 v15, v50

    move/from16 v21, v51

    move-wide/from16 v1, v16

    move-wide/from16 v52, v3

    move-object/from16 v3, v18

    move v4, v15

    move v15, v5

    move v5, v11

    move-wide/from16 v16, v7

    move v7, v15

    move v8, v9

    move v9, v10

    move/from16 v10, v21

    move-wide/from16 v23, p6

    move/from16 v11, v22

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    const-wide v0, 0x10500000002L

    move-wide/from16 v11, p10

    invoke-virtual {v13, v0, v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000003L

    move-wide/from16 v9, p12

    invoke-virtual {v13, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000004L

    move-wide/from16 v5, p14

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v1, v52

    invoke-virtual {v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iget v15, v14, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    iget v3, v14, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    iget v4, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    iget v7, v14, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    iget v8, v14, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v54, v0

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v55, v0

    iget v0, v14, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    const/16 v18, 0x0

    move/from16 v27, v0

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v25, v7

    move/from16 v26, v8

    :goto_0
    move/from16 v8, v18

    const/16 v7, 0x11

    if-ge v8, v7, :cond_3

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v18

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v29

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v30

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v31

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v32

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v33

    invoke-virtual {v14, v8}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v34

    if-nez v18, :cond_2

    if-nez v29, :cond_2

    if-nez v30, :cond_2

    if-nez v31, :cond_2

    if-nez v32, :cond_2

    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_0

    move/from16 v0, v34

    goto :goto_1

    :cond_0
    move/from16 v0, v33

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move-wide/from16 v36, v1

    move-wide/from16 v38, v5

    move/from16 v40, v8

    move-wide/from16 v41, v9

    move-wide/from16 v43, v11

    goto :goto_3

    :cond_2
    :goto_2
    const-wide v3, 0x20b00000005L

    invoke-static {v8}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move/from16 v35, v0

    move-object v0, v13

    move-wide/from16 v36, v1

    move-wide v1, v3

    move-object v3, v7

    move/from16 v4, v18

    move-wide/from16 v38, v5

    move/from16 v5, v28

    move/from16 v6, v29

    move/from16 v7, v30

    move/from16 v40, v8

    move/from16 v8, v31

    move-wide/from16 v41, v9

    move/from16 v9, v32

    move/from16 v10, v35

    move-wide/from16 v43, v11

    move/from16 v11, v33

    move/from16 v12, v34

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    sub-int v54, v54, v18

    sub-int v15, v15, v28

    sub-int v21, v21, v29

    sub-int v22, v22, v30

    sub-int v25, v25, v31

    sub-int v26, v26, v32

    sub-int v55, v55, v33

    sub-int v27, v27, v34

    :goto_3
    add-int/lit8 v18, v40, 0x1

    move-wide/from16 v1, v36

    move-wide/from16 v5, v38

    move-wide/from16 v9, v41

    move-wide/from16 v11, v43

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v36, v1

    move-wide/from16 v38, v5

    move-wide/from16 v41, v9

    move-wide/from16 v43, v11

    const-wide v1, 0x10b00000006L

    const-string v3, "Unknown"

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-object v0, v13

    move/from16 v4, v54

    move v5, v15

    move/from16 v6, v21

    move/from16 v18, v7

    move/from16 v7, v22

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v11, v55

    move/from16 v12, v27

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    const-wide v0, 0x10b00000007L

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v1, 0x10b00000001L

    const-string v3, "TOTAL"

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    iget-boolean v10, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v29

    move-object v0, v13

    move-wide/from16 v56, v11

    move/from16 v11, v28

    move/from16 v12, v29

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    move-wide/from16 v28, p4

    add-long v0, v28, v43

    const-wide v2, 0x10500000002L

    invoke-virtual {v13, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-long v0, v23, v41

    const-wide v11, 0x10500000003L

    invoke-virtual {v13, v11, v12, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-long v0, v16, v38

    const-wide v9, 0x10500000004L

    invoke-virtual {v13, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v7, v56

    invoke-virtual {v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    if-eqz p2, :cond_8

    nop

    :goto_4
    move/from16 v6, v18

    const/16 v0, 0x1f

    if-ge v6, v0, :cond_8

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v18

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v31

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v32

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v33

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v34

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v35

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v40

    invoke-virtual {v14, v6}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v45

    if-nez v18, :cond_6

    if-nez v32, :cond_6

    if-nez v33, :cond_6

    if-nez v34, :cond_6

    if-nez v35, :cond_6

    iget-boolean v0, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v0, :cond_4

    move/from16 v0, v45

    goto :goto_5

    :cond_4
    move/from16 v0, v40

    :goto_5
    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    move/from16 v47, v6

    move-wide/from16 v48, v7

    goto :goto_7

    :cond_6
    :goto_6
    const-wide v1, 0x20b00000008L

    invoke-static {v6}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    move-object v0, v13

    move/from16 v4, v18

    move/from16 v46, v5

    move/from16 v5, v31

    move/from16 v47, v6

    move/from16 v6, v32

    move-wide/from16 v48, v7

    move/from16 v7, v33

    move/from16 v8, v34

    move/from16 v9, v35

    move/from16 v10, v46

    move/from16 v11, v40

    move/from16 v12, v45

    invoke-static/range {v0 .. v12}, Landroid/app/ActivityThread;->dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V

    :goto_7
    add-int/lit8 v18, v47, 0x1

    move-wide/from16 v7, v48

    const-wide v9, 0x10500000004L

    const-wide v11, 0x10500000003L

    goto :goto_4

    :cond_7
    move-wide/from16 v41, v3

    move-wide/from16 v43, v5

    move-wide/from16 v16, v7

    move-wide/from16 v23, v9

    move-wide/from16 v28, v11

    move-wide/from16 v38, p14

    :cond_8
    const-wide v0, 0x10b00000009L

    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v2

    const-wide v3, 0x10500000004L

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000005L

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000006L

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, v14, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    const-wide v3, 0x10500000008L

    if-eqz v2, :cond_9

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v2

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_8

    :cond_9
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v2

    invoke-virtual {v13, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_8
    invoke-virtual {v13, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-wide/from16 v7, p12

    move-wide/from16 v9, p14

    move-wide/from16 v11, p16

    move-wide/from16 v13, p18

    const/4 v15, 0x4

    const/16 v17, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    const-string v15, "N/A,"

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v1, v3, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v2, "N/A,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v9, v5, v11

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v2, "N/A,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v9, v7, v13

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v2, p1

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_0

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    :cond_0
    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "N/A,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    nop

    :goto_1
    move/from16 v1, v17

    const/16 v9, 0x11

    if-ge v1, v9, :cond_2

    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_1

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_2

    :cond_1
    const-string v10, "N/A,"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v17, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move-object v2, v1

    const/4 v10, 0x1

    if-nez p5, :cond_1d

    const/16 v19, 0xa

    const/16 v15, 0xb

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x5

    if-eqz p3, :cond_7

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v18, ""

    aput-object v18, v9, v17

    const-string v18, "Pss"

    aput-object v18, v9, v10

    const-string v18, "Pss"

    const/16 v29, 0x2

    aput-object v18, v9, v29

    const-string v18, "Shared"

    const/16 v23, 0x3

    aput-object v18, v9, v23

    const-string v18, "Private"

    const/16 v22, 0x4

    aput-object v18, v9, v22

    const-string v18, "Shared"

    aput-object v18, v9, v27

    const-string v18, "Private"

    aput-object v18, v9, v26

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_4

    const-string v10, "SwapPss"

    goto :goto_3

    :cond_4
    const-string v10, "Swap"

    :goto_3
    aput-object v10, v9, v25

    const-string v10, "Heap"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "Heap"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "Heap"

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "Total"

    const/16 v18, 0x1

    aput-object v10, v9, v18

    const-string v10, "Clean"

    const/16 v18, 0x2

    aput-object v10, v9, v18

    const-string v10, "Dirty"

    const/16 v18, 0x3

    aput-object v10, v9, v18

    const-string v10, "Dirty"

    const/16 v18, 0x4

    aput-object v10, v9, v18

    const-string v10, "Clean"

    aput-object v10, v9, v27

    const-string v10, "Clean"

    aput-object v10, v9, v26

    const-string v10, "Dirty"

    aput-object v10, v9, v25

    const-string v10, "Size"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "Alloc"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "Free"

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "------"

    const/16 v18, 0x1

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x2

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x3

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x4

    aput-object v10, v9, v18

    const-string v10, "------"

    aput-object v10, v9, v27

    const-string v10, "------"

    aput-object v10, v9, v26

    const-string v10, "------"

    aput-object v10, v9, v25

    const-string v10, "------"

    const/16 v18, 0x8

    aput-object v10, v9, v18

    const-string v10, "------"

    const/16 v18, 0x9

    aput-object v10, v9, v18

    const-string v10, "------"

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Native Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x3

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v27

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v26

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_5

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_4

    :cond_5
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    :goto_4
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v25

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x8

    aput-object v10, v9, v18

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x9

    aput-object v10, v9, v18

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Dalvik Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x3

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v18, 0x4

    aput-object v10, v9, v18

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v27

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v26

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_6

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_5

    :cond_6
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v25

    move-wide/from16 v20, p14

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v15, 0x8

    aput-object v10, v9, v15

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v18, 0x9

    aput-object v10, v9, v18

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v19

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    const/16 v15, 0x8

    move-wide/from16 v20, p14

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, ""

    aput-object v10, v9, v17

    const-string v10, "Pss"

    const/4 v15, 0x1

    aput-object v10, v9, v15

    const-string v10, "Private"

    const/4 v15, 0x2

    aput-object v10, v9, v15

    const-string v10, "Private"

    const/4 v15, 0x3

    aput-object v10, v9, v15

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_8

    const-string v10, "SwapPss"

    goto :goto_6

    :cond_8
    const-string v10, "Swap"

    :goto_6
    const/4 v15, 0x4

    aput-object v10, v9, v15

    const-string v10, "Heap"

    aput-object v10, v9, v27

    const-string v10, "Heap"

    aput-object v10, v9, v26

    const-string v10, "Heap"

    aput-object v10, v9, v25

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v10, v17

    const-string v9, "Total"

    const/4 v15, 0x1

    aput-object v9, v10, v15

    const-string v9, "Dirty"

    const/4 v15, 0x2

    aput-object v9, v10, v15

    const-string v9, "Clean"

    const/4 v15, 0x3

    aput-object v9, v10, v15

    const-string v9, "Dirty"

    const/4 v15, 0x4

    aput-object v9, v10, v15

    const-string v9, "Size"

    aput-object v9, v10, v27

    const-string v9, "Alloc"

    aput-object v9, v10, v26

    const-string v9, "Free"

    aput-object v9, v10, v25

    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x9

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v10, v17

    const-string v9, "------"

    const/4 v15, 0x1

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x2

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x3

    aput-object v9, v10, v15

    const-string v9, "------"

    const/4 v15, 0x4

    aput-object v9, v10, v15

    const-string v9, "------"

    aput-object v9, v10, v27

    const-string v9, "------"

    aput-object v9, v10, v26

    const-string v9, "------"

    aput-object v9, v10, v25

    const-string v9, "------"

    const/16 v15, 0x8

    aput-object v9, v10, v15

    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v9, v15, [Ljava/lang/Object;

    const-string v10, "Native Heap"

    aput-object v10, v9, v17

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v9, v15

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v9, v15

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v9, v15

    iget-boolean v10, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v10, :cond_9

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    goto :goto_7

    :cond_9
    iget v10, v2, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    :goto_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x4

    aput-object v10, v9, v15

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v27

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v26

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v25

    invoke-static {v0, v1, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v9, 0x8

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "Dalvik Heap"

    aput-object v9, v10, v17

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x1

    aput-object v9, v10, v15

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x2

    aput-object v9, v10, v15

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x3

    aput-object v9, v10, v15

    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_a

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    goto :goto_8

    :cond_a
    iget v9, v2, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    :goto_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v15, 0x4

    aput-object v9, v10, v15

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v27

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v26

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v25

    invoke-static {v0, v1, v10}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9
    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iget v9, v2, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    iget v10, v2, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    iget v15, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v32, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v33, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v34, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v35, v1

    iget v1, v2, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    move v14, v1

    move v7, v15

    move/from16 v1, v17

    move/from16 v8, v33

    move/from16 v13, v34

    move v15, v10

    move v10, v9

    move/from16 v9, v32

    :goto_a
    const/16 v5, 0x11

    if-ge v1, v5, :cond_11

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v6

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v5

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v11

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v12

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v4

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v16

    invoke-virtual {v2, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v18

    if-nez v6, :cond_d

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    move/from16 v36, v14

    iget-boolean v14, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v14, :cond_b

    move/from16 v14, v18

    goto :goto_b

    :cond_b
    move/from16 v14, v16

    :goto_b
    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v14, v36

    goto/16 :goto_10

    :cond_d
    move/from16 v36, v14

    :goto_c
    if-eqz p3, :cond_f

    const-string v14, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    move/from16 v38, v8

    move/from16 v37, v13

    const/16 v13, 0xb

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v30, 0x1

    aput-object v13, v8, v30

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v29, 0x2

    aput-object v13, v8, v29

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v23, 0x3

    aput-object v13, v8, v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v22, 0x4

    aput-object v13, v8, v22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v26

    iget-boolean v13, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v13, :cond_e

    move/from16 v13, v18

    goto :goto_d

    :cond_e
    move/from16 v13, v16

    :goto_d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v8, v25

    const-string v13, ""

    move/from16 v39, v3

    const/16 v3, 0x8

    aput-object v13, v8, v3

    const-string v13, ""

    const/16 v24, 0x9

    aput-object v13, v8, v24

    const-string v13, ""

    aput-object v13, v8, v19

    invoke-static {v0, v14, v8}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_f
    move/from16 v39, v3

    move/from16 v38, v8

    move/from16 v37, v13

    const/16 v3, 0x8

    const-string v8, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v13, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x2

    aput-object v3, v13, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x3

    aput-object v3, v13, v14

    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_10

    move/from16 v3, v18

    goto :goto_e

    :cond_10
    move/from16 v3, v16

    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v14, 0x4

    aput-object v3, v13, v14

    const-string v3, ""

    aput-object v3, v13, v27

    const-string v3, ""

    aput-object v3, v13, v26

    const-string v3, ""

    aput-object v3, v13, v25

    invoke-static {v0, v8, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    sub-int/2addr v9, v6

    sub-int/2addr v10, v5

    sub-int/2addr v15, v11

    sub-int/2addr v7, v12

    sub-int v8, v38, v39

    sub-int v13, v37, v4

    sub-int v35, v35, v16

    sub-int v14, v36, v18

    :goto_10
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-wide/from16 v11, p16

    goto/16 :goto_a

    :cond_11
    move/from16 v38, v8

    move/from16 v37, v13

    move/from16 v36, v14

    if-eqz p3, :cond_14

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v4, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    move/from16 v8, v38

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v27

    move/from16 v13, v37

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v26

    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_12

    move/from16 v3, v36

    goto :goto_11

    :cond_12
    move/from16 v3, v35

    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v25

    const-string v3, ""

    const/16 v5, 0x8

    aput-object v3, v4, v5

    const-string v3, ""

    const/16 v5, 0x9

    aput-object v3, v4, v5

    const-string v3, ""

    aput-object v3, v4, v19

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "TOTAL"

    aput-object v3, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v26

    iget-boolean v3, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v3

    goto :goto_12

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v3

    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v25

    move-wide/from16 v5, p8

    add-long v11, v5, v20

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v11, 0x8

    aput-object v3, v4, v11

    move/from16 v40, v7

    move/from16 v41, v8

    const/16 v3, 0x11

    move-wide/from16 v11, p10

    move-wide/from16 v32, p16

    add-long v7, v11, v32

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v4, v8

    move/from16 v43, v10

    move v10, v13

    move/from16 v3, v40

    move-wide/from16 v7, p12

    move-wide/from16 v13, p18

    add-long v11, v7, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v19

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v44, v3

    move-wide/from16 v3, p10

    goto/16 :goto_15

    :cond_14
    move v3, v7

    move/from16 v43, v10

    move/from16 v10, v37

    move/from16 v41, v38

    move-wide/from16 v5, p8

    move-wide/from16 v7, p12

    move-wide/from16 v13, p18

    move-wide/from16 v32, p16

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v4, 0x8

    new-array v11, v4, [Ljava/lang/Object;

    const-string v4, "Unknown"

    aput-object v4, v11, v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v11, v12

    iget-boolean v4, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_15

    move/from16 v4, v36

    goto :goto_13

    :cond_15
    move/from16 v4, v35

    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v11, v12

    const-string v4, ""

    aput-object v4, v11, v27

    const-string v4, ""

    aput-object v4, v11, v26

    const-string v4, ""

    aput-object v4, v11, v25

    invoke-static {v0, v1, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v4, 0x8

    new-array v11, v4, [Ljava/lang/Object;

    const-string v4, "TOTAL"

    aput-object v4, v11, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v11, v12

    iget-boolean v4, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v4

    goto :goto_14

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v4

    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v11, v12

    move/from16 v44, v3

    add-long v3, v5, v20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v27

    move-wide/from16 v3, p10

    add-long v5, v3, v32

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v26

    add-long v5, v7, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v11, v25

    invoke-static {v0, v1, v11}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    if-eqz p4, :cond_1e

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, " Dalvik Details"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v42, 0x11

    :goto_16
    move/from16 v5, v42

    const/16 v6, 0x1f

    if-ge v5, v6, :cond_1e

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v11

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v12

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v3

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v4

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v16

    invoke-virtual {v2, v5}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOutPss(I)I

    move-result v18

    if-nez v6, :cond_19

    if-nez v12, :cond_19

    if-nez v1, :cond_19

    if-nez v3, :cond_19

    if-nez v4, :cond_19

    iget-boolean v7, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v7, :cond_17

    move/from16 v7, v18

    goto :goto_17

    :cond_17
    move/from16 v7, v16

    :goto_17
    if-eqz v7, :cond_18

    goto :goto_18

    :cond_18
    move/from16 v45, v9

    const/16 v3, 0x8

    const/16 v24, 0x9

    goto/16 :goto_1b

    :cond_19
    :goto_18
    if-eqz p3, :cond_1b

    const-string v7, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    move/from16 v45, v9

    const/16 v8, 0xb

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v9, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v30, 0x1

    aput-object v31, v9, v30

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v29, 0x2

    aput-object v31, v9, v29

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v23, 0x3

    aput-object v31, v9, v23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v22, 0x4

    aput-object v31, v9, v22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v9, v27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v9, v26

    iget-boolean v8, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v8, :cond_1a

    move/from16 v8, v18

    goto :goto_19

    :cond_1a
    move/from16 v8, v16

    :goto_19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v25

    const-string v8, ""

    move/from16 v46, v3

    const/16 v3, 0x8

    aput-object v8, v9, v3

    const-string v8, ""

    const/16 v24, 0x9

    aput-object v8, v9, v24

    const-string v8, ""

    aput-object v8, v9, v19

    invoke-static {v0, v7, v9}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b

    :cond_1b
    move/from16 v46, v3

    move/from16 v45, v9

    const/16 v3, 0x8

    const/16 v24, 0x9

    const-string v7, "%13s %8s %8s %8s %8s %8s %8s %8s"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v28, 0x1

    aput-object v9, v8, v28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v28, 0x2

    aput-object v9, v8, v28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v23, 0x3

    aput-object v9, v8, v23

    iget-boolean v9, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v9, :cond_1c

    move/from16 v9, v18

    goto :goto_1a

    :cond_1c
    move/from16 v9, v16

    :goto_1a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v22, 0x4

    aput-object v9, v8, v22

    const-string v9, ""

    aput-object v9, v8, v27

    const-string v9, ""

    aput-object v9, v8, v26

    const-string v9, ""

    aput-object v9, v8, v25

    invoke-static {v0, v7, v8}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1b
    add-int/lit8 v42, v5, 0x1

    move/from16 v9, v45

    move-wide/from16 v3, p10

    move-wide/from16 v7, p12

    goto/16 :goto_16

    :cond_1d
    move-wide/from16 v32, v11

    move-wide/from16 v20, p14

    :cond_1e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " App Summary"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "%21s %8s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v17

    const-string v5, "Pss(KB)"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v17

    const-string v5, "------"

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Java Heap:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Native Heap:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Code:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Stack:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Graphics:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Private Other:"

    aput-object v5, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "System:"

    aput-object v3, v4, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static {v0, v1, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, v2, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    if-eqz v1, :cond_1f

    const-string v1, "%21s %8d %21s %8d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TOTAL:"

    aput-object v4, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "TOTAL SWAP PSS:"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c

    :cond_1f
    const-string v1, "%21s %8d %21s %8d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "TOTAL:"

    aput-object v4, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "TOTAL SWAP (KB):"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    return-void
.end method

.method private static dumpMemoryInfo(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;IIIIIIZII)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10900000001L

    move-object/from16 v5, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10500000002L

    move/from16 v6, p4

    invoke-virtual {v0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    move/from16 v7, p5

    invoke-virtual {v0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000004L

    move/from16 v8, p6

    invoke-virtual {v0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000005L

    move/from16 v9, p7

    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000006L

    move/from16 v10, p8

    invoke-virtual {v0, v3, v4, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000007L

    move/from16 v11, p9

    invoke-virtual {v0, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    if-eqz p10, :cond_0

    const-wide v12, 0x10500000009L

    move/from16 v4, p12

    invoke-virtual {v0, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move/from16 v14, p11

    goto :goto_0

    :cond_0
    move/from16 v4, p12

    const-wide v12, 0x10500000008L

    move/from16 v14, p11

    invoke-virtual {v0, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method static freeTextLayoutCachesIfNeeded(I)V
    .locals 3

    if-eqz p0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityThread"

    const-string v2, "Cleared TextLayout Caches"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private getGetProviderLock(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    new-instance v0, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v0, p1, p2}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v3, p0, Landroid/app/ActivityThread;->mGetProviderLocks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.dalvik.vm.isa."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    move-object v0, v2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    return-object v3

    :cond_1
    iget-object v0, p2, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntentBeingBroadcast()Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v11, v0

    iget-object v12, v9, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v12

    if-eqz v11, :cond_1

    const/4 v0, 0x0

    :goto_1
    goto :goto_2

    :cond_1
    if-eqz p5, :cond_2

    :try_start_0
    iget-object v0, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    iget-object v0, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v1, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    :goto_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    move-object v13, v4

    if-eqz v13, :cond_4

    iget-object v4, v13, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_c

    iget-object v4, v13, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_4
    sget-boolean v4, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v4, :cond_7

    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_5

    const-string v6, "Loading code package "

    goto :goto_4

    :cond_5
    const-string v6, "Loading resource-only package "

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_6

    iget-object v1, v9, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    nop

    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v14, Landroid/app/LoadedApk;

    if-eqz p5, :cond_8

    iget v1, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    move v7, v3

    goto :goto_5

    :cond_8
    move v7, v2

    :goto_5
    move-object v1, v14

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)V

    move-object v13, v14

    iget-boolean v1, v9, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v1, :cond_9

    const-string v1, "android"

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    nop

    invoke-virtual {v9}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v13, v10, v1}, Landroid/app/LoadedApk;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    :cond_9
    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    if-eqz p5, :cond_b

    iget-object v1, v9, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    iget-object v1, v9, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_6
    monitor-exit v12

    return-object v13

    :goto_7
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method static handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {p0, v1}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Landroid/app/ActivityThread;->attemptAttachAgent(Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    :cond_2
    return-void
.end method

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 28

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v1, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->registerSensitiveThread()V

    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    invoke-static {v12}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->enableRecentAllocations(Z)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/os/Process;->setStartTimes(JJ)V

    iput-object v9, v8, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v8, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, v8, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    const/4 v0, 0x0

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v2, :cond_1

    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v3, v3, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    iput-object v3, v2, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget v3, v3, Landroid/app/ProfilerInfo;->samplingInterval:I

    iput v3, v2, Landroid/app/ActivityThread$Profiler;->samplingInterval:I

    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->autoStopProfiler:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->autoStopProfiler:Z

    iget-object v2, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v3, v3, Landroid/app/ProfilerInfo;->streamingOutput:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$Profiler;->streamingOutput:Z

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-boolean v2, v2, Landroid/app/ProfilerInfo;->attachAgentDuringBind:Z

    if-eqz v2, :cond_1

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v2, Landroid/app/ProfilerInfo;->agent:Ljava/lang/String;

    :cond_1
    move-object v13, v0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;I)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->setProcessPackageName(Ljava/lang/String;)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    const-string v2, "com.spotify.music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v14, v8, Landroid/app/ActivityThread;->mDisableTrimMemory:Z

    :cond_2
    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    :cond_3
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xc

    if-gt v0, v2, :cond_4

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Landroid/os/AsyncTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    :cond_4
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Landroid/os/Message;->updateCheckRecycle(I)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v0, Landroid/graphics/ImageDecoder;->sApiLevel:I

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    iget-object v2, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    :try_start_0
    iget-object v0, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v3, v4}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v8, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    iget v0, v8, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {v8, v0}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v8, v0, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    if-eqz v13, :cond_5

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v13, v0}, Landroid/app/ActivityThread;->handleAttachAgent(Ljava/lang/String;Landroid/app/LoadedApk;)V

    :cond_5
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_6

    iput-boolean v12, v8, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    const/16 v0, 0xa0

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    goto :goto_0

    :cond_6
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getOverrideDensity()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "override app density from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, v8, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    :cond_7
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    iget-object v0, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string/jumbo v2, "time_12_24"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_9

    const-string v2, "24"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v2

    :cond_9
    move-object v6, v0

    invoke-static {v6}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    iget-object v0, v8, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v2, "debug_view_attributes"

    invoke-virtual {v0, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v12

    goto :goto_2

    :cond_a
    move v0, v14

    :goto_2
    sput-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initThreadDefaults(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    :try_start_1
    const-class v0, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v2, Landroid/os/Build;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    const/4 v5, 0x2

    if-eqz v0, :cond_c

    const/16 v0, 0x1fa4

    invoke-static {v0}, Landroid/os/Debug;->changeDebugPort(I)V

    iget v0, v9, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    if-ne v0, v5, :cond_b

    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is waiting for the debugger on port 8100..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    move-object v2, v0

    :try_start_2
    iget-object v0, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v2, v0, v12}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    :try_start_3
    iget-object v0, v8, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v2, v0, v14}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    nop

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_b
    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can be debugged on port 8100..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_d

    move v0, v12

    goto :goto_5

    :cond_d
    move v0, v14

    :goto_5
    move v4, v0

    invoke-static {v4}, Landroid/os/Trace;->setAppTracingAllowed(Z)V

    if-nez v4, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    move v0, v14

    goto :goto_7

    :cond_f
    :goto_6
    move v0, v12

    :goto_7
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setDebuggingEnabled(Z)V

    if-eqz v4, :cond_10

    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    :cond_10
    const-string v0, "Setup proxies"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v0, "connectivity"

    move-object/from16 v16, v7

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {v7}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    :try_start_4
    invoke-interface {v5, v15}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_11
    :goto_8
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    if-eqz v0, :cond_14

    :try_start_5
    new-instance v0, Landroid/app/ApplicationPackageManager;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct {v0, v15, v5}, Landroid/app/ApplicationPackageManager;-><init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v0, v5, v14}, Landroid/app/ApplicationPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    nop

    nop

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v5, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    :cond_12
    const-string v5, "ActivityThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uses different ABI(s) than its instrumentation: package["

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instrumentation["

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationSplitAppDirs:[Ljava/lang/String;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v2, v0}, Landroid/app/ActivityThread;->getInstrumentationLibrary(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/InstrumentationInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentationLibDir:Ljava/lang/String;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getSplitAppDirs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedSplitAppDirs:[Ljava/lang/String;

    iget-object v2, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getLibDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroid/app/ActivityThread;->mInstrumentedLibDir:Ljava/lang/String;

    goto :goto_9

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find instrumentation info for: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    const/4 v0, 0x0

    :goto_9
    move-object v15, v0

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-static {v8, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v5

    iget-object v0, v8, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {v8, v5, v0}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0, v5}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    :cond_15
    move-object v3, v1

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    move v1, v0

    :try_start_6
    invoke-direct {v8, v5}, Landroid/app/ActivityThread;->setupGraphicsSupport(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    move-object v2, v0

    throw v2

    :cond_16
    invoke-static {v12}, Landroid/view/ThreadedRenderer;->setIsolatedProcess(Z)V

    :goto_a
    const-string v0, "dalvik.vm.usejitprofiles"

    invoke-static {v0, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroid/app/DexLoadReporter;->getInstance()Landroid/app/DexLoadReporter;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/BaseDexClassLoader;->setReporter(Ldalvik/system/BaseDexClassLoader$Reporter;)V

    :cond_17
    const-string v0, "NetworkSecurityConfigProvider.install"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v5}, Landroid/security/net/config/NetworkSecurityConfigProvider;->install(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v15, :cond_1a

    :try_start_7
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v1, v14, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    nop

    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_18

    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    move-object v0, v1

    :cond_18
    move-object v2, v0

    invoke-virtual {v15, v2}, Landroid/content/pm/InstrumentationInfo;->copyTo(Landroid/content/pm/ApplicationInfo;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v1, v8

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object v3, v0

    move/from16 v24, v4

    move-object/from16 v4, v17

    move-object/from16 v25, v5

    move/from16 v5, v19

    move-object/from16 v17, v6

    move/from16 v6, v20

    move-object/from16 v18, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    move-object v6, v0

    :try_start_8
    invoke-virtual {v6}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation;

    iput-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    nop

    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move-object v2, v8

    move-object v3, v6

    move-object/from16 v19, v4

    move-object/from16 v4, v25

    move-object/from16 v20, v6

    move-object v6, v0

    move-object/from16 v21, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;)V

    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-boolean v0, v15, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v0, :cond_19

    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_19

    iget-object v0, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iput-boolean v12, v0, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    :cond_19
    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate instrumentation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v8}, Landroid/app/Instrumentation;->basicInit(Landroid/app/ActivityThread;)V

    :goto_c
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    goto :goto_d

    :cond_1b
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clampGrowthLimit()V

    :goto_d
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    move-object v2, v0

    const/16 v3, 0x1b

    :try_start_9
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-boolean v4, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    move-object v4, v0

    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->autofillCompatibilityEnabled:Z

    invoke-virtual {v4, v0}, Landroid/app/Application;->setAutofillCompatibilityEnabled(Z)V

    iput-object v4, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    iget-boolean v0, v9, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v0, :cond_1c

    :try_start_a
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    invoke-direct {v8, v4, v0}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, v8, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x84

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v12, v23

    move-object/from16 v5, v25

    goto/16 :goto_11

    :cond_1c
    :goto_e
    :try_start_b
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v5}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    nop

    :try_start_c
    iget-object v0, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, v4}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_f

    :catch_7
    move-exception v0

    :try_start_d
    iget-object v5, v8, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v5, :cond_23

    :goto_f
    iget-object v0, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v3, :cond_1d

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1e
    move-object/from16 v5, v25

    invoke-static {v5}, Landroid/provider/FontsContract;->setApplicationContextForResources(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_20

    :try_start_e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v0, v3, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1f

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "preloaded_fonts"

    invoke-virtual {v3, v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v6, v9, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->preloadFonts(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8

    :cond_1f
    goto :goto_10

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_20
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v26, v15

    sub-long v14, v6, v10

    long-to-int v0, v14

    const/4 v3, 0x0

    if-eqz v5, :cond_21

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_21
    move-object/from16 v12, v23

    if-eqz v12, :cond_22

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v14

    if-nez v14, :cond_22

    if-eqz v3, :cond_22

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v12, v15, v14, v3, v0}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    :cond_22
    return-void

    :cond_23
    move-object/from16 v26, v15

    move-object/from16 v12, v23

    move-object/from16 v5, v25

    :try_start_f
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to create application "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_9
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v12, v23

    move-object/from16 v5, v25

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception thrown in onCreate() of "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v12, v23

    move-object/from16 v5, v25

    :goto_11
    iget-object v4, v9, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v3, :cond_24

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_25
    throw v0

    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0
.end method

.method private handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBindService s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " rebind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3, v3}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v6

    iget v6, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-direct {p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_2
    if-nez p1, :cond_3

    monitor-exit v5

    return-void

    :cond_3
    sget-boolean v6, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v6, :cond_4

    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Handle configuration changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v6, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    iget-object v6, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v7}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v6, :cond_5

    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    iput-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    :cond_5
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez p2, :cond_6

    monitor-exit v5

    return-void

    :cond_6
    iget-object v6, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v6

    move v0, v6

    iget v6, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-virtual {p0, v6}, Landroid/app/ActivityThread;->applyCompatConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    move-object p1, v6

    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_7
    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->rebase()V

    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v0}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    nop

    :goto_1
    if-ge v1, v6, :cond_b

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    instance-of v8, v7, Landroid/app/Activity;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Landroid/app/Activity;

    iget-object v9, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0, v9, p1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    invoke-direct {p0, v7, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 10

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCreateBackupAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asked to instantiate non-matching package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    return-void

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v2, "ActivityThread"

    const-string v3, "Asked to create backup agent for nonexistent package"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v3, 0x3

    if-nez v2, :cond_4

    iget v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    iget v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v4, v3, :cond_4

    :cond_3
    const-string v2, "android.app.backup.FullBackupAgent"

    :cond_4
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/backup/BackupAgent;

    if-eqz v5, :cond_6

    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v3, :cond_5

    const-string v3, "ActivityThread"

    const-string v6, "Reusing existing agent instance"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    goto :goto_0

    :cond_6
    :try_start_2
    sget-boolean v6, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v6, :cond_7

    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initializing agent class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/backup/BackupAgent;

    move-object v5, v7

    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onCreate()V

    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v8

    move-object v4, v8

    iget-object v8, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent threw during creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    iget v7, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-ne v7, v3, :cond_8

    goto :goto_0

    :cond_8
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    :goto_0
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3, v1, v4}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    nop

    nop

    return-void

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create BackupAgent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    iget-object v0, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AppComponentFactory;->instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    :try_start_1
    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0, v0}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v3}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v9

    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v10

    move-object v4, v1

    move-object v5, v2

    move-object v6, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4, v11, v11, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    nop

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-void

    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDestroyBackupAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iget-object v1, v0, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/backup/BackupAgent;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mBackupAgents:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to destroy unknown backup agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleDumpActivity(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 7

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method static handleDumpHeap(Landroid/app/ActivityThread$DumpHeapData;)V
    .locals 4

    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Managed heap dump failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_1
    nop

    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "ActivityThread"

    const-string v3, "Failure closing profile fd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    throw v0

    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpNativeMallocInfo(Ljava/io/FileDescriptor;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpNativeHeap(Ljava/io/FileDescriptor;)V

    :goto_3
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->dumpHeapFinished(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    nop

    return-void

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private handleDumpProvider(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpComponentInfo;)V
    .locals 5

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p1, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private handleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->dispatchEnterAnimationComplete()V

    :cond_0
    return-void
.end method

.method private handleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_1

    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)V

    if-nez p2, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStopped()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onLocalVoiceInteractionStarted()V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 13

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    iget-object v0, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/ContextImpl;

    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/ContextImpl;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/ContextImpl;

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v6, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->prepareToEnterProcess()V

    invoke-virtual {p1, v5}, Landroid/app/ActivityThread$ReceiverData;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5, v7, v8}, Landroid/app/AppComponentFactory;->instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v6

    nop

    nop

    const/4 v6, 0x0

    :try_start_1
    sget-boolean v7, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Performing receive of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", appName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", comp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", dir="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v7, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    iget-object v8, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v9, v10}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v9, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " onReceive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    sget-boolean v8, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v8, :cond_2

    const-string v8, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finishing failed broadcast to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    iget-object v8, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v8, v5, v7}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    :cond_3
    :goto_0
    sget-object v7, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    nop

    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/app/ActivityThread$ReceiverData;->finish()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to start receiver "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    sget-object v8, Landroid/app/ActivityThread;->sCurrentBroadcastIntent:Ljava/lang/ThreadLocal;

    invoke-virtual {v8, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v7

    :catch_1
    move-exception v3

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing failed broadcast to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityThread"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p1, v2}, Landroid/app/ActivityThread$ReceiverData;->sendFinished(Landroid/app/IActivityManager;)V

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "I",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;",
            "Landroid/app/servertransaction/PendingTransactionActions;",
            "Z",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p8

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v11, v0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    invoke-direct {v6, v7, v12, v10, v13}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    :cond_0
    iget-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {v6, v7, v0, v10}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    :cond_1
    iget-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move/from16 v3, p2

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V

    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-boolean v12, v7, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    iput-object v13, v7, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v8, :cond_3

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v0, :cond_2

    iput-object v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    if-eqz v9, :cond_5

    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v0, :cond_4

    iput-object v9, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_1

    :cond_4
    iget-object v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_1
    move/from16 v0, p6

    iput-boolean v0, v7, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    move-object/from16 v1, p7

    iput-object v1, v7, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v2, p5

    invoke-virtual {v6, v7, v2, v11}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    return-void
.end method

.method private handleRelaunchActivityLocally(Landroid/os/IBinder;)V
    .locals 7

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    const-string v1, "ActivityThread"

    const-string v2, "Activity to relaunch no longer exists"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/util/MergedConfiguration;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    :goto_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    const/4 v3, 0x0

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v2, v4}, Landroid/app/servertransaction/ActivityRelaunchItem;->obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;

    move-result-object v3

    nop

    invoke-static {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    invoke-virtual {v5, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    invoke-virtual {p0, v5}, Landroid/app/ActivityThread;->executeTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void

    :cond_3
    :goto_1
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity state must be in [ON_RESUME..ON_STOP] in order to be relaunched,current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRunIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "main"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "runIsolatedEntryPoint failed"

    invoke-direct {v1, v2, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 6

    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    :cond_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v2, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v4, 0x1

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method private handleSetCoreSettings(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/app/ActivityThread;->onCoreSettingsChange()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSleeping(Landroid/os/IBinder;Z)V
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSleeping: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "sleeping"

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    :cond_1
    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->activitySlept(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_3
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string v3, "handleSleeping"

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleStartBinderTracking()V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->enableTracing()V

    return-void
.end method

.method private handleStopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->disableTracing()V

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/TransactionTracker;->writeTracesToFile(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TransactionTracker;->clearTraces()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {}, Landroid/os/Binder;->getTransactionTracker()Landroid/os/TransactionTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/TransactionTracker;->clearTraces()V

    throw v0
.end method

.method private handleStopService(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    if-eqz v0, :cond_3

    :try_start_0
    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {v0}, Landroid/app/Service;->detachAndCleanUp()V

    invoke-virtual {v0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroid/app/ContextImpl;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/app/ContextImpl;

    const-string v4, "Service"

    invoke-virtual {v3, v2, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopService: exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStopService: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleTrimMemory(I)V
    .locals 6

    const-string/jumbo v0, "trimMemory"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trimming memory to level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mDisableTrimMemory:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip Trimming memory, me="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v2, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-interface {v5, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 5

    iget-object v0, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->prepareToEnterProcess()V

    iget-object v1, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v2, v3, v4, v1}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v4}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    nop

    goto :goto_2

    :goto_1
    nop

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v0, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :goto_2
    return-void
.end method

.method private handleUpdatePackageCompatibilityInfo(Landroid/app/ActivityThread$UpdateCompatibilityData;)V
    .locals 3

    iget-object v0, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v1}, Landroid/app/LoadedApk;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p1, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static inCompatConfigList(ILjava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/pm/IPackageManager;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    nop

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    .locals 6

    const/16 v0, 0x83

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-ne v3, v2, :cond_7

    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivityThread"

    const-string v5, "incProviderRef: stable snatched provider from the jaws of death"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    move v1, v3

    nop

    :cond_1
    move v0, v1

    :try_start_0
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_2

    const-string v1, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incProviderRef Now stable - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v4, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": unstableDelta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v3, v2, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_1

    :cond_3
    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    iget v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-ne v3, v2, :cond_7

    iget-boolean v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-eqz v3, :cond_5

    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityThread"

    const-string v3, "incProviderRef: unstable snatched provider from the jaws of death"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    :try_start_1
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incProviderRef: Now unstable - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v4, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1, v2}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_7
    :goto_1
    return-void
.end method

.method private installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ProviderInfo;

    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Pub "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ActivityThread"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_1

    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Installing external provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v10, p1

    :goto_0
    move-object v6, v5

    move-object v5, v0

    goto/16 :goto_5

    :cond_2
    :goto_1
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-nez v0, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    const-string v0, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v8, 0x0

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v8, p1

    :goto_2
    move-object/from16 v10, p1

    goto :goto_3

    :cond_5
    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v8, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v10, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v10, p1

    :goto_3
    const/4 v11, 0x0

    if-nez v8, :cond_7

    const-string v0, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get context for package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " while loading content provider "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_7
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_8

    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/content/Context;->createContextForSplit(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v0

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_8
    :goto_4
    :try_start_3
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12, v6}, Landroid/app/ActivityThread;->peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;

    move-result-object v12

    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    move-object v12, v13

    :cond_9
    invoke-virtual {v12}, Landroid/app/LoadedApk;->getAppFactory()Landroid/app/AppComponentFactory;

    move-result-object v13

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Landroid/app/AppComponentFactory;->instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    move-result-object v13

    move-object v5, v13

    invoke-virtual {v5}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object v13

    if-nez v13, :cond_a

    const-string v6, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to instantiate class "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from sourceDir "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :cond_a
    sget-boolean v11, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v11, :cond_b

    const-string v11, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiating local provider "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v5, v8, v3}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    nop

    move-object v0, v13

    goto/16 :goto_0

    :goto_5
    iget-object v11, v1, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_4
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_c

    const-string v0, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking to add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v8, v0

    if-eqz v6, :cond_f

    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v9, :cond_e

    sget-boolean v12, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v12, :cond_d

    const-string v12, "ActivityThread"

    const-string v13, "installProvider: lost the race, using existing local provider"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v12, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    move-object v5, v12

    goto :goto_6

    :cond_e
    new-instance v12, Landroid/app/ContentProviderHolder;

    invoke-direct {v12, v3}, Landroid/app/ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    move-object v2, v12

    iput-object v5, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    const/4 v12, 0x1

    iput-boolean v12, v2, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    invoke-direct {v1, v5, v6, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v12

    move-object v9, v12

    iget-object v12, v1, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v1, Landroid/app/ActivityThread;->mLocalProvidersByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    iget-object v12, v9, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    move-object v0, v12

    goto :goto_b

    :cond_f
    iget-object v0, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    move-object v9, v0

    if-eqz v9, :cond_11

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_10

    const-string v0, "ActivityThread"

    const-string v12, "installProvider: lost the race, updating ref count"

    invoke-static {v0, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-nez p5, :cond_14

    invoke-direct {v1, v9, v4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v12, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v12, v4}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    :goto_7
    goto :goto_a

    :cond_11
    :try_start_6
    invoke-direct {v1, v5, v6, v2}, Landroid/app/ActivityThread;->installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;

    move-result-object v0

    if-eqz p5, :cond_12

    new-instance v12, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v13, 0x3e8

    invoke-direct {v12, v2, v0, v13, v13}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    move-object v9, v12

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    if-eqz v4, :cond_13

    new-instance v13, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v14, 0x1

    invoke-direct {v13, v2, v0, v14, v12}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    goto :goto_8

    :cond_13
    const/4 v14, 0x1

    new-instance v13, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-direct {v13, v2, v0, v12, v14}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ContentProviderHolder;Landroid/app/ActivityThread$ProviderClientRecord;II)V

    :goto_8
    move-object v9, v13

    :goto_9
    iget-object v12, v1, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_a
    iget-object v0, v9, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    :goto_b
    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_4
    move-exception v0

    iget-object v6, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-eqz v6, :cond_15

    return-object v11

    :cond_15
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to get provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private installProviderAuthoritiesLocked(Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)Landroid/app/ActivityThread$ProviderClientRecord;
    .locals 11

    iget-object v0, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    array-length v2, v0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "com.android.blockednumber"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "downloads"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "telephony"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "call_log_shadow"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "call_log"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v6, "com.android.calendar"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_6
    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v8

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v9, Landroid/app/ActivityThread$ProviderClientRecord;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V

    array-length v3, v0

    :goto_3
    if-ge v8, v3, :cond_3

    aget-object v4, v0, v8

    new-instance v5, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v5, v4, v1}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v6, :cond_2

    const-string v7, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    iget-object v10, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " already published as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3260a241 -> :sswitch_6
        -0x1b2f0756 -> :sswitch_5
        -0xa45121d -> :sswitch_4
        0x3cfb2fc -> :sswitch_3
        0x2eaeb418 -> :sswitch_2
        0x4e3e48eb -> :sswitch_1
        0x76f32249 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isSystem()Z
    .locals 1

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/ActivityThread;->sCurrentActivityThread:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$attach$0(Landroid/app/ActivityThread;Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v2}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V

    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/16 v1, 0x76

    invoke-virtual {p0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9

    const-string v0, "ActivityThreadMain"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    invoke-static {}, Landroid/os/Environment;->initForCurrentUser()V

    new-instance v3, Landroid/app/ActivityThread$EventLoggingReporter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/ActivityThread$EventLoggingReporter;-><init>(Landroid/app/ActivityThread$1;)V

    invoke-static {v3}, Llibcore/io/EventLogger;->setReporter(Llibcore/io/EventLogger$Reporter;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/Environment;->getUserConfigDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->setDefaultUserDirectory(Ljava/io/File;)V

    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_1

    aget-object v7, p0, v6

    if-eqz v7, :cond_0

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    aget-object v7, p0, v6

    const-string/jumbo v8, "seq="

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/app/ActivityThread;

    invoke-direct {v6}, Landroid/app/ActivityThread;-><init>()V

    invoke-direct {v6, v0, v4, v5}, Landroid/app/ActivityThread;->attach(ZJ)V

    sget-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-virtual {v6}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native nDumpGraphicsInfo(Ljava/io/FileDescriptor;)V
.end method

.method private onCoreSettingsChange()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    const-string v1, "debug_view_attributes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    sget-boolean v1, Landroid/view/View;->mDebugViewAttributes:Z

    if-eq v0, v1, :cond_1

    sput-boolean v0, Landroid/view/View;->mDebugViewAttributes:Z

    invoke-direct {p0}, Landroid/app/ActivityThread;->relaunchAllActivities()V

    :cond_1
    return-void
.end method

.method private performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v3, v0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v3

    not-int v3, v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    if-nez p5, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v4, v0, v3, p4, p5}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    const/4 v4, 0x0

    iput v4, p1, Landroid/app/Activity;->mConfigChangeFlags:I

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v5, p1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p2, v2}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v5

    if-eqz p5, :cond_5

    invoke-virtual {p1, p4, v5}, Landroid/app/Activity;->dispatchMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_5
    if-eqz v1, :cond_7

    iput-boolean v4, p1, Landroid/app/Activity;->mCalled:Z

    invoke-virtual {p1, v5}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v4, p1, Landroid/app/Activity;->mCalled:Z

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance v4, Landroid/util/SuperNotCalledException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    :goto_1
    return-object v5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Activity token not set. Is the activity attached?"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_0
    invoke-static {p2, v0}, Landroid/app/ActivityThread;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;
    .locals 8

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3800(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3800(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3800(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    move-object v2, p0

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Landroid/app/ActivityThread;->performActivityConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3800(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityThread;->freeTextLayoutCachesIfNeeded(I)V

    return-object v0
.end method

.method private performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    return-void
.end method

.method private performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 31

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    const/4 v11, 0x1

    if-nez v0, :cond_0

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v15, v0, v1, v11}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    :cond_0
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v2, v15, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    move-object v9, v0

    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread;->createBaseContextForActivity(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/ContextImpl;

    move-result-object v8

    const/4 v7, 0x0

    move-object v1, v7

    :try_start_0
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->incrementExpectedActivityCount(Ljava/lang/Class;)V

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v2, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_0
    move-object v6, v1

    :try_start_1
    iget-object v0, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    :try_start_2
    iget-object v1, v15, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z
    :try_end_2
    .catch Landroid/util/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v1, :cond_4

    :try_start_3
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing launch of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/util/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    goto/16 :goto_a

    :cond_4
    :goto_1
    :try_start_4
    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z
    :try_end_4
    .catch Landroid/util/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    if-eqz v1, :cond_5

    :try_start_5
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", comp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/util/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    if-eqz v6, :cond_d

    :try_start_6
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, v15, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v4, v1

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;
    :try_end_6
    .catch Landroid/util/SuperNotCalledException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    if-eqz v1, :cond_6

    :try_start_7
    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_7
    .catch Landroid/util/SuperNotCalledException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    :try_start_8
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z
    :try_end_8
    .catch Landroid/util/SuperNotCalledException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    if-eqz v1, :cond_7

    :try_start_9
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/util/SuperNotCalledException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;
    :try_end_a
    .catch Landroid/util/SuperNotCalledException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    if-eqz v2, :cond_8

    :try_start_b
    iget-boolean v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v2, :cond_8

    iget-object v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    move-object v1, v2

    iput-object v7, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    iput-object v7, v14, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;
    :try_end_b
    .catch Landroid/util/SuperNotCalledException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_8
    move-object/from16 v19, v1

    :try_start_c
    invoke-virtual {v8, v6}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v16

    iget-object v3, v14, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget v2, v14, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iget-object v1, v14, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iget-object v11, v14, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_c
    .catch Landroid/util/SuperNotCalledException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    move-object/from16 v21, v12

    :try_start_d
    iget-object v12, v14, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;
    :try_end_d
    .catch Landroid/util/SuperNotCalledException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :try_start_e
    iget-object v13, v14, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object/from16 v22, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    move-object/from16 v23, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->referrer:Ljava/lang/String;

    move-object/from16 v24, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v25, v10

    iget-object v10, v14, Landroid/app/ActivityThread$ActivityClientRecord;->configCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;
    :try_end_e
    .catch Landroid/util/SuperNotCalledException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-object/from16 v17, v1

    move-object v1, v6

    move/from16 v18, v2

    move-object v2, v8

    move-object/from16 v26, v3

    move-object v3, v15

    move-object/from16 v27, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v26

    move-object/from16 v28, v6

    move/from16 v6, v18

    move-object v7, v0

    move-object/from16 v26, v8

    move-object/from16 v8, v17

    move-object/from16 v29, v9

    move-object v9, v11

    move-object v11, v12

    move-object/from16 v20, v21

    move-object v12, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v27

    move-object/from16 v15, v24

    move-object/from16 v16, v25

    move-object/from16 v17, v19

    move-object/from16 v18, v10

    move-object/from16 v10, v22

    :try_start_f
    invoke-virtual/range {v1 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;Landroid/view/Window;Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    :try_end_f
    .catch Landroid/util/SuperNotCalledException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-object/from16 v2, p2

    if-eqz v2, :cond_9

    move-object/from16 v1, v28

    :try_start_10
    iput-object v2, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;
    :try_end_10
    .catch Landroid/util/SuperNotCalledException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v7, v29

    move-object/from16 v3, p1

    goto/16 :goto_a

    :cond_9
    move-object/from16 v1, v28

    :goto_2
    move-object/from16 v3, p1

    const/4 v4, 0x0

    :try_start_11
    iput-object v4, v3, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/app/Activity;->mStartedActivity:Z

    iget-object v5, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setTheme(I)V

    :cond_a
    iput-boolean v4, v1, Landroid/app/Activity;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v4
    :try_end_11
    .catch Landroid/util/SuperNotCalledException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    if-eqz v4, :cond_b

    move-object/from16 v4, p0

    :try_start_12
    iget-object v6, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v1, v7, v8}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_3

    :cond_b
    move-object/from16 v4, p0

    iget-object v6, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, v3, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v6, v1, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :goto_3
    iget-boolean v6, v1, Landroid/app/Activity;->mCalled:Z

    if-eqz v6, :cond_c

    iput-object v1, v3, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    goto/16 :goto_6

    :cond_c
    new-instance v6, Landroid/util/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_5
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object/from16 v4, p0

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    goto/16 :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v7, v29

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    move-object/from16 v2, p2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    move-object/from16 v2, p2

    goto :goto_5

    :catch_b
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    :goto_4
    goto :goto_8

    :catch_c
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v20, v21

    :goto_5
    move-object v7, v9

    goto/16 :goto_a

    :cond_d
    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    :goto_6
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    iget-object v5, v4, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Landroid/util/SuperNotCalledException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    goto :goto_8

    :catch_e
    move-exception v0

    :goto_7
    move-object/from16 v7, v29

    goto :goto_a

    :catch_f
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object v7, v9

    goto :goto_a

    :catch_10
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object/from16 v29, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    :goto_8
    iget-object v5, v4, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v5, v1, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_9
    return-object v1

    :cond_e
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_11
    move-exception v0

    move-object v1, v6

    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    :goto_a
    throw v0

    :cond_f
    move-object/from16 v26, v8

    move-object v7, v9

    move-object/from16 v20, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 7

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing pause of activity that is not resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v2, Landroid/app/Activity;->mFinished:Z

    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->callActivityOnSaveInstanceState(Landroid/app/ActivityThread$ActivityClientRecord;)V

    :cond_4
    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    nop

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {v5, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/app/servertransaction/PendingTransactionActions;->getOldState()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    nop

    :cond_9
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v2}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to pause activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v3}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method private performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V
    .locals 4

    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_5

    if-nez p3, :cond_2

    iget-boolean v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is already stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "ActivityThread"

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, p6}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_0
    if-nez p3, :cond_5

    invoke-direct {p0, p1, p4, p6}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method static varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private relaunchAllActivities()V
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->scheduleRelaunchActivity(Landroid/os/IBinder;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 9

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    aget-object v5, v0, v4

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v6, :cond_2

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v6

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v7

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/app/IActivityManager;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private sendMessage(ILjava/lang/Object;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;III)V
    .locals 3

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCHEDULE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, p1}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seq= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;IIZ)V
    .locals 3

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCHEDULE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, p1}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p4, v0, Landroid/os/Message;->arg2:I

    if-eqz p5, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setupGraphicsSupport(Landroid/content/Context;)V
    .locals 7

    const-string/jumbo v0, "setupGraphicsSupport"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "java.io.tmpdir"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "ActivityThread"

    const-string v4, "Unable to initialize \"java.io.tmpdir\" property due to missing cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Landroid/view/ThreadedRenderer;->setupDiskCache(Ljava/io/File;)V

    invoke-static {v4}, Landroid/renderscript/RenderScriptCacheDir;->setupDiskCache(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    const-string v5, "ActivityThread"

    const-string v6, "Unable to use shader/script cache: missing code-cache directory"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/GraphicsEnvironment;->setup(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static systemMain()Landroid/app/ActivityThread;
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/view/ThreadedRenderer;->disable(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    :goto_0
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread;->attach(ZJ)V

    return-object v0
.end method

.method private updateDefaultDensity()V
    .locals 2

    iget v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    iget-boolean v1, p0, Landroid/app/ActivityThread;->mDensityCompatMode:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq v0, v1, :cond_0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-static {v0}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    :cond_0
    return-void
.end method

.method private updateLocaleListFromAppContext(Landroid/content/Context;Landroid/os/LocaleList;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/LocaleList;->size()I

    move-result v2

    nop

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0, p2}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    return-void
.end method

.method private updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v1, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v1}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating activity vis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with new config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mVisibleFromServer:Z

    iget v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 9

    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/app/ActivityThread$ProviderKey;

    invoke-direct {v1, p2, p3}, Landroid/app/ActivityThread$ProviderKey;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    iget-object v4, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v4}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquiring provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": existing object\'s process dead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    monitor-exit v0

    return-object v3

    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p4}, Landroid/app/ActivityThread;->incProviderRefLocked(Landroid/app/ActivityThread$ProviderRefCount;Z)V

    :cond_2
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p2

    move/from16 v0, p3

    move/from16 v10, p4

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    const/4 v4, 0x0

    iget-object v5, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v5, :cond_1

    iget-object v5, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v8, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v4, v1

    :cond_1
    const-string v1, "ActivityThread"

    invoke-static {v1, v0, v9, v4}, Landroid/os/OnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquiring provider \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' for user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkgName :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    move v11, v0

    move-object/from16 v12, p1

    invoke-virtual {v8, v12, v9, v11, v10}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v13

    if-eqz v13, :cond_3

    return-object v13

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-direct {v8, v9, v11}, Landroid/app/ActivityThread;->getGetProviderLock(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, v9, v11, v10}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-nez v14, :cond_4

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find provider info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    iget-object v4, v14, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iget-boolean v6, v14, Landroid/app/ContentProviderHolder;->noReleaseNeeded:Z

    move-object v1, v8

    move-object v2, v12

    move-object v3, v14

    move v7, v10

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/app/ContentProviderHolder;Landroid/content/pm/ProviderInfo;ZZZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    iget-object v1, v0, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v14

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method final appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->appNotRespondingViaProvider(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method final applyCompatConfiguration(I)Landroid/content/res/Configuration;
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v2, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    :cond_1
    return-object v0
.end method

.method applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object p2, p0, Landroid/app/ActivityThread;->mMainThreadConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    :cond_1
    return-object p2
.end method

.method public final applyConfigurationToResources(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v7, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_4

    iget v8, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v9}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    invoke-virtual {p0, v8, p2, v9}, Landroid/app/ActivityThread;->applyConfigCompatMainThread(ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v9, v9, Landroid/app/Activity;->mFinished:Z

    if-nez v9, :cond_2

    if-nez p1, :cond_1

    iget-boolean v9, v6, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v9, :cond_2

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_4

    sget-boolean v9, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_3

    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " newConfig="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v8, v6, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_6

    iget-object v7, p0, Landroid/app/ActivityThread;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    nop

    :goto_4
    if-ge v3, v1, :cond_7

    iget-object v4, p0, Landroid/app/ActivityThread;->mLocalProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method final completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V
    .locals 8

    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    const-string v2, "completeRemoveProvider: lost the race, provider still in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    if-ne v3, p1, :cond_2

    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v6, v5, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v6}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v2, :cond_3

    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_5

    const-string v0, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProvider: Invoking ActivityManagerService.removeContentProvider("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/os/IBinder;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method doGcIfNeeded()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-boolean v1, v1, Landroid/app/ActivityThread$Profiler;->handlingProfiling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v1, v1, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    return p2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 11

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    move v10, v3

    if-eqz v0, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p3

    if-eqz v3, :cond_3

    move v9, v2

    goto :goto_2

    :cond_3
    move v9, v1

    :goto_2
    and-int/lit8 v1, p3, 0x3

    if-ne v1, v2, :cond_5

    if-eqz v10, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting code from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (with uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to be run in process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, v10

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v1

    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    goto :goto_2

    :cond_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :cond_2
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    :goto_2
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    if-eqz v4, :cond_7

    iget-object v5, v4, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v5, :cond_4

    iget-object v5, v4, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    invoke-virtual {v4}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_6

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to be run in process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_4
    monitor-exit v1

    return-object v4

    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const v4, 0x10000400

    invoke-interface {v2, p1, v4, p4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    nop

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1, p2, p3}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v2

    return-object v2

    :cond_8
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;ZZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemUiContext()Landroid/app/ContextImpl;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ContextImpl;->createSystemUiContext(Landroid/app/ContextImpl;)Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mSystemUiContext:Landroid/app/ContextImpl;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTopLevelResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual/range {p7 .. p7}, Landroid/app/LoadedApk;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v10

    invoke-virtual/range {p7 .. p7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v11}, Landroid/app/ResourcesManager;->getResources(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method getTransactionExecutor()Landroid/app/servertransaction/TransactionExecutor;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mTransactionExecutor:Landroid/app/servertransaction/TransactionExecutor;

    return-object v0
.end method

.method public handleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 7

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_8

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p3, v1, :cond_1

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eq p3, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v1, :cond_5

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_3

    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle activity moved to display, activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v4, p3, v2}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;IZ)Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v3, :cond_4

    invoke-virtual {v3, p3, v4}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    :cond_4
    goto :goto_2

    :cond_5
    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_6

    const-string v4, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle activity config changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Landroid/app/ActivityThread;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v4}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    :cond_7
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    return-void

    :cond_8
    :goto_3
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_9

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found target activity to report to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method handleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 7

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    move-object v1, v4

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    move-object v1, v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    invoke-virtual {v3, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    :cond_3
    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/app/ResourcesManager;->applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->assetsSeq:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-direct {p0}, Landroid/app/ActivityThread;->relaunchAllActivities()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "configChanged"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    nop

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Landroid/app/ActivityThread;->mUpdatingSystemConfig:Z

    throw v0
.end method

.method public handleDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)V
    .locals 8

    invoke-virtual/range {p0 .. p5}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-static {v0, p2}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v4, v1

    iput v4, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iput-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindowManager:Landroid/view/WindowManager;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->clearContentView()V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v5, :cond_3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v3, v6, v7}, Landroid/view/WindowManagerGlobal;->closeAllExceptView(Landroid/os/IBinder;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    :cond_5
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPendingRemoveWindow:Landroid/view/Window;

    if-nez v4, :cond_6

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v4, p1, v5, v6}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    instance-of v5, v4, Landroid/app/ContextImpl;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Landroid/app/ContextImpl;

    iget-object v6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v6, v7}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    return-void
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-nez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    :try_start_0
    array-length v3, p2

    sub-int/2addr v3, v1

    :goto_0
    move v1, v3

    if-ltz v1, :cond_8

    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v3, v6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoadedApk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :cond_3
    move-object v5, v4

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-eqz v5, :cond_7

    :try_start_1
    aget-object v4, p2, v1

    sget-object v6, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v7, 0x400

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v6, v4, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v6, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v8, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    :cond_5
    goto :goto_3

    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {p0, v8, v7}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/LoadedApk;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    :cond_7
    :goto_4
    add-int/lit8 v3, v1, -0x1

    goto/16 :goto_0

    :cond_8
    :try_start_2
    monitor-exit v2

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_9
    :pswitch_1
    if-nez p1, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_5
    if-nez p2, :cond_b

    goto :goto_8

    :cond_b
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    :try_start_3
    array-length v4, p2

    sub-int/2addr v4, v1

    :goto_6
    move v1, v4

    if-ltz v1, :cond_f

    if-nez v0, :cond_d

    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    iget-object v5, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v4, v5

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    const/4 v0, 0x1

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v4, v1, -0x1

    goto :goto_6

    :cond_f
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    :goto_8
    invoke-static {p1, p2, v0}, Landroid/app/ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 5

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->profilerInfo:Landroid/app/ProfilerInfo;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    iget-object v1, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v1}, Landroid/app/ActivityThread$Profiler;->startProfiling()V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling launch of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/GraphicsEnvironment;->earlyInitEGL()V

    :cond_2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->initialize()V

    invoke-direct {p0, p1, p3}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->reportSizeConfigurations(Landroid/app/ActivityThread$ActivityClientRecord;)V

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/app/servertransaction/PendingTransactionActions;->setOldState(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setRestoreInstanceState(Z)V

    invoke-virtual {p2, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setCallOnPostCreate(Z)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1, v4}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_4
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final handleLowMemory()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->collectComponentCallbacks(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks2;

    invoke-interface {v3}, Landroid/content/ComponentCallbacks2;->onLowMemory()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v2

    const v3, 0x124fb

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    const-string/jumbo v2, "mem"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    return-void
.end method

.method public handleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p2, v1}, Landroid/app/Activity;->dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public handleNewIntent(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V

    return-void
.end method

.method public handlePauseActivity(Landroid/os/IBinder;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    :cond_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p4

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    invoke-direct {p0, v0, p2, p6, p5}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    :cond_2
    return-void
.end method

.method public handlePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, p2, v1}, Landroid/app/Activity;->dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 4

    if-eqz p1, :cond_0

    nop

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0, p2}, Landroid/app/ActivityThread$Profiler;->setProfiler(Landroid/app/ProfilerInfo;)V

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->startProfiling()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Landroid/app/ProfilerInfo;->closeFd()V

    throw v0

    :cond_0
    nop

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    :goto_2
    return-void
.end method

.method public handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    const/4 v0, 0x1

    iput-boolean v0, v10, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v10, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v3

    :try_start_0
    iget-object v4, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v5, p1

    :try_start_1
    iget-object v6, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v13, v2

    move-object v12, v5

    :goto_0
    move v2, v7

    if-ge v2, v4, :cond_1

    :try_start_2
    iget-object v5, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v7, v5, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v7, v6, :cond_0

    move-object v7, v5

    :try_start_3
    iget v8, v7, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v8, v13

    :try_start_4
    iget-object v9, v10, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, -0x1

    move-object v12, v7

    move v13, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v7

    move v2, v8

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v7

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v7, v2, 0x1

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    move v2, v13

    goto/16 :goto_4

    :cond_1
    if-nez v12, :cond_3

    :try_start_5
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityThread"

    const-string v2, "Abort, activity not relaunching!"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v3

    return-void

    :cond_3
    sget-boolean v2, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_4

    const-string v2, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Relaunching activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with configChanges=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v1, v2

    iput-object v5, v10, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_8

    iget-object v2, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_6

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v3, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v10, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    :cond_8
    move-object v14, v1

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_9

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relaunching activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": changedConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v14, :cond_a

    iget v1, v14, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v10, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    invoke-direct/range {p0 .. p0}, Landroid/app/ActivityThread;->updateDefaultDensity()V

    invoke-direct {v10, v14, v5}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    :cond_a
    iget-object v1, v10, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v2, v12, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/ActivityThread$ActivityClientRecord;

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_b

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling relaunch of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez v15, :cond_c

    return-void

    :cond_c
    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, v13

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    iget-boolean v1, v12, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iput-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iget-object v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v1, Landroid/app/Activity;->mChangingConfigurations:Z

    :try_start_6
    iget-boolean v1, v15, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v1, :cond_d

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iget-object v2, v15, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_d
    nop

    iget-object v4, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v5, v12, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-boolean v7, v12, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iget-object v8, v12, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    const-string v9, "handleRelaunchActivity"

    move-object v1, v10

    move-object v2, v15

    move v3, v13

    move-object v6, v11

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread;->handleRelaunchActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;ILjava/util/List;Ljava/util/List;Landroid/app/servertransaction/PendingTransactionActions;ZLandroid/content/res/Configuration;Ljava/lang/String;)V

    if-eqz v11, :cond_e

    invoke-virtual {v11, v0}, Landroid/app/servertransaction/PendingTransactionActions;->setReportRelaunchToWindowManager(Z)V

    :cond_e
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    :goto_3
    move-object v12, v5

    :goto_4
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_4
.end method

.method public handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V
    .locals 14

    iget v0, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget v4, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    if-eq v3, v4, :cond_2

    iget v3, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput v3, p0, Landroid/app/ActivityThread;->mLastSessionId:I

    iget-object v3, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->clearSendChannel()V

    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/app/assist/AssistContent;

    invoke-direct {v5}, Landroid/app/assist/AssistContent;-><init>()V

    :goto_2
    move-object v10, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v5, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v5, 0x0

    if-eqz v13, :cond_a

    if-nez v0, :cond_4

    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v3}, Landroid/app/Application;->dispatchOnProvideAssistData(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Landroid/app/Activity;->onProvideAssistData(Landroid/os/Bundle;)V

    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v5

    :cond_4
    iget v6, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    if-eq v6, v2, :cond_5

    if-eqz v0, :cond_a

    :cond_5
    new-instance v6, Landroid/app/assist/AssistStructure;

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    invoke-direct {v6, v7, v0, v8}, Landroid/app/assist/AssistStructure;-><init>(Landroid/app/Activity;ZI)V

    move-object v4, v6

    iget-object v6, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v7, :cond_7

    iget-object v7, v13, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x2000

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    if-nez v0, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, -0x43

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->removeUnsafeExtras()V

    invoke-virtual {v10, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    goto :goto_5

    :cond_8
    if-nez v0, :cond_9

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v2}, Landroid/app/assist/AssistContent;->setDefaultIntent(Landroid/content/Intent;)V

    :cond_9
    :goto_5
    if-nez v0, :cond_a

    iget-object v2, v13, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v10}, Landroid/app/Activity;->onProvideAssistContent(Landroid/app/assist/AssistContent;)V

    :cond_a
    move-object v1, v5

    if-nez v4, :cond_b

    new-instance v2, Landroid/app/assist/AssistStructure;

    invoke-direct {v2}, Landroid/app/assist/AssistStructure;-><init>()V

    goto :goto_6

    :cond_b
    move-object v2, v4

    :goto_6
    invoke-virtual {v2, v11, v12}, Landroid/app/assist/AssistStructure;->setAcquisitionStartTime(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/assist/AssistStructure;->setAcquisitionEndTime(J)V

    iget-object v4, p0, Landroid/app/ActivityThread;->mLastAssistStructures:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    :try_start_0
    iget-object v5, p1, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    move-object v6, v3

    move-object v7, v2

    move-object v8, v10

    move-object v9, v1

    invoke-interface/range {v4 .. v9}, Landroid/app/IActivityManager;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method public handleResumeActivity(Landroid/os/IBinder;ZZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    sget-boolean v3, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " started activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Landroid/app/Activity;->mStartedActivity:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hideForNow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0x100

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    iget-boolean v6, v2, Landroid/app/Activity;->mStartedActivity:Z

    xor-int/2addr v6, v0

    if-nez v6, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_3
    :goto_1
    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_7

    iget-boolean v7, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_7

    if-eqz v6, :cond_7

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    iget-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iput-object v7, v2, Landroid/app/Activity;->mDecor:Landroid/view/View;

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v10, v5

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    if-eqz v10, :cond_4

    iput-boolean v0, v2, Landroid/app/Activity;->mWindowAdded:Z

    iput-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->notifyChildRebuilt()V

    :cond_4
    iget-boolean v10, v2, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v2, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v10, :cond_5

    iput-boolean v0, v2, Landroid/app/Activity;->mWindowAdded:Z

    invoke-interface {v8, v7, v9}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v9}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    :goto_2
    goto :goto_3

    :cond_7
    if-nez v6, :cond_9

    sget-boolean v7, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v7, :cond_8

    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mStartedActivity set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    :cond_9
    :goto_3
    invoke-static {v1, v4}, Landroid/app/ActivityThread;->cleanUpPendingRemoveWindows(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v4, Landroid/app/Activity;->mFinished:Z

    const/4 v7, 0x0

    if-nez v4, :cond_e

    if-eqz v6, :cond_e

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v4, v4, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_e

    iget-boolean v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v4, :cond_e

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v4, :cond_b

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v4}, Landroid/app/ActivityThread;->performConfigurationChangedForActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;)V

    sget-boolean v4, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v4, :cond_a

    const-string v4, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resuming activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " with newConfig "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v9, v9, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-object v7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    :cond_b
    sget-boolean v4, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v4, :cond_c

    const-string v4, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resuming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with isForward="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v8, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/2addr v3, v8

    if-eq v3, v5, :cond_d

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    or-int/2addr v3, v5

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v0, v3, Landroid/app/Activity;->mVisibleFromServer:Z

    iget v3, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->makeVisible()V

    :cond_e
    iget-object v0, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    sget-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v0, :cond_f

    const-string v0, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling idle handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v3, Landroid/app/ActivityThread$Idler;

    invoke-direct {v3, p0, v7}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v0, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public handleSendResult(Landroid/os/IBinder;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling send result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_5

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v4, Landroid/app/Activity;->mCalled:Z

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mTemporaryPause:Z

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/util/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    throw v2

    :cond_4
    :goto_0
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    invoke-direct {p0, v0, p2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mTemporaryPause:Z

    :cond_5
    return-void
.end method

.method public handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 4

    iget-object v0, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "handleStartActivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->performStart(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldRestoreInstanceState()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldCallOnPostCreate()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    :goto_1
    iget-boolean v1, v0, Landroid/app/Activity;->mCalled:Z

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " did not call through to super.onPostCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_2
    return-void

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t start activity that is not stopped."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleStopActivity(Landroid/os/IBinder;ZILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v2, p3

    iput v2, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    new-instance v1, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    invoke-direct {v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;-><init>()V

    move-object v8, v1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move v4, p2

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing stop of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->access$3600(Landroid/app/ActivityThread$ActivityClientRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    :cond_1
    invoke-virtual {v8, v0}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setState(Landroid/os/Bundle;)V

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v8, v1}, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->setPersistentState(Landroid/os/PersistableBundle;)V

    invoke-virtual {p4, v8}, Landroid/app/servertransaction/PendingTransactionActions;->setStopInfo(Landroid/app/servertransaction/PendingTransactionActions$StopInfo;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    return-void
.end method

.method public handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onTranslucentConversionComplete(Z)V

    :cond_0
    return-void
.end method

.method final handleUnstableProviderDied(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final handleUnstableProviderDiedLocked(Landroid/os/IBinder;Z)V
    .locals 6

    iget-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    if-eqz v0, :cond_3

    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up dead provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v3, v3, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderClientRecord;

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1

    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v2, v2, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :goto_1
    return-void
.end method

.method public handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 9

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWindowVisibility: no activity for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v8, 0x1

    if-nez p2, :cond_1

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "handleWindowVisibility"

    move-object v1, p0

    move-object v2, v0

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string v2, "handleWindowVisibility"

    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    :cond_3
    iput-boolean v8, p0, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    return-void
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ContextImpl;->installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;)V

    new-instance v0, Landroid/app/ActivityThread$Profiler;

    invoke-direct {v0}, Landroid/app/ActivityThread$Profiler;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    iget-object v0, v0, Landroid/app/ActivityThread$Profiler;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p2}, Landroid/app/Activity;->onNewActivityOptions(Landroid/app/ActivityOptions;)V

    :cond_0
    return-void
.end method

.method public final peekPackageInfo(Ljava/lang/String;Z)Landroid/app/LoadedApk;
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoadedApk;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return-object v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method performDestroyActivity(Landroid/os/IBinder;ZIZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 6

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v1, 0x0

    sget-boolean v2, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Performing finish of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_8

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    if-eqz p2, :cond_1

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Activity;->mFinished:Z

    :cond_1
    const-string v2, "destroy"

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "destroy"

    invoke-direct {p0, v0, v3, v2}, Landroid/app/ActivityThread;->callActivityOnStop(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_4

    :try_start_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retain activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    :goto_0
    :try_start_1
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    :cond_5
    goto :goto_1

    :cond_6
    new-instance v2, Landroid/util/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/util/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to destroy activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v5}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    throw v2

    :cond_8
    :goto_2
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/StrictMode;->decrementExpectedActivityCount(Ljava/lang/Class;)V

    return-object v0
.end method

.method performNewIntents(Landroid/os/IBinder;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v4, "performNewIntents"

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v3, Landroid/app/Activity;->mTemporaryPause:Z

    :cond_2
    iget-boolean v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v3, "performNewIntents"

    invoke-virtual {p0, p1, v2, v3}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;

    const-string/jumbo v2, "performNewIntents"

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->performPauseActivityIfNeeded(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZLjava/lang/String;Landroid/app/servertransaction/PendingTransactionActions;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public performRestartActivity(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "performRestartActivity"

    invoke-virtual {v1, p2, v2}, Landroid/app/Activity;->performRestart(ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V

    :cond_0
    return-void
.end method

.method public performResumeActivity(Landroid/os/IBinder;ZLjava/lang/String;)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing resume of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " finished="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-eqz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Trying to resume activity which is already resumed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v3, "ActivityThread"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "ActivityThread"

    invoke-virtual {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->getStateString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1

    :cond_3
    if-eqz p2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v2, v4, Landroid/app/Activity;->mStartedActivity:Z

    :cond_4
    :try_start_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onStateNotSaved()V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v2}, Landroid/app/FragmentController;->noteStateNotSaved()V

    invoke-direct {p0}, Landroid/app/ActivityThread;->checkAndBlockForNetworkAccess()V

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    :cond_5
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v0, v2, p3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    :cond_6
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    invoke-virtual {v2, v4, p3}, Landroid/app/Activity;->performResume(ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->persistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v3}, Landroid/app/ActivityThread$ActivityClientRecord;->setState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_0
    return-object v0

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    :goto_1
    return-object v1
.end method

.method final performStopActivity(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions$StopInfo;ZZZLjava/lang/String;)V

    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    return-void
.end method

.method public prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/ActivityThread$ActivityClientRecord;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v2

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    if-eqz v5, :cond_0

    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestRelaunchActivity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", trying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v5, p1, :cond_4

    move-object v0, v4

    if-eqz p2, :cond_2

    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iput-object p2, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    :cond_2
    :goto_1
    if-eqz p3, :cond_5

    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    iput-object p3, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    if-eqz v3, :cond_6

    const-string v3, "ActivityThread"

    const-string/jumbo v4, "requestRelaunchActivity: target is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v3, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v3}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    move-object v0, v3

    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-boolean p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->mPreserveWindow:Z

    iget-object v3, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {p5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->overrideConfig:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    or-int/2addr v3, p4

    iput v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->pendingConfigChanges:I

    monitor-exit v2

    if-eqz v1, :cond_8

    move-object v2, v0

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;Z)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderRefCount;

    if-nez v3, :cond_1

    monitor-exit v2

    return v0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p2, :cond_7

    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_3

    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_2

    const-string v5, "ActivityThread"

    const-string/jumbo v6, "releaseProvider: stable ref count already 0, how?"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2

    return v0

    :cond_3
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I

    if-nez v7, :cond_c

    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_4

    move v7, v6

    goto :goto_0

    :cond_4
    move v7, v0

    :goto_0
    move v4, v7

    :try_start_1
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_5

    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "releaseProvider: No longer stable w/lastRef="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    if-eqz v4, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    nop

    :goto_1
    invoke-interface {v7, v8, v5, v0}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    goto :goto_4

    :cond_7
    :try_start_2
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_9

    sget-boolean v5, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v5, :cond_8

    const-string v5, "ActivityThread"

    const-string/jumbo v6, "releaseProvider: unstable ref count already 0, how?"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v2

    return v0

    :cond_9
    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    sub-int/2addr v7, v6

    iput v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->unstableCount:I

    if-nez v7, :cond_c

    iget v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->stableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_a

    move v7, v6

    goto :goto_3

    :cond_a
    move v7, v0

    :goto_3
    move v4, v7

    if-nez v4, :cond_c

    :try_start_3
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v7, :cond_b

    const-string v7, "ActivityThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "releaseProvider: No longer unstable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v9, v9, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v8, v8, Landroid/app/ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-interface {v7, v8, v0, v5}, Landroid/app/IActivityManager;->refContentProvider(Landroid/os/IBinder;II)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :cond_c
    :goto_4
    if-eqz v4, :cond_f

    :try_start_4
    iget-boolean v0, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    if-nez v0, :cond_e

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    if-eqz v0, :cond_d

    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "releaseProvider: Enqueueing pending removal - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-boolean v6, v3, Landroid/app/ActivityThread$ProviderRefCount;->removePending:Z

    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v0, v5, v3}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v5, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_e
    const-string v0, "ActivityThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate remove pending of provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/app/ActivityThread$ProviderRefCount;->holder:Landroid/app/ContentProviderHolder;

    iget-object v7, v7, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v7, v7, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_5
    monitor-exit v2

    return v6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->activityRelaunched(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {p2}, Landroid/app/servertransaction/PendingTransactionActions;->shouldReportRelaunchToWindowManager()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->reportActivityRelaunched()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportStop(Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {p1}, Landroid/app/servertransaction/PendingTransactionActions;->getStopInfo()Landroid/app/servertransaction/PendingTransactionActions$StopInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, -0x5c

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    const/16 v1, 0x77

    invoke-virtual {p0, v1, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    return-void
.end method

.method scheduleRelaunchActivity(Landroid/os/IBinder;)V
    .locals 1

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendActivityResult: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v1, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v1

    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;IIZ)V

    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/Activity$NonConfigurationInstances;)Landroid/app/Activity;
    .locals 6

    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    sget-boolean v1, Landroid/app/ActivityThread;->localLOGV:Z

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ").getComponent() returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing launch: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", comp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public stopProfiling()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mProfiler:Landroid/app/ActivityThread$Profiler;

    invoke-virtual {v0}, Landroid/app/ActivityThread$Profiler;->stopProfiling()V

    :cond_0
    return-void
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unscheduleGcIdler()V
    .locals 2

    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    return-void
.end method

.method public updateActivityThreadLog(Z)V
    .locals 3

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# updateActivityThreadLog # on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sput-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityThread;->localLOGV:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_RESULTS:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_BACKUP:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_PROVIDER:Z

    sput-boolean v0, Landroid/app/ActivityThread;->DEBUG_ORDER:Z

    :goto_0
    return-void
.end method

.method public updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread$ApplicationThread;->access$1200(Landroid/app/ActivityThread$ApplicationThread;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    return-void
.end method
