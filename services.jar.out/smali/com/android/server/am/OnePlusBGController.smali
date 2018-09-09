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
        Lcom/android/server/am/OnePlusBGController$UidStat;,
        Lcom/android/server/am/OnePlusBGController$UidObserver;,
        Lcom/android/server/am/OnePlusBGController$BatteryReceiver;,
        Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusBGController$MyHandler;,
        Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;,
        Lcom/android/server/am/OnePlusBGController$PROC_TYPE;,
        Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;,
        Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;
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

    .line 86
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    .line 98
    const-string/jumbo v0, "persist.sys.bgc_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    .line 99
    const-string/jumbo v0, "persist.sys.bgc.keep"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    .line 100
    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    .line 101
    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    .line 119
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    .line 1565
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V
    .locals 4
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "amsHandler"    # Landroid/os/Handler;
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p4, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p5, "restartProcessManager"    # Lcom/android/server/am/RestartProcessManager;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    .line 111
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    .line 115
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    .line 185
    new-instance v1, Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$UidObserver;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    .line 189
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    .line 197
    const v1, 0x4479c000    # 999.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    .line 198
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    .line 199
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    .line 200
    const/high16 v1, 0x40200000    # 2.5f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    .line 201
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    .line 202
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    .line 203
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    .line 205
    iput v1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    .line 209
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    .line 211
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    .line 217
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    .line 220
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    .line 325
    new-instance v1, Lcom/android/server/am/OnePlusBGController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$1;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1464
    new-instance v1, Lcom/android/server/am/OnePlusBGController$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$2;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    .line 2065
    new-instance v1, Lcom/android/server/am/OnePlusBGController$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusBGController$3;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    .line 429
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    .line 430
    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 431
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    .line 432
    iput-object p4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 433
    iput-object p5, p0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 434
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 435
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 436
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    .line 437
    new-instance v0, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$BatteryReceiver;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    .line 438
    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    .line 439
    new-instance v0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 446
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryReceiver:Lcom/android/server/am/OnePlusBGController$BatteryReceiver;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .local v1, "debugfilter":Landroid/content/IntentFilter;
    const-string v2, "com.test.bgc"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    .end local v1    # "debugfilter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v1, Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusBGController$MyHandler;-><init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    .line 455
    const v1, 0x101d0

    const-wide/16 v2, 0x4e20

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->sendEmptyMessageDelayed(IJ)V

    .line 456
    return-void
.end method

