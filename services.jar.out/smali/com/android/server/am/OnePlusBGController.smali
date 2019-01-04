.class public Lcom/android/server/am/OnePlusBGController;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusBGController$SnapShot;,
        Lcom/android/server/am/OnePlusBGController$mAhRecord;,
        Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;,
        Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;,
        Lcom/android/server/am/OnePlusBGController$Traffic;,
        Lcom/android/server/am/OnePlusBGController$UidmAh;,
        Lcom/android/server/am/OnePlusBGController$UidBGC_MDMInfo;,
        Lcom/android/server/am/OnePlusBGController$UidStat;,
        Lcom/android/server/am/OnePlusBGController$UidObserver;,
        Lcom/android/server/am/OnePlusBGController$BatteryReceiver;,
        Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusBGController$MyHandler;,
        Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;,
        Lcom/android/server/am/OnePlusBGController$PROC_TYPE;,
        Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;,
        Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;,
        Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_BGC:Ljava/lang/String; = "com.test.bgc"

.field public static DEBUG_BGC:Z = false

.field private static DEBUG_KEEP:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final INTENT_BUDGET_DAY_RESET:Ljava/lang/String; = "net.oneplus.bgc.budget_reset"

.field private static final INTENT_SLEEP_CHANGED:Ljava/lang/String; = "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

.field private static final INVALID_HANDLE:I = -0x1

.field private static final INVALID_TIMESTAMP:I = -0x1

.field static final MSG_DELAY:J = 0xbb8L

.field private static final NOTIFY_DELAY:J = 0xbb8L

.field private static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "BGC"

.field private static final PROP_BGC_DEBUG_KEEP_RECORD:Ljava/lang/String; = "persist.sys.bgc.keep"

.field private static final PROP_BGC_DEBUG_ON:Ljava/lang/String; = "persist.sys.bgc_debug"

.field private static RESET_PERIOD:J = 0x0L

.field private static final STATE_AWAKE:I = 0x1e6c

.field private static final STATE_SLEEP:I = 0x15be

.field private static final TAG:Ljava/lang/String; = "BGC"

.field static final TRAFFIC_THRESHOLD:J = 0x19000L

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mInited:Z

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mbEnableDispatch:Z


# instance fields
.field private INIT_INVALID_CRITERIA:F

.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mAhcptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mAmsHanlder:Landroid/os/Handler;

.field private mBatteryFilter:Landroid/content/IntentFilter;

.field private mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mBg_GeneCriteria:F

.field private mBg_GeneCriteria_For_Notorious:F

.field private mBg_HighCriteria:F

.field private mBg_HighCriteria_For_Notorious:F

.field private mBg_LowCriteria:F

.field private mBg_LowCriteria_For_Notorious:F

.field private mBg_ReliefBonusmAh:F

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mFg_BlackPkgsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFg_BlackUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

.field private mIsFlushed:Z

.field private mIsPluggedIn:Z

.field private mLastBudgetResetTimeStamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mSippersOfEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfOneShot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field private mStepCounterHandleId:I

.field private final mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

.field private final mUidSippermAhList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidSippermAhStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$UidStat;",
            ">;"
        }
    .end annotation
.end field

.field private mUidTraffic:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusBGController$Traffic;",
            ">;"
        }
    .end annotation
.end field