.method private CheckAbnBgmAh()V
    .locals 24

    .line 1476
    move-object/from16 v0, p0

    const-string v1, "======CheckAbnBgmAh======"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1479
    .local v1, "startTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpCriteria()V

    .line 1482
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->cleanUp()V

    .line 1485
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 1486
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v5, v4}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 1487
    .local v5, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/android/server/am/OnePlusBGController;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v6, v4}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 1488
    .local v6, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
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

    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1492
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->convertUidSippermAhStatsToList()V

    .line 1496
    sget-boolean v7, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    .line 1498
    :cond_0
    move v7, v4

    .line 1498
    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 1499
    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1500
    .local v8, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/server/am/OnePlusBGController;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    .line 1501
    .local v9, "pkgName":Ljava/lang/String;
    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    .line 1502
    .local v10, "criteria":F
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v15

    .line 1503
    .local v15, "ifNotoriousAbn":Z
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNeedReliefBudget()Z

    move-result v13

    .line 1504
    .local v13, "ifNeedReliefBudget":Z
    sget-object v11, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    .line 1505
    .local v11, "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1507
    sget-object v11, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->HIGH:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    .line 1508
    if-eqz v15, :cond_1

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    goto :goto_1

    :cond_1
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    :goto_1
    move v10, v12

    goto :goto_4

    .line 1509
    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1511
    sget-object v11, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->GENERAL:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    .line 1512
    if-eqz v15, :cond_3

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    goto :goto_2

    :cond_3
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    :goto_2
    move v10, v12

    goto :goto_4

    .line 1513
    :cond_4
    if-eqz v6, :cond_6

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1515
    sget-object v11, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->LOW:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    .line 1516
    if-eqz v15, :cond_5

    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    goto :goto_3

    :cond_5
    iget v12, v0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    :goto_3
    move v10, v12

    .line 1518
    .end local v10    # "criteria":F
    .end local v11    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .local v12, "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .local v14, "criteria":F
    :cond_6
    :goto_4
    move v14, v10

    move-object v12, v11

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->INIT_INVALID_CRITERIA:F

    cmpl-float v10, v14, v10

    if-eqz v10, :cond_a

    .line 1519
    const/4 v10, 0x0

    .line 1521
    .local v10, "relief":F
    if-eqz v13, :cond_7

    .line 1523
    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    .line 1526
    .end local v10    # "relief":F
    .local v11, "relief":F
    :cond_7
    move v11, v10

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move-object/from16 v18, v5

    float-to-double v4, v11

    .line 1526
    .end local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sub-double v16, v16, v4

    float-to-double v4, v14

    cmpl-double v4, v16, v4

    if-lez v4, :cond_8

    .line 1529
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

    const-string v5, ", gType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->toString()Ljava/lang/String;

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

    .line 1536
    move-object/from16 v19, v6

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v5

    .line 1536
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1529
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1538
    iget-object v10, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfFgmAh()D

    move-result-wide v5

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v16

    move/from16 v20, v11

    move-object v11, v9

    .end local v11    # "relief":F
    .local v20, "relief":F
    move-object/from16 v21, v3

    move-object v3, v12

    move v12, v4

    .line 1538
    .end local v12    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .local v3, "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .local v21, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-wide/from16 v22, v1

    move v4, v13

    move v1, v14

    move-wide v13, v5

    .line 1538
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .local v1, "criteria":F
    .local v4, "ifNeedReliefBudget":Z
    .local v22, "startTime":J
    move v2, v15

    move-wide/from16 v15, v16

    .line 1538
    .end local v15    # "ifNotoriousAbn":Z
    .local v2, "ifNotoriousAbn":Z
    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->insert(Ljava/lang/String;IDDZ)V

    goto :goto_5

    .line 1543
    .end local v2    # "ifNotoriousAbn":Z
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "relief":F
    .end local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "startTime":J
    .local v1, "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "relief":F
    .restart local v12    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .restart local v13    # "ifNeedReliefBudget":Z
    .restart local v14    # "criteria":F
    .restart local v15    # "ifNotoriousAbn":Z
    :cond_8
    move-wide/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v19, v6

    move/from16 v20, v11

    move-object v3, v12

    move v4, v13

    move v1, v14

    move v2, v15

    .line 1543
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "relief":F
    .end local v12    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .end local v15    # "ifNotoriousAbn":Z
    .local v1, "criteria":F
    .restart local v2    # "ifNotoriousAbn":Z
    .local v3, "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .restart local v4    # "ifNeedReliefBudget":Z
    .restart local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "relief":F
    .restart local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "startTime":J
    sget-boolean v5, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v5, :cond_9

    .line 1544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[N-E] uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", gType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", Noto="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", Rf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", RfBgt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", DBgmAh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1544
    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1554
    .end local v20    # "relief":F
    :cond_9
    :goto_5
    goto :goto_6

    .line 1555
    .end local v2    # "ifNotoriousAbn":Z
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v18    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "startTime":J
    .local v1, "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .restart local v13    # "ifNeedReliefBudget":Z
    .restart local v14    # "criteria":F
    .restart local v15    # "ifNotoriousAbn":Z
    :cond_a
    move-wide/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object v3, v12

    move v4, v13

    move v1, v14

    move v2, v15

    .line 1555
    .end local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .end local v13    # "ifNeedReliefBudget":Z
    .end local v14    # "criteria":F
    .end local v15    # "ifNotoriousAbn":Z
    .local v1, "criteria":F
    .restart local v2    # "ifNotoriousAbn":Z
    .local v3, "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .restart local v4    # "ifNeedReliefBudget":Z
    .restart local v18    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "startTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oops, can\'t find which category of uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", just skip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1498
    .end local v1    # "criteria":F
    .end local v2    # "ifNotoriousAbn":Z
    .end local v3    # "gType":Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .end local v4    # "ifNeedReliefBudget":Z
    .end local v8    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v9    # "pkgName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    move-wide/from16 v1, v22

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1558
    .end local v7    # "i":I
    .end local v18    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "startTime":J
    .local v1, "startTime":J
    .local v3, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move-wide/from16 v22, v1

    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 1558
    .end local v1    # "startTime":J
    .end local v3    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "generalUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21    # "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "startTime":J
    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->dump()V

    .line 1561
    :cond_c
    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    const v2, 0x101d4

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->mReport_obj:Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1562
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController;->mAmsHanlder:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[CheckAbnBgmAh] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v22

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1564
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusBGController;I)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "x3"    # D

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusBGController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->showSensorActiveUid()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->getTrafficUids()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_HighCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_GeneCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->resetBudgetByUids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_LowCriteria_For_Notorious:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusBGController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # F

    .line 84
    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->mBg_ReliefBonusmAh:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackPkgsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusBGController;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Lcom/android/server/am/OnePlusBGController$UidStat;
    .param p5, "x4"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 84
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusBGController;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800()Landroid/media/AudioManager;
    .locals 1

    .line 84
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_KEEP:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->initObservingUid()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 84
    sput-boolean p0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->isNeedResetBudget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsBySippers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->CheckAbnBgmAh()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhStats()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->dumpUidSippermAhList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->resetAllBudget()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusBGController;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method private checkTrafficUid(I)Z
    .locals 22
    .param p1, "uid"    # I

    .line 786
    move/from16 v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 787
    .local v1, "now":J
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$Traffic;

    .line 788
    .local v4, "obj":Lcom/android/server/am/OnePlusBGController$Traffic;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 789
    return v5

    .line 791
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 792
    .local v6, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 793
    .local v8, "rxBytes":J
    iget-wide v10, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v10, v1, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 795
    .local v10, "timeDuring":J
    const-wide/16 v12, 0x1

    cmp-long v12, v10, v12

    if-gtz v12, :cond_1

    .line 796
    const-wide/16 v10, 0x1

    .line 798
    :cond_1
    iget-wide v12, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v12, v8, v12

    div-long/2addr v12, v10

    .line 799
    .local v12, "rxSpeed":J
    iget-wide v14, v4, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    sub-long v14, v6, v14

    div-long/2addr v14, v10

    .line 800
    .local v14, "txSpeed":J
    const-wide/32 v16, 0x19000

    cmp-long v18, v16, v12

    const/16 v19, 0x1

    if-gez v18, :cond_2

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v1

    const-string v1, "Uid "

    .end local v1    # "now":J
    .local v20, "now":J
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

    .line 803
    return v19

    .line 804
    .end local v20    # "now":J
    .restart local v1    # "now":J
    :cond_2
    move-wide/from16 v20, v1

    .end local v1    # "now":J
    .restart local v20    # "now":J
    cmp-long v1, v16, v14

    if-gez v1, :cond_3

    .line 806
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

    .line 807
    return v19

    .line 809
    :cond_3
    return v5