.field private mUsingTrafficUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    const-string/jumbo v0, "persist.sys.bgc_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    const-string/jumbo v0, "persist.sys.bgc.keep"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    new-instance v1, Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$UidObserver;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$1;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$2;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$3;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object p5, p0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.test.bgc"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusBGController$MyHandler;-><init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const v1, 0x101d0

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method private CheckAbnBgmAh()V
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "======CheckAbnBgmAh======"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpCriteria()V

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->cleanUp()V

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v5, v4}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v6, v4}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@@@[get usage] in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->convertUidSippermAhStatsToList()V

    sget-boolean v7, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    :cond_0
    move v7, v4

    :goto_0
    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/server/am/OnePlusBGController;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v15

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNeedReliefBudget()Z

    move-result v13

    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->HIGH:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    if-eqz v13, :cond_2

    :cond_1
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    goto :goto_1

    :cond_2
    if-eqz v15, :cond_1

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    :goto_1
    move v10, v12

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_6

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->GENERAL:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    if-eqz v13, :cond_5

    :cond_4
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    goto :goto_2

    :cond_5
    if-eqz v15, :cond_4

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    :goto_2
    move v10, v12

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    sget-object v11, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->LOW:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    if-eqz v13, :cond_8

    :cond_7
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    goto :goto_3

    :cond_8
    if-eqz v15, :cond_7

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    :goto_3
    move v10, v12

    :cond_9
    :goto_4
    move v14, v10

    move-object v12, v11

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    cmpl-float v10, v14, v10

    if-eqz v10, :cond_d

    invoke-virtual {v8, v12}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->updateBucketRanking(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;)V

    const/4 v10, 0x0

    if-eqz v13, :cond_a

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    :cond_a
    move v11, v10

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move-object/from16 v23, v5

    float-to-double v4, v11

    sub-double v16, v16, v4

    float-to-double v4, v14

    cmpl-double v4, v16, v4

    if-lez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[E] uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", gRanking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", Noto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Relief="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", RfBgt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", DBgmAh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v6

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfFgmAh()D

    move-result-wide v5

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move-object/from16 v25, v3

    add-float v3, v14, v11

    move-wide/from16 v26, v1

    float-to-double v1, v3

    sget-object v20, Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;

    move v3, v11

    move-object v11, v9

    move-object/from16 v28, v12

    move v12, v4

    move/from16 v29, v3

    move v4, v13

    move v3, v14

    move-wide v13, v5

    move v5, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v1

    move-object/from16 v19, v28

    move/from16 v21, v4

    move/from16 v22, v5

    invoke-virtual/range {v10 .. v22}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->insert(Ljava/lang/String;IDDDLcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;Lcom/android/server/am/OnePlusBGController$DRAIN_TYPE;ZZ)V

    move-object/from16 v11, v28

    goto/16 :goto_5

    :cond_b
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v24, v6

    move/from16 v29, v11

    move-object/from16 v28, v12

    move v4, v13

    move v3, v14

    move v5, v15

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[N-E] uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", gRanking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v28

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", Noto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Rf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", RfBgt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", DBgmAh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object/from16 v11, v28

    :goto_5
    goto :goto_6

    :cond_d
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object v11, v12

    move v4, v13

    move v3, v14

    move v5, v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oops, can\'t find which category of uid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", just skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-wide/from16 v1, v26

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->dump()V

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    const v2, 0x101d4

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[CheckAbnBgmAh] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v26

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusBGController;I)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusBGController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->getTrafficUids()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->resetBudgetByUids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusBGController;IJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->sendMessageDelayed(IJII)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusBGController;ZI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusBGController;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->initObservingUid()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->isNeedResetBudget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsBySippers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->CheckAbnBgmAh()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhStats()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->resetAllBudget()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method private checkTrafficUid(I)Z
    .locals 22

    move/from16 v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$Traffic;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    iget-wide v10, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v10, v1, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-gtz v12, :cond_1

    const-wide/16 v10, 0x1

    :cond_1
    iget-wide v12, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v12, v8, v12

    div-long/2addr v12, v10

    iget-wide v14, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    sub-long v14, v6, v14

    div-long/2addr v14, v10

    const-wide/32 v16, 0x19000

    cmp-long v18, v16, v12

    const/16 v19, 0x1

    if-gez v18, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v1

    const-string v1, "Uid "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rxSpeed="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Byte/s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return v19

    :cond_2
    move-wide/from16 v20, v1

    cmp-long v1, v16, v14

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " txSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Byte/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return v19

    :cond_3
    return v5
.end method