.end method

.method private checkTrafficUidLocked(IZ)Z
    .locals 22
    .param p1, "uid"    # I
    .param p2, "debug"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 813
    iget-object v3, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    monitor-enter v3

    .line 814
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 815
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    if-eqz v0, :cond_5

    .line 818
    if-eqz p2, :cond_0

    .line 819
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 820
    .local v5, "now":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 821
    .local v7, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    .line 822
    .local v9, "rxBytes":J
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

    .line 824
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$Traffic;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 828
    .end local v5    # "now":J
    .end local v7    # "txBytes":J
    .end local v9    # "rxBytes":J
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;

    move-result-object v5

    .line 829
    .local v5, "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    if-eqz v5, :cond_4

    iget-wide v6, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 831
    .local v6, "now":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    .line 832
    .local v8, "txBytes":J
    invoke-static/range {p1 .. p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v10

    .line 833
    .local v10, "rxBytes":J
    iget-wide v12, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    sub-long v12, v6, v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 834
    .local v12, "timeDuring":J
    const-wide/16 v14, 0x1

    cmp-long v14, v12, v14

    if-gtz v14, :cond_1

    .line 835
    const-wide/16 v12, 0x1

    .line 837
    :cond_1
    iget-wide v14, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    sub-long v14, v10, v14

    div-long/2addr v14, v12

    .line 838
    .local v14, "rxSpeed":J
    move-object/from16 v16, v0

    iget-wide v0, v5, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    .line 838
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .local v16, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    sub-long v0, v8, v0

    div-long/2addr v0, v12

    .line 839
    .local v0, "txSpeed":J
    const-wide/32 v17, 0x19000

    cmp-long v19, v17, v14

    const/16 v20, 0x1

    if-gez v19, :cond_2

    .line 841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "Uid "

    .line 841
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .local v21, "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
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

    .line 842
    monitor-exit v3

    return v20

    .line 843
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :cond_2
    move-object/from16 v21, v5

    .line 843
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    cmp-long v4, v17, v0

    if-gez v4, :cond_3

    .line 845
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

    .line 846
    monitor-exit v3

    return v20

    .line 848
    .end local v0    # "txSpeed":J
    .end local v6    # "now":J
    .end local v8    # "txBytes":J
    .end local v10    # "rxBytes":J
    .end local v12    # "timeDuring":J
    .end local v14    # "rxSpeed":J
    :cond_3
    goto :goto_0

    .line 849
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v21, v5

    .line 849
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v5    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .restart local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    const-string v0, "base_traffic is invalid"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 851
    .end local v21    # "base_traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    :goto_0
    goto :goto_1

    .line 852
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :cond_5
    move-object/from16 v16, v0

    .line 852
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    .restart local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    const-string/jumbo v0, "ustats == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 854
    .end local v16    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
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

    .line 856
    const/4 v0, 0x0

    return v0

    .line 854
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
    .param p1, "uid"    # I

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "usingNetwork":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 774
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUid(I)Z

    move-result v2

    move v0, v2

    .line 778
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 779
    .local v5, "now":J
    new-instance v11, Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 780
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusBGController$Traffic;-><init>(Lcom/android/server/am/OnePlusBGController;IJJJ)V

    move-object v2, v11

    .line 781
    .local v2, "traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidTraffic:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .end local v2    # "traffic":Lcom/android/server/am/OnePlusBGController$Traffic;
    .end local v5    # "now":J
    monitor-exit v1

    .line 783
    return v0

    .line 782
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private convertUidSippermAhStatsToList()V
    .locals 7

    .line 1405
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1406
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1407
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1408
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1410
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    .line 1411
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1414
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mAhcptor:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1417
    return-void

    .line 1414
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
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    .line 2048
    .local p2, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2049
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

    .line 2050
    const-wide/16 v0, 0x0

    .line 2051
    .local v0, "allPower":D
    const/4 v2, 0x0

    .line 2052
    .local v2, "count":I
    const/4 v3, 0x0

    .line 2052
    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2053
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 2054
    .local v4, "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    .line 2055
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v2, v5, :cond_1

    .line 2056
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusBGController;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 2057
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2052
    .end local v4    # "bs":Lcom/android/internal/os/BatterySipper;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2059
    .end local v3    # "i":I
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

    .line 2060
    .end local v0    # "allPower":D
    .end local v2    # "count":I
    goto :goto_1

    .line 2061
    :cond_3
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2063
    :goto_1
    return-void
.end method

.method private dumpCriteria()V
    .locals 2

    .line 1472
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

    .line 1473
    return-void
.end method

.method private dumpSingleUidSuppermAhStats(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1123
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1125
    .local v1, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1128
    .end local v1    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_0
    monitor-exit v0

    .line 1129
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUidSippermAhList()V
    .locals 4

    .line 1456
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    monitor-enter v0

    .line 1457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1458
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1459
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1457
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1461
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 1462
    return-void

    .line 1461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUidSippermAhStats()V
    .locals 5

    .line 1114
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1116
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1117
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1118
    .local v3, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1115
    .end local v2    # "key":I
    .end local v3    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1120
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
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

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1191
    .local v2, "arrayUid":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1193
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1194
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1199
    .end local v2    # "arrayUid":[Ljava/lang/String;
    .end local v3    # "i":I
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

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v1

    .line 1236
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1237
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1238
    .local v2, "arrayUid":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1239
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1240
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1241
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1247
    .end local v1    # "uids":Ljava/lang/String;
    .end local v2    # "arrayUid":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bs"    # Lcom/android/internal/os/BatterySipper;

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2074
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_2

    .line 2075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
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

    .line 2077
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

    .line 2081
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

    .line 2084
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 2085
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .line 1567
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1570
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    .line 1572
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1574
    return-object v0

    .line 1577
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private getTrafficUids()V
    .locals 5

    .line 1252
    sget-object v0, Lcom/android/server/am/OnePlusProcessManager;->mTrafficUids:Ljava/util/HashSet;

    .line 1253
    .local v0, "trafficUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1254
    .local v2, "uid":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrafficUids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1255
    .end local v2    # "uid":Ljava/lang/Integer;
    goto :goto_0

    .line 1256
    :cond_0
    return-void
.end method

.method private initObservingUid()V
    .locals 2

    .line 467
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->mInited:Z

    .line 469
    const-string v1, "==initObservingUid=="

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->initializeUidStats()V

    .line 472
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidObserver:Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/OnePlusBGController;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->enableDispatch(Z)V

    .line 480
    :cond_0
    return-void
.end method

.method private isAudioActive(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1174
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "strUid":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/OnePlusBGController;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    const/4 v2, 0x1

    return v2

    .line 1183
    .end local v0    # "strUid":Ljava/lang/String;
    .end local v1    # "uids":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedResetBudget()Z
    .locals 4

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/OnePlusBGController;->RESET_PERIOD:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProcessStateBackgroundInner(ZI)Z
    .locals 3
    .param p1, "isFgBlack"    # Z
    .param p2, "procState"    # I

    .line 1076
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1078
    const/4 v2, 0x2

    if-le p2, v2, :cond_0

    const/16 v2, 0xb

    if-eq p2, v2, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 1080
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
    .param p0, "msg"    # Ljava/lang/String;

    .line 423
    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "BGC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 317
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method private postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "nDelay"    # J

    .line 320
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method private resetAllBudget()V
    .locals 4

    .line 1420
    const-string v0, "## RESET resetAllBudget RESET ##"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1423
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    .line 1422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1425
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController;->mLastBudgetResetTimeStamp:J

    .line 1428
    return-void

    .line 1425
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

    .line 1433
    .local p1, "killedUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## RESET resetBudgetByUids RESET ##, killedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1434
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1435
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1437
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1438
    .local v2, "killedInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_0

    .line 1441
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->updateSingleStatistics(I)D

    move-result-wide v3

    .line 1442
    .local v3, "mAh":D
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsByAbnHandled(ID)V

    .line 1444
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

    .line 1446
    sget-object v5, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    .line 1448
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->addAbnHandledCount()V

    .line 1436
    .end local v2    # "killedInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v3    # "mAh":D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1451
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1453
    :cond_2
    :goto_1
    return-void
.end method

.method private sendEmptyMessageDelayed(IJ)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "delayMillis"    # J

    .line 300
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    return-void
.end method

.method private sendMessageDelayed(IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "delayMills"    # J
    .param p4, "uidStat"    # Lcom/android/server/am/OnePlusBGController$UidStat;
    .param p5, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 312
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {p4}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v1

    invoke-virtual {p5}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 315
    return-void
.end method

.method private showSensorActiveUid()V
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "activeSensor":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activeSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1205
    const-string v1, ""

    .line 1206
    .local v1, "packageName":Ljava/lang/String;
    return-void
.end method

.method private showSensorActiveUid(I)V
    .locals 3
    .param p1, "handle"    # I

    .line 1209
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "activeSensor":Ljava/lang/String;
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

    .line 1211
    return-void
.end method

.method private updateSingleStatistics(I)D
    .locals 5
    .param p1, "uid"    # I

    .line 1099
    const-wide v0, -0x3fa4400000000000L    # -111.0

    .line 1104
    .local v0, "value":D
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    .line 1105
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 1107
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v2

    .line 1108
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 1109
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshSingleStats(II)D

    move-result-wide v3

    move-wide v0, v3

    .line 1110
    monitor-exit v2

    .line 1111
    return-wide v0

    .line 1110
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateUidSippermAhStatsByAbnHandled(ID)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "mAh"    # D

    .line 1133
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

    .line 1138
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 1139
    .local v0, "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    nop

    .line 1149
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

    .line 1153
    .local v1, "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne v1, v2, :cond_2

    .line 1154
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1157
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1158
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1159
    .local v3, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v3, :cond_3

    .line 1161
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_1

    .line 1164
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v5, p1, v1, p2, p3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1166
    .end local v3    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_1
    monitor-exit v2

    .line 1167
    return-void

    .line 1166
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateUidSippermAhStatsByFgBgChange(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "mAh"    # D

    .line 1260
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

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "confirmed":Z
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p2, v1, :cond_3

    .line 1272
    const/4 v0, 0x1

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isAudioActive(I)Z

    move-result v1

    .line 1274
    .local v1, "isAudioActive":Z
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->isSensorActive(I)Z

    move-result v2

    .line 1276
    .local v2, "isSensorActive":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    .line 1277
    .local v3, "isUsingNetwork":Z
    const/4 v4, 0x0

    .line 1278
    .local v4, "isAlertWindow":Z
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    .line 1279
    .local v5, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1280
    const/4 v4, 0x1

    .line 1283
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

    .line 1284
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1289
    :cond_1
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .end local v1    # "isAudioActive":Z
    .end local v2    # "isSensorActive":Z
    .end local v3    # "isUsingNetwork":Z
    .end local v4    # "isAlertWindow":Z
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1286
    .restart local v1    # "isAudioActive":Z
    .restart local v2    # "isSensorActive":Z
    .restart local v3    # "isUsingNetwork":Z
    .restart local v4    # "isAlertWindow":Z
    .restart local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1292
    .end local v1    # "isAudioActive":Z
    .end local v2    # "isSensorActive":Z
    .end local v3    # "isUsingNetwork":Z
    .end local v4    # "isAlertWindow":Z
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1293
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

    .line 1296
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1297
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1298
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_5

    .line 1300
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_2

    .line 1303
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1305
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_2
    monitor-exit v1

    .line 1306
    return-void

    .line 1305
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

    .local p1, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v1, p0

    .line 1310
    move-object/from16 v2, p1

    if-eqz v2, :cond_c

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveAudioUidsList()Ljava/util/List;

    move-result-object v3

    .line 1315
    .local v3, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->genActiveSensorUidsList()Ljava/util/List;

    move-result-object v4

    .line 1316
    .local v4, "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v5

    .line 1318
    .local v5, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 1320
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    .line 1323
    .local v7, "oneSipper":Lcom/android/internal/os/BatterySipper;
    iget-object v8, v7, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_a

    .line 1325
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v8

    .line 1328
    .local v8, "uid":I
    iget-object v9, v1, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 1329
    .local v9, "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    const/4 v10, 0x0

    .line 1330
    .local v10, "isSuspiciousState":Z
    nop

    .line 1340
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

    .line 1341
    .local v11, "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/OnePlusBGController$UidStat;->isSuspiciousState()Z

    move-result v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    move v10, v12

    .line 1342
    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v12

    .line 1346
    .local v12, "mAh":D
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

    .line 1357
    :cond_3
    const/4 v14, 0x0

    .line 1358
    .local v14, "confirmed":Z
    const/4 v15, 0x0

    .line 1359
    .local v15, "isAudioActive":Z
    const/16 v16, 0x0

    .line 1360
    .local v16, "isSensorActive":Z
    const/16 v17, 0x0

    .line 1361
    .local v17, "isUsingNetwork":Z
    const/16 v18, 0x0

    .line 1362
    .local v18, "isAlertWindow":Z
    sget-object v19, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$PROC_TYPE:[I

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->ordinal()I

    move-result v20

    aget v0, v19, v20

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 1380
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v3, v17

    move/from16 v2, v18

    goto/16 :goto_5

    .line 1364
    :cond_4
    const/4 v14, 0x1

    .line 1365
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v15, v0

    .line 1366
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1367
    .end local v16    # "isSensorActive":Z
    .local v0, "isSensorActive":Z
    move-object/from16 v21, v3

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lcom/android/server/am/OnePlusBGController;->checkTrafficUidLocked(IZ)Z

    move-result v3

    .line 1368
    .end local v17    # "isUsingNetwork":Z
    .local v3, "isUsingNetwork":Z
    .local v21, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1369
    const/16 v18, 0x1

    .line 1371
    .end local v18    # "isAlertWindow":Z
    .local v2, "isAlertWindow":Z
    :cond_5
    move/from16 v2, v18

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v22, "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    const-string v5, "#### re-check uid:"

    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v23, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
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

    .line 1372
    if-nez v15, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 1375
    :cond_6
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_4

    .line 1373
    :cond_7
    :goto_3
    sget-object v11, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1380
    .end local v0    # "isSensorActive":Z
    .restart local v16    # "isSensorActive":Z
    :goto_4
    move/from16 v16, v0

    :goto_5
    if-eqz v14, :cond_8

    .line 1381
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

    .line 1384
    :cond_8
    iget-object v4, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1385
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1386
    .local v0, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v0, :cond_9

    .line 1388
    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_6

    .line 1391
    :cond_9
    iget-object v5, v1, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .end local v0    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .local v24, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    invoke-direct {v0, v8, v11, v12, v13}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;-><init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    invoke-virtual {v5, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1393
    .end local v24    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :goto_6
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1318
    .end local v2    # "isAlertWindow":Z
    .end local v7    # "oneSipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "uid":I
    .end local v9    # "stat":Lcom/android/server/am/OnePlusBGController$UidStat;
    .end local v10    # "isSuspiciousState":Z
    .end local v11    # "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .end local v12    # "mAh":D
    .end local v14    # "confirmed":Z
    .end local v15    # "isAudioActive":Z
    .end local v16    # "isSensorActive":Z
    .end local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v3, "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .end local v3    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1396
    .end local v6    # "i":I
    .end local v21    # "activeAudioUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "activeSensorUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v23    # "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b
    goto :goto_8

    .line 1397
    :cond_c
    const-string v0, "## fetal error, sippers == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1399
    :goto_8
    return-void
.end method


# virtual methods
.method public dumpSnapShotData(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 2038
    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2041
    const-string v0, "ONESHOT"

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2045
    :cond_1
    :goto_0
    return-void
.end method

.method public enableDispatch(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 126
    sput-boolean p1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mbEnableDispatch set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->mbEnableDispatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public getStepCounterActiveUids()Ljava/lang/String;
    .locals 2

    .line 1214
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method grabOnlineConfig()V
    .locals 3

    .line 508
    const-string v0, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    const-string v2, "BGC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 511
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 717
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

    .line 719
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 728
    new-instance v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBGController$UidStat;-><init>(Lcom/android/server/am/OnePlusBGController;IZI)V

    .line 729
    .local v0, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 730
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 734
    .restart local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/OnePlusBGController$UidStat;->update(IZ)V

    .line 738
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 741
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_2

    .line 742
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->informChgToFg()V

    .line 744
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 748
    .end local v0    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :cond_3
    :goto_0
    return-void
.end method

.method initializeUidStats()V
    .locals 10

    .line 615
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 618
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 622
    .local v0, "uidProcStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 623
    .local v1, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 624
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 625
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 627
    .local v5, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 628
    .local v6, "cur_uid":I
    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 629
    .local v7, "cur_prostat":I
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 630
    .local v8, "exist_procstat":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 631
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v7, :cond_1

    .line 633
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 637
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 624
    .end local v5    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "cur_uid":I
    .end local v7    # "cur_prostat":I
    .end local v8    # "exist_procstat":Ljava/lang/Integer;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 643
    .end local v4    # "i":I
    :cond_2
    nop

    .local v3, "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 644
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 645
    .local v4, "uid":I
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 647
    .local v5, "procstat":I
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/OnePlusBGController;->handleOnUidStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v4    # "uid":I
    .end local v5    # "procstat":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 650
    .end local v1    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_3
    goto :goto_3

    .line 649
    :catch_0
    move-exception v1

    .line 651
    :goto_3
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 687
    return-void
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 1096
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 1097
    return-void
.end method

.method public isSensorActive(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 1221
    const/4 v0, 0x0

    .line 1222
    .local v0, "isRunning":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, "strUid":Ljava/lang/String;
    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object v2

    .line 1225
    .local v2, "activeSensor":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    const/4 v0, 0x1

    .line 1229
    .end local v2    # "activeSensor":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public needCheckProc(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1068
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusBGController;->isProcessStateBackgroundInner(ZI)Z

    move-result v0

    return v0
.end method

.method registerOnlineConfig()V
    .locals 5

    .line 498
    const-string v0, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->mConfigUpdater:Lcom/android/server/am/OnePlusBGController$MyConfigUpdater;

    const-string v4, "BGC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 501
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 502
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

    .line 304
    .local p1, "killedUidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const v1, 0x101d6

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusBGController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method retrieveSensorHandle()V
    .locals 4

    .line 483
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_1

    .line 485
    const/4 v1, 0x0

    .line 485
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 486
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update StepCounterHandle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->mStepCounterHandleId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 458
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method public snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .param p2, "batteryLevelDrop"    # I
    .param p3, "mA"    # F

    .line 462
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mHandler:Lcom/android/server/am/OnePlusBGController$MyHandler;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$SnapShot;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController$SnapShot;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController$MyHandler;->post(Ljava/lang/Runnable;)Z

    .line 463
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

    .line 588
    .local p1, "blackPkgsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 590
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

    .line 592
    .local v2, "pkgName":Ljava/lang/String;
    :try_start_1
    sget-object v4, Lcom/android/server/am/OnePlusBGController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 593
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    .end local v3    # "uid":I
    goto :goto_1

    .line 594
    :catch_0
    move-exception v3

    .line 595
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 597
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    goto :goto_0

    .line 599
    :cond_0
    move v1, v3

    .line 599
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 600
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidStat;

    .line 601
    .local v2, "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mFg_BlackUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidStat;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    goto :goto_3

    .line 604
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$UidStat;->updateIsFgBlack(Z)V

    .line 599
    .end local v2    # "ustats":Lcom/android/server/am/OnePlusBGController$UidStat;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 607
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 608
    return-void

    .line 607
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

    .line 755
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 758
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 759
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->mUidSippermAhStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 760
    .local v2, "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    if-eqz v2, :cond_0

    .line 761
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->computeUidTraffic(I)Z

    move-result v3

    .line 762
    .local v3, "usingNetwork":Z
    if-eqz v3, :cond_0

    .line 763
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 758
    .end local v2    # "oneInfo":Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .end local v3    # "usingNetwork":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->mUsingTrafficUidSet:Ljava/util/HashSet;

    return-object v0

    .line 767
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