.method private checkTrafficUidLocked(IZ)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now Traffic [uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "], ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$Traffic;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-wide v6, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    iget-wide v12, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    cmp-long v14, v12, v14

    if-gtz v14, :cond_1

    const-wide/16 v12, 0x1

    :cond_1
    iget-wide v14, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v14, v10, v14

    div-long/2addr v14, v12

    move-object/from16 v16, v0

    iget-wide v0, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    sub-long v0, v8, v0

    div-long/2addr v0, v12

    const-wide/32 v17, 0x19000

    cmp-long v19, v17, v14

    const/16 v20, 0x1

    if-gez v19, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rxSpeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Byte/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    monitor-exit v3

    return v20

    :cond_2
    move-object/from16 v21, v5

    cmp-long v4, v17, v0

    if-gez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " txSpeed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " Byte/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    monitor-exit v3

    return v20

    :cond_3
    goto :goto_0

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v21, v5

    const-string v0, "base_traffic is invalid"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_5
    move-object/from16 v16, v0

    const-string/jumbo v0, "ustats == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t use network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private computeUidTraffic(I)Z
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUid(I)Z

    move-result v2

    move v0, v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v11, Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusBGController$Traffic;-><init>(Lcom/android/server/am/OnePlusBGController;IJJJ)V

    move-object v2, v11

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertUidSippermAhStatsToList()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sipper size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusBGController;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], accumulated sum-up of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " totalPowerMah="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private dumpCriteria()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BGC Criteria : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private dumpSingleUidSuppermAhStats(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

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

.method private dumpUidSippermAhList()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method private dumpUidSippermAhStats()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method private genActiveAudioUidsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private genActiveSensorUidsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |sPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |wLTMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    nop

    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |pkgWHD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |TPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getTrafficUids()V
    .locals 5

    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficUids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initObservingUid()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    const-string v1, "==initObservingUid=="

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->initializeUidStats()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/OnePlusBGController;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->enableDispatch(Z)V

    :cond_0
    return-void
.end method

.method private isAudioActive(I)Z
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedResetBudget()Z
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time Away From Budget Reset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-wide v3, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isProcessStateBackgroundInner(ZI)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    const/16 v2, 0xb

    if-eq p2, v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    :cond_1
    const/4 v2, 0x6

    if-lt p2, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "BGC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetAllBudget()V
    .locals 4

    const-string v0, "## RESET resetAllBudget RESET ##"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resetBudgetByUids(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## RESET resetBudgetByUids RESET ##, killedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByAbnHandled(ID)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## RESET resetBudgetByUids RESET ##, reset budget of uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->addAbnHandledCount()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private sendMessageDelayed(IJII)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p4, p5}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {p4}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v1

    invoke-virtual {p5}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showSensorActiveUid()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const-string v1, ""

    return-void
.end method

.method private showSensorActiveUid(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeSensor of handle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private updateSingleStatistics(I)D
    .locals 5

    const-wide v0, -0x3fa4400000000000L    # -111.0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshSingleStats(II)D

    move-result-wide v3

    move-wide v0, v3

    monitor-exit v2

    return-wide v0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateUidSippermAhStatsByAbnHandled(ID)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Insert handled uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    nop

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v5, p1, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Insert uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p2, v1, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isAudioActive(I)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isSensorActive(I)Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### re-check uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [Audio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Sensor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", Network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", AlertWindow: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Insert confirmed uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateUidSippermAhStatsBySippers(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveAudioUidsList()Ljava/util/List;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveSensorUidsList()Ljava/util/List;

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_a

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v8

    iget-object v9, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusBGController$UidStat;

    const/4 v10, 0x0

    nop

    if-eqz v9, :cond_0

    iget-object v11, v9, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_1

    :cond_0
    const/16 v11, 0x2710

    if-lt v8, v11, :cond_1

    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_1

    :cond_1
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/OnePlusBGController$UidStat;->isSuspiciousState()Z

    move-result v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    move v10, v12

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v12

    sget-boolean v14, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "## Insert uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "  Sus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " mAh"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v19, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v20

    aget v0, v19, v20

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v3, v17

    move/from16 v2, v18

    goto/16 :goto_5

    :cond_4
    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v15, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v21, v3

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    if-eqz v5, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v18, 0x1

    :cond_5
    move/from16 v2, v18

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    const-string v5, "#### re-check uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " [Audio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", AlertWindow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    if-nez v15, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_4

    :cond_7
    :goto_3
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_4
    move/from16 v16, v0

    :goto_5
    if-eqz v14, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### Insert confirmed uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_8
    iget-object v4, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_6

    :cond_9
    iget-object v5, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v0, v8, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v5, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_6
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_b
    goto :goto_8

    :cond_c
    const-string v0, "## fetal error, sippers == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_8
    return-void
.end method


# virtual methods
.method public dumpSnapShotData(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "ONESHOT"

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpUidSippermAhStats(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    sub-long/2addr v0, v2

    const-string v2, "Time Away From Budget Reset="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGC Criteria : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public enableDispatch(Z)V
    .locals 2

    sput-boolean p1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mbEnableDispatch set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method public getStepCounterActiveUids()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method grabOnlineConfig()V
    .locals 3

    const-string v0, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v2, "BGC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method handleOnUidStateChanged(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUidStateChanged: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBGController$UidStat;-><init>(Lcom/android/server/am/OnePlusBGController;IZI)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/OnePlusBGController$UidStat;->update(IZ)V

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->informChgToFg()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method initializeUidStats()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusBGController;->handleOnUidStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    goto :goto_3

    :catch_0
    move-exception v1

    :goto_3
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    return-void
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    return-void
.end method

.method public isSensorActive(I)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public needCheckProc(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method registerOnlineConfig()V
    .locals 5

    const-string v0, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    const-string v4, "BGC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public resetKillUidBudgets(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const v1, 0x101d6

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method retrieveSensorHandle()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update StepCounterHandle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateFg_BlackUidSet(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oops, cant find Fg_Black pkg :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \'s uid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_0
    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidStat;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    goto :goto_3

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateUidTraffic()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->computeUidTraffic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
