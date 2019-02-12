.class public Lcom/android/server/DeviceIdleController;
.super Lcom/android/server/SystemService;
.source "DeviceIdleController.java"

# interfaces
.implements Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleController$Shell;,
        Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;,
        Lcom/android/server/DeviceIdleController$LocalService;,
        Lcom/android/server/DeviceIdleController$BinderService;,
        Lcom/android/server/DeviceIdleController$MyHandler;,
        Lcom/android/server/DeviceIdleController$OPBackgroundThread;,
        Lcom/android/server/DeviceIdleController$Constants;,
        Lcom/android/server/DeviceIdleController$MotionListener;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_RETRIEVE_BATTSTATS:Ljava/lang/String; = "com.test.retrieve.battstats"

.field private static final COMPRESS_TIME:Z = false

.field private static final DEBUG:Z

.field private static DEBUG_ONEPLUS:Z = false

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field private static final EVENT_DEEP_IDLE:I = 0x4

.field private static final EVENT_DEEP_MAINTENANCE:I = 0x5

.field private static final EVENT_LIGHT_IDLE:I = 0x2

.field private static final EVENT_LIGHT_MAINTENANCE:I = 0x3

.field private static final EVENT_NORMAL:I = 0x1

.field private static final EVENT_NULL:I = 0x0

.field public static final LIGHTIDLE_STATUS:Ljava/lang/String; = "LightIdle_Status"

.field private static final LIGHT_STATE_ACTIVE:I = 0x0

.field private static final LIGHT_STATE_IDLE:I = 0x4

.field private static final LIGHT_STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final LIGHT_STATE_INACTIVE:I = 0x1

.field private static final LIGHT_STATE_OVERRIDE:I = 0x7

.field private static final LIGHT_STATE_PRE_IDLE:I = 0x3

.field private static final LIGHT_STATE_WAITING_FOR_NETWORK:I = 0x5

.field static final MSG_BATT_SNAPSHOT_ON_END:I = 0x3eb

.field static final MSG_BATT_SNAPSHOT_ON_START:I = 0x3ea

.field static final MSG_CHECK_QXDM_IF_READY_ON_SDCARD:I = 0x3f0

.field static final MSG_CLEAN_QXDM_UNDER_SDCARD:I = 0x3ee

.field static final MSG_CLEAN_QXDM_UNDER_VENDOR:I = 0x3ed

.field static final MSG_COPY_QXDM_INTO_SDCARD:I = 0x3ef

.field static final MSG_DELAY:J = 0x2710L

.field private static final MSG_FINISH_IDLE_OP:I = 0x8

.field static final MSG_GEN_BATTERT_OUTLIER:I = 0x3f1

.field static final MSG_GEN_LOGS:I = 0x3e9

.field static final MSG_GET_CONFIG:I = 0x3e8

.field private static final MSG_REPORT_ACTIVE:I = 0x5

.field private static final MSG_REPORT_IDLE_OFF:I = 0x4

.field private static final MSG_REPORT_IDLE_ON:I = 0x2

.field private static final MSG_REPORT_IDLE_ON_LIGHT:I = 0x3

.field private static final MSG_REPORT_MAINTENANCE_ACTIVITY:I = 0x7

.field private static final MSG_REPORT_TEMP_APP_WHITELIST_CHANGED:I = 0x9

.field static final MSG_STANDBY_MIDDLE_CHECK:I = 0x3f2

.field static final MSG_STOP_QXDM_RECORDING_AFTER_120S:I = 0x3ec

.field private static final MSG_TEMP_APP_WHITELIST_TIMEOUT:I = 0x6

.field private static final MSG_WRITE_CONFIG:I = 0x1

.field private static POWERSTANDBY_ONLINECONFIG:Ljava/lang/String; = null

.field protected static final STATE_ACTIVE:I = 0x0

.field protected static final STATE_IDLE:I = 0x5

.field protected static final STATE_IDLE_MAINTENANCE:I = 0x6

.field protected static final STATE_IDLE_PENDING:I = 0x2

.field protected static final STATE_INACTIVE:I = 0x1

.field protected static final STATE_LOCATING:I = 0x4

.field protected static final STATE_SENSING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DeviceIdleController"

.field private static TIME_OF_DEEPIDLE_START_RESET:I

.field static isDozeChangeSupport:Z

.field static mDozeChange:Z

.field static mLocationManagerService:Lcom/android/server/LocationManagerService;

.field static mLock:Ljava/lang/Object;

.field private static mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

.field static mStopGps:Z

.field static mWhiteUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isFirstReport:Z

.field isHasGpsRequest:Z

.field private m1stLightIdle:Z

.field private mActiveIdleOpCount:I

.field private mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmsActive:Z

.field private mAlreadyDiagnosed:Z

.field private mAlreadyReported:Z

.field private mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

.field private final mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mBatteryCapacity:I

.field private final mBatteryLevelLow:I

.field private mBatteryLevelofDeepIdleStart:I

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

.field private mCharging:Z

.field public final mConfigFile:Lcom/android/internal/os/AtomicFile;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnectivityService:Lcom/android/server/ConnectivityService;

.field private mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field private mCurIdleBudget:J

.field private mCurrentBatteryLevel:I

.field private final mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mDeepEnabled:Z

.field private mDelayMillis:J

.field private mDelaySnapShotMillis:J

.field private mElapseRealTimeofDeepIdleStart:J

.field private mEnablePowerStandbyDetect:Z

.field private mEnablePowerStandbyDiagnosis:Z

.field private mEnableWaitForUnlockToExitDoze:Z

.field private final mEventCmds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private mFakeLevelDrop:I

.field private mFakeMinimumPeriod:J

.field private mFakemA:I

.field private mForceIdle:Z

.field private final mGenericLocationListener:Landroid/location/LocationListener;

.field private mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mGpsLocationListener:Landroid/location/LocationListener;

.field final mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

.field private mHasGps:Z

.field private mHasNetworkLocation:Z

.field private mIdleIntent:Landroid/content/Intent;

.field private final mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

.field private mInactiveTimeout:J

.field private final mInteractivityReceiver:Landroid/content/BroadcastReceiver;

.field private mJobsActive:Z

.field private mLastGenericLocation:Landroid/location/Location;

.field private mLastGpsLocation:Landroid/location/Location;

.field private final mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mLightEnabled:Z

.field private mLightIdleIntent:Landroid/content/Intent;

.field private mLightState:I

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalActivityManager:Landroid/app/ActivityManagerInternal;

.field private mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

.field private mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocated:Z

.field private mLocating:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequest:Landroid/location/LocationRequest;

.field private final mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IMaintenanceActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaintenanceStartTime:J

.field private mMinimumPeriod:J

.field private final mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

.field private mMotionSensor:Landroid/hardware/Sensor;

.field private mNetworkConnected:Z

.field mNetworkPolicyForceCloseSocketCallback:Ljava/lang/Runnable;

.field private mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mNextAlarmTime:J

.field private mNextIdleDelay:J

.field private mNextIdlePendingDelay:J

.field private mNextLightAlarmTime:J

.field private mNextLightIdleDelay:J

.field private mNextSensingTimeoutAlarmTime:J

.field private mNotMoving:Z

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerSaveWhitelistAllAppIdArray:[I

.field private final mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaveWhitelistExceptIdleAppIdArray:[I

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

.field private mPowerSaveWhitelistSystemAppIdArray:[I

.field private final mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

.field private mPowerSaveWhitelistUserAppIdArray:[I

.field private final mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBatteryLevel:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedMaintenanceActivity:Z

.field private mSIMULATE_REPORT:Z

.field private mSavedNextIdleDelay:J

.field private mScreenLocked:Z

.field private mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

.field private mScreenOn:Z

.field private final mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private mTempDisableCriteriaUpdate:Z

.field private mTempWhitelistAppIdArray:[I

.field private final mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/util/MutableLong;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_mA_Criteria:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    const-string v0, "PowerStandbyOnlineConfig"

    sput-object v0, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mDelayMillis:J

    sget v1, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    const/16 v1, 0x22b

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mFakemA:I

    const-wide/32 v1, 0x1499700

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelLow:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    const/16 v1, 0x64

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    new-instance v1, Lcom/android/server/DeviceIdleController$1;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$1;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/DeviceIdleController$2;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$2;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$3;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$3;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$4;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$4;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$5;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$5;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/DeviceIdleController$6;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$6;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/DeviceIdleController$MotionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$7;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$7;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$8;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$8;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    new-instance v1, Lcom/android/server/DeviceIdleController$9;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceIdleController$9;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/DeviceIdleController;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "deviceidle.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    new-instance v0, Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    new-instance v0, Lcom/android/server/AppStateTracker;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/AppStateTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-class v0, Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/DeviceIdleController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/DeviceIdleController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/DeviceIdleController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/DeviceIdleController;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/server/OnePlusStandbyAnalyzer;
    .locals 1

    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;
    .locals 0

    sput-object p0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/DeviceIdleController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/DeviceIdleController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/DeviceIdleController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    return-wide v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/DeviceIdleController;)Lcom/android/server/OnePlusPowerController$LocalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    return-object v0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/DeviceIdleController;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController;->resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/DeviceIdleController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/DeviceIdleController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/DeviceIdleController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/DeviceIdleController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/DeviceIdleController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mFakemA:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceIdleController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceIdleController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceIdleController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/DeviceIdleController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/DeviceIdleController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    return v0
.end method

.method private addEvent(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    const/16 v3, 0x63

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aput-object p2, v0, v1

    :cond_0
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v2, v1, [I

    nop

    :goto_2
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method private checkLoctionWhiteUid()Z
    .locals 14

    sget-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getActiveLocationUidType()Landroid/util/ArrayMap;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, ""

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v5, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    move v7, v1

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_7

    :try_start_0
    aget-object v8, v6, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    aget-object v8, v6, v7

    const-string v10, "com.amap.android.ams"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "gps"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    return v9

    :cond_4
    aget-object v8, v6, v7

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v9

    if-nez v10, :cond_6

    const-string/jumbo v10, "gps"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    aget-object v10, v6, v7

    invoke-virtual {p0, v10}, Lcom/android/server/DeviceIdleController;->isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v11, "DeviceIdleController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkLoctionWhiteUid package = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v6, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    aget-object v12, v6, v7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v11, v6, v7

    invoke-virtual {p0, v11}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    return v9

    :cond_6
    goto :goto_3

    :catch_0
    move-exception v8

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return v1

    :cond_9
    :goto_5
    return v1
.end method

.method private clearWhiteUid()V
    .locals 4

    sget-object v0, Lcom/android/server/DeviceIdleController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v3, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/DeviceIdleController;->mWhiteUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Device idle controller (deviceidle) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  step [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Immediately step to next state, without waiting for alarm."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-idle [light|deep]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force directly into idle mode, regardless of other device state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-inactive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force to be inactive, ready to freely step idle states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  unforce"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Resume normal functioning after force-idle or force-inactive."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get [light|deep|force|screen|charging|network]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Retrieve the current given state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Completely disable device idle mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enable [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Re-enable device idle mode after it had previously been disabled."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  enabled [light|deep|all]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print 1 if device idle mode is currently enabled, else 0."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  aggressive [true|false]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Activate aggressive doze (true) or deactivate it (false)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  whitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print currently whitelisted apps."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  whitelist [package ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add (prefix with +) or remove (prefix with -) packages."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  sys-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prefix the package with \'-\' to remove it from the system whitelist or \'+\' to put it back in the system whitelist."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Note that only packages that were earlier removed from the system whitelist can be added back."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    reset will reset the whitelist to the original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints the system whitelist if no arguments are specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  except-idle-whitelist [package ...|reset]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prefix the package with \'+\' to add it to whitelist or \'=\' to check if it is already whitelisted"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    [reset] will reset the whitelist to it\'s original state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Note that unlike <whitelist> cmd, changes made using this won\'t be persisted across boots"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tempwhitelist"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print packages that are temporarily whitelisted."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tempwhitelist [-u USER] [-d DURATION] [-r] [package]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Temporarily place package in whitelist for DURATION milliseconds."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If no DURATION is specified, 10 seconds is used"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If [-r] option is used, then the package is removed from temp whitelist and any [-d] is ignored"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  motion"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Simulate a motion event to bring the device out of deep doze"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isHasGpsReport()Z
    .locals 11

    sget-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->getActiveLocationUidType()Landroid/util/ArrayMap;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v2, ""

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v5, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isHasGpsReport uid ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "provider = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    move v7, v1

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_7

    aget-object v8, v6, v7

    if-eqz v8, :cond_4

    const-string v8, "DeviceIdleController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isHasGpsReport package ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    aget-object v8, v6, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    aget-object v8, v6, v7

    const-string v10, "com.amap.android.ams"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "gps"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v9

    :cond_5
    :try_start_0
    aget-object v8, v6, v7

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v10, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v9

    if-nez v10, :cond_6

    const-string/jumbo v10, "gps"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_6

    return v9

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v8

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return v1

    :cond_9
    :goto_4
    const-string v2, "DeviceIdleController"

    const-string/jumbo v3, "isHasGpsReport activeLocationArrayMap = 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static lightStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "OVERRIDE"

    return-object v0

    :pswitch_2
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    :pswitch_3
    const-string v0, "WAITING_FOR_NETWORK"

    return-object v0

    :pswitch_4
    const-string v0, "IDLE"

    return-object v0

    :pswitch_5
    const-string v0, "PRE_IDLE"

    return-object v0

    :pswitch_6
    const-string v0, "INACTIVE"

    return-object v0

    :pswitch_7
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from temp whitelist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/16 v1, 0x4011

    invoke-interface {v0, v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private passWhiteListsToForceAppStandbyTrackerLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AppStateTracker;->setPowerSaveWhitelistAppIds([I[I[I)V

    return-void
.end method

.method private postTempActiveTimeoutMessage(IJ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postTempActiveTimeoutMessage: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_9

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_9

    :cond_2
    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xed5

    if-eq v6, v7, :cond_5

    const v7, 0x6a37689

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "un-wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v5, v4

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "wl"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    :cond_6
    :goto_2
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v5, "DeviceIdleController"

    goto :goto_4

    :pswitch_0
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :pswitch_1
    const-string/jumbo v5, "n"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_7

    const/high16 v6, 0x400000

    :try_start_1
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v6

    :goto_3
    goto :goto_5

    :goto_4
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <config>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_7
    :goto_5
    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no start tag found"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_2
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_5
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_6
    move-exception v1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    nop

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removePowerSaveTempWhitelistAppDirectInternal(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppDirectInternal(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private reportPowerSaveWhitelistChangedLocked()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private reportTempWhitelistChangedLocked()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private resolveDeviceIdleConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_0

    const-string v0, "DeviceIdleController"

    const-string v1, "[OnlineConfig] jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_enable, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_ma_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_ma_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    const-string v4, "[OnlineConfig] Has config for config_ma_criteria, but adb-configuration is set, so skip this way"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_min_period"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_min_period, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable_self_diagnosis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_enable_self_diagnosis, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_uwl_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_uwl_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    goto/16 :goto_1

    :cond_9
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_kwl_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_kwl_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    goto/16 :goto_1

    :cond_d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_wr_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    goto/16 :goto_1

    :cond_f
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_wr_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    goto/16 :goto_1

    :cond_11
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sb_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sb_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    goto/16 :goto_1

    :cond_13
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sb_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sb_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    goto/16 :goto_1

    :cond_15
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_unacc_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    goto/16 :goto_1

    :cond_17
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_18

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_unacc_criteria_minor, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    goto/16 :goto_1

    :cond_19
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_minor_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1a

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_minor_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_time_slm_sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1c

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_time_slm_sec, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleep_acc_dur_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_1e

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sleep_acc_dur_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleepcount_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_20

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_sleepcount_criteria, updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    goto/16 :goto_1

    :cond_21
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qxdm_min_grab_period"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMinimumPeriod(J)V

    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_22

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for qxdm_min_grab_period, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    goto/16 :goto_1

    :cond_23
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qxdm_min_grab_gap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabGapAfterStandbyStart(J)V

    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_24

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for qxdm_min_grab_gap, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    goto/16 :goto_1

    :cond_25
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "middle_check"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    sget-object v5, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyMiddleCheck(J)V

    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_26

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] Has config for middle_check, updated to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    goto :goto_1

    :cond_27
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wait_for_unlock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_28

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_wait_for_unlock, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnableWaitForUnlockToExitDoze:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController$Constants;->access$3700(Lcom/android/server/DeviceIdleController$Constants;)V

    goto :goto_1

    :cond_29
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "DeviceIdleController"

    const-string v4, "[OnlineConfig] No config for updating, no updated"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_1
    const-string/jumbo v3, "ro.build.beta"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2c

    const-string/jumbo v3, "ro.build.alpha"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2b

    goto :goto_2

    :cond_2b
    move v4, v0

    nop

    :cond_2c
    :goto_2
    move v3, v4

    if-eqz v3, :cond_2f

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_beta_config_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_2d

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, begin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    sget-object v4, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    :cond_2e
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_2f

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, end to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig], error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig], error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    nop

    :goto_3
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IDLE_MAINTENANCE"

    return-object v0

    :pswitch_1
    const-string v0, "IDLE"

    return-object v0

    :pswitch_2
    const-string v0, "LOCATING"

    return-object v0

    :pswitch_3
    const-string v0, "SENSING"

    return-object v0

    :pswitch_4
    const-string v0, "IDLE_PENDING"

    return-object v0

    :pswitch_5
    const-string v0, "INACTIVE"

    return-object v0

    :pswitch_6
    const-string v0, "ACTIVE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTempWhitelistAppIdsLocked(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v1, v1

    if-eq v1, v0, :cond_0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting activity manager temp whitelist to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/ActivityManagerInternal;->updateDeviceIdleTempWhitelist([IIZ)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting wakelock temp whitelist to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleTempWhitelist([I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    return-void
.end method

.method private updateWhitelistAppIdsLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting wakelock whitelist to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    return-void
.end method


# virtual methods
.method addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v9, "addPowerSaveTempWhitelistApp"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v1

    move/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v11, v3

    const/4 v9, 0x1

    move-object v3, p0

    move v4, v1

    move-object v5, p1

    move-wide v6, p2

    move v8, v2

    move-object/from16 v10, p5

    :try_start_0
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    throw v3
.end method

.method addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v8, v0

    const/16 v0, 0x2710

    if-lt v8, v0, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calling app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not on whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-wide/from16 v9, p3

    goto/16 :goto_7

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v11, p3

    :try_start_3
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_3

    new-instance v13, Landroid/util/Pair;

    new-instance v14, Landroid/util/MutableLong;

    move v15, v12

    const-wide/16 v11, 0x0

    invoke-direct {v14, v11, v12}, Landroid/util/MutableLong;-><init>(J)V

    invoke-direct {v13, v14, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v13

    iget-object v11, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v11, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v11, v0

    goto :goto_2

    :cond_3
    move v15, v12

    move-object v11, v0

    :goto_2
    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/MutableLong;

    add-long v12, v5, v9

    iput-wide v12, v0, Landroid/util/MutableLong;->value:J

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DeviceIdleController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding AppId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " to temp whitelist. New entry: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v15

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", duration="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", sync="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", reason="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :cond_4
    move v13, v15

    :goto_3
    if-eqz v13, :cond_6

    :try_start_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const v12, 0x8011

    invoke-interface {v0, v12, v4, v2}, Lcom/android/internal/app/IBatteryStats;->noteEvent(ILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_4
    :try_start_6
    invoke-direct {v1, v2, v9, v10}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    const/4 v12, 0x1

    invoke-direct {v1, v2, v12}, Lcom/android/server/DeviceIdleController;->updateTempWhitelistAppIdsLocked(IZ)V

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    move v7, v0

    goto :goto_5

    :cond_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v12, 0x9

    const/4 v14, 0x1

    invoke-virtual {v0, v12, v2, v14}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->reportTempWhitelistChangedLocked()V

    :cond_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v7, :cond_7

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    const/4 v8, 0x1

    invoke-virtual {v0, v2, v8}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-wide/from16 v11, p3

    :goto_6
    move-wide v9, v11

    :goto_7
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move-object v1, p0

    move v2, p1

    move-wide v4, p3

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method becomeActiveLocked(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "becomeActiveLocked, reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x50

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    :cond_2
    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    invoke-direct {p0, v1, p1}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method becomeInactiveIfAppropriateLocked()V
    .locals 6

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string v1, "becomeInactiveIfAppropriateLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_7

    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    new-array v0, v1, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v0, v2}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    :cond_3
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "DeviceIdleController"

    const-string v2, "Moved from STATE_ACTIVE to STATE_INACTIVE"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetIdleManagementLocked()V

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const-string/jumbo v2, "no activity"

    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v0, :cond_7

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "DeviceIdleController"

    const-string v1, "Moved from LIGHT_STATE_ACTIVE to LIGHT_STATE_INACTIVE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->resetLightIdleManagementLocked()V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const-string/jumbo v1, "no activity"

    invoke-static {v0, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method cancelAlarmLocked()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method cancelLightAlarmLocked()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method cancelLocatingLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->clearAllPendingBroadcastsLocked()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    :cond_1
    return-void
.end method

.method cancelSensingTimeoutAlarmLocked()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    return-void
.end method

.method checkIfHitBatteryLowLocked(II)V
    .locals 8

    const/4 v0, 0x5

    if-gt p2, v0, :cond_3

    if-le p1, p2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sub-long v2, v0, v2

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    :goto_0
    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    sub-int/2addr v4, v5

    :goto_1
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[opbugreportlite] Doesn\'t leaving DeepIdle, but Battery Low, period = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " (ms), batteryLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", levelDrop = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", start to evaulate the battery-drain."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DeviceIdleController;->leavingDeepIdleLocked(Z)V

    :cond_3
    return-void
.end method

.method checkTempAppWhitelistTimeout(I)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTempAppWhitelistTimeout: uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/server/DeviceIdleController;->onAppRemovedFromTempWhitelistLocked(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time to remove UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/MutableLong;

    iget-wide v5, v5, Landroid/util/MutableLong;->value:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/MutableLong;

    iget-wide v3, v3, Landroid/util/MutableLong;->value:J

    sub-long/2addr v3, v0

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/DeviceIdleController;->postTempActiveTimeoutMessage(IJ)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method decActiveIdleOps()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DeviceIdleController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_6

    aget-object v7, v3, v5

    const-string v8, "-h"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/android/server/DeviceIdleController;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const-string v8, "-u"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    array-length v8, v3

    if-ge v5, v8, :cond_3

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    const-string v8, "-a"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    :goto_1
    add-int/2addr v5, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/DeviceIdleController$Shell;

    invoke-direct {v0, v1}, Lcom/android/server/DeviceIdleController$Shell;-><init>(Lcom/android/server/DeviceIdleController;)V

    iput v6, v0, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    array-length v8, v3

    sub-int/2addr v8, v5

    new-array v15, v8, [Ljava/lang/String;

    array-length v8, v3

    sub-int/2addr v8, v5

    invoke-static {v3, v5, v15, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v4, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v0

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/DeviceIdleController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void

    :cond_6
    monitor-enter p0

    :try_start_0
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v5, v2}, Lcom/android/server/DeviceIdleController$Constants;->dump(Ljava/io/PrintWriter;)V

    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v5, v5, v4

    if-eqz v5, :cond_9

    const-string v5, "  Idling history:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/16 v7, 0x63

    :goto_2
    if-ltz v7, :cond_9

    iget-object v8, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v8, v8, v7

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    iget-object v9, v1, Lcom/android/server/DeviceIdleController;->mEventCmds:[I

    aget v9, v9, v7

    packed-switch v9, :pswitch_data_0

    const-string v9, "         ??"

    goto :goto_3

    :pswitch_0
    const-string v9, " deep-maint"

    goto :goto_3

    :pswitch_1
    const-string v9, "  deep-idle"

    goto :goto_3

    :pswitch_2
    const-string/jumbo v9, "light-maint"

    goto :goto_3

    :pswitch_3
    const-string v9, " light-idle"

    goto :goto_3

    :pswitch_4
    const-string v9, "     normal"

    :goto_3
    nop

    const-string v10, "    "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventTimes:[J

    aget-wide v10, v10, v7

    invoke-static {v10, v11, v5, v6, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    if-eqz v10, :cond_8

    const-string v10, " ("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/DeviceIdleController;->mEventReasons:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ")"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_9
    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_a

    const-string v6, "  Whitelist (except idle) system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_5
    if-ge v6, v5, :cond_a

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_b

    const-string v6, "  Whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_6
    if-ge v6, v5, :cond_b

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_c

    const-string v6, "  Removed from whitelist system apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_7
    if-ge v6, v5, :cond_c

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_d

    const-string v6, "  Whitelist user apps:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_8
    if-ge v6, v5, :cond_d

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_d
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_e

    const-string v6, "  Whitelist (except idle) all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_9
    if-ge v6, v5, :cond_e

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_e
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_f

    const-string v6, "  Whitelist user app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_a
    if-ge v6, v5, :cond_f

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    iget-object v6, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    if-lez v5, :cond_10

    const-string v6, "  Whitelist all app ids:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v4

    :goto_b
    if-ge v6, v5, :cond_10

    const-string v7, "    "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    invoke-virtual {v1, v2, v0}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    array-length v0, v0

    goto :goto_c

    :cond_11
    move v0, v4

    :goto_c
    if-lez v0, :cond_12

    const-string v5, "  Temp whitelist app ids:"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_d
    if-ge v4, v0, :cond_12

    const-string v5, "    "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    aget v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_12
    const-string v4, "  mLightEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, "  mDeepEnabled="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mForceIdle="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mMotionSensor="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mScreenOn="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mScreenLocked="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mNetworkConnected="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mCharging="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mMotionActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v4, v4, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mNotMoving="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mLocating="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocating:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasGps="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasNetwork="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mLocated="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mLocated:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    if-eqz v4, :cond_13

    const-string v4, "  mLastGenericLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_13
    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    if-eqz v4, :cond_14

    const-string v4, "  mLastGpsLocation="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_14
    const-string v4, "  mState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " mLightState="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  mInactiveTimeout="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-eqz v4, :cond_15

    const-string v4, "  mActiveIdleOpCount="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(I)V

    :cond_15
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_16

    const-string v4, "  mNextAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_16
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_17

    const-string v4, "  mNextIdlePendingDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_17
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_18

    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_18
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_19

    const-string v4, "  mNextIdleDelay="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_19
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    const-string v4, "  mNextLightAlarmTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1a
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    const-string v4, "  mCurIdleBudget="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1b
    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1c

    const-string v4, "  mMaintenanceStartTime="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v1, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-eqz v4, :cond_1d

    const-string v4, "  mJobsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1d
    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-eqz v4, :cond_1e

    const-string v4, "  mAlarmsActive="

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, ""

    if-eqz p2, :cond_0

    const-string v2, "  Temp whitelist schedule:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    "

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "UID="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdEndTimes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/MutableLong;

    iget-wide v6, v6, Landroid/util/MutableLong;->value:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " - "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method enteringDeepIdleLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string v1, "[opbugreportlite] m1stLightIdle is false, abort enteringDeepIdleLocked, just return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] Entering DeepIdle, batteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nowElapseRealTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    if-eqz v1, :cond_5

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    if-eqz v0, :cond_5

    :try_start_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "DeviceIdleController"

    const-string v1, "[opbugreportlite] Snapshot of start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] got exception while snapshot of start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method exitForceIdleLocked()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "exit-force"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public exitIdleInternal(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method exitMaintenanceEarlyIfNeededLocked()V
    .locals 7

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exit: start="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, " now="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v5, "DeviceIdleController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "s:predone"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "s:early"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAppIdTempWhitelistInternal()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempWhitelistAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdUserWhitelistInternal()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistExceptIdleInternal()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppIdWhitelistInternal()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFullPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    move v2, v3

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFullPowerWhitelistInternal()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    move v2, v3

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPowerSaveWhitelistUserAppIds()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppIdArray:[I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemovedSystemPowerWhitelistAppsInternal()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemPowerWhitelistExceptIdleInternal()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserPowerWhitelistInternal()[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleMotionDetectedLocked(JLjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, p3, v3}, Lcom/android/server/DeviceIdleController;->scheduleReportActiveLocked(Ljava/lang/String;I)V

    invoke-direct {p0, v4, p3}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    :cond_2
    iput v2, p0, Lcom/android/server/DeviceIdleController;->mState:I

    new-array v3, v4, [I

    const/16 v4, 0x50

    aput v4, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v4, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    :cond_3
    iput-wide p1, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v3, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_5

    iput v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v1, p3}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_6
    return-void
.end method

.method handleWriteConfigFile()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "DeviceIdleController"

    const-string v5, "Error writing config file"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method ifReportLocked(IJ)Z
    .locals 7

    const/4 v0, 0x0

    if-lez p1, :cond_6

    long-to-float v1, p2

    const v2, 0x4a5bba00    # 3600000.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    int-to-float v2, v2

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[opbugreportlite] levelDrop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " %, hours = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", average current = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA, criteria = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[opbugreportlite] hit the criteria, mEnablePowerStandbyDetect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnablePowerStandbyDiagnosis ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAlreadyReported = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mAlreadyReported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mAlreadyDiagnosed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mAlreadyDiagnosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "DeviceIdleController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule to SNAPSHOT in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v3, Lcom/android/server/DeviceIdleController$10;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/DeviceIdleController$10;-><init>(Lcom/android/server/DeviceIdleController;IF)V

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mDelaySnapShotMillis:J

    invoke-static {v3, v4, v5}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_6
    return v0
.end method

.method incActiveIdleOps()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAppOnWhitelistInternal(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isOpsInactiveLocked()Z
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPowerSaveWhitelistExceptIdleAppInternal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method keyguardShowingLocked(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "unlocked"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method leavingDeepIdleLocked(Z)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sget v5, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_9

    :cond_0
    const-string v3, "DeviceIdleController"

    const-string v4, "[opbugreportlite] Leaving DeepIdle, but reset, so skip"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    sub-long v3, v1, v3

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    if-eqz v5, :cond_7

    if-nez p1, :cond_3

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J

    goto :goto_0

    :cond_2
    iget-wide v5, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    :goto_0
    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    :cond_3
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/android/server/DeviceIdleController;->mBatteryLevelofDeepIdleStart:I

    iget v6, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    sub-int/2addr v5, v6

    :goto_1
    sget-boolean v6, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_6

    :cond_5
    const-string v6, "DeviceIdleController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[opbugreportlite] Leaving DeepIdle, period = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " (ms), batteryLevel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", levelDrop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", start to evaulate the battery-drain."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/DeviceIdleController;->ifReportLocked(IJ)Z

    move-result v0

    goto :goto_2

    :cond_7
    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_9

    :cond_8
    const-string v5, "DeviceIdleController"

    const-string v6, "[opbugreportlite] Leaving DeepIdle, too short, so skip"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->immediateInformScreenON(Z)V

    return-void
.end method

.method motionLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "motionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "motion"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    return-void
.end method

.method public onAnyMotionResult(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnyMotionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change onAnyMotionResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_7

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    monitor-enter p0

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "s:stationary"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_5
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_6
    :goto_1
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    const-string/jumbo v2, "non_stationary"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DeviceIdleController;->handleMotionDetectedLocked(JLjava/lang/String;)V

    monitor-exit p0

    :cond_7
    :goto_2
    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0
.end method

.method public onBootPhase(I)V
    .locals 9

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_a

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/DeviceIdleController;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/server/OnePlusPowerController$LocalService;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusPowerController$LocalService;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "deviceidle_maint"

    invoke-virtual {v1, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "deviceidle_going_idle"

    invoke-virtual {v1, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    const-string/jumbo v1, "netpolicy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;

    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "sensor"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    new-array v1, v0, [I

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mNotificationLight:Lcom/android/server/lights/Light;

    :cond_1
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mLocalBatteryManager:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    iput v1, p0, Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mCurrentBatteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mBatteryCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mBatteryCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mEnablePowerStandbyDetect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mEnablePowerStandbyDiagnosis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDiagnosis:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] m_mA_Criteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] mMinimumPeriod = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v1, :cond_4

    const-string v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mOemExSvc:Lcom/oem/os/IOemExService;

    :cond_4
    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    new-instance v4, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;

    invoke-direct {v4, p0}, Lcom/android/server/DeviceIdleController$DeviceIdleConfigUpdater;-><init>(Lcom/android/server/DeviceIdleController;)V

    sget-object v5, Lcom/android/server/DeviceIdleController;->POWERSTANDBY_ONLINECONFIG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/16 v2, 0x3e8

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->prepareThread()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_5
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_6
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    new-instance v2, Lcom/android/server/AnyMotionDetector;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object v3, v2

    move-object v7, p0

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/AnyMotionDetector;-><init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2}, Lcom/android/server/AppStateTracker;->onSystemServicesReady()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;

    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mInteractivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_9

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v3

    const-string v3, "com.test.retrieve.battstats"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_9
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->setDeviceIdleWhitelist([I[I)V

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAllAppIdArray:[I

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleWhitelist([I)V

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mLocalActivityManager:Landroid/app/ActivityManagerInternal;

    iget-object v4, p0, Lcom/android/server/DeviceIdleController;->mScreenObserver:Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController$Constants;->access$3700(Lcom/android/server/DeviceIdleController$Constants;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_0
    return-void
.end method

.method onShellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;)I
    .locals 38

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    const-string/jumbo v0, "step"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v0

    if-eqz v3, :cond_2

    :try_start_1
    const-string v0, "deep"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    const-string v0, "Stepped to light: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown idle mode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    const-string/jumbo v0, "s:shell"

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    const-string v0, "Stepped to deep: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    const-string v0, "force-idle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v12, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v0

    if-eqz v1, :cond_8

    :try_start_4
    const-string v0, "deep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    :goto_3
    if-eq v0, v3, :cond_6

    const-string/jumbo v2, "s:shell"

    invoke-virtual {v7, v2}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    if-ne v0, v2, :cond_5

    const-string v2, "Unable to go light idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    nop

    :try_start_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return v12

    :cond_5
    :try_start_6
    iget v2, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    move v0, v2

    goto :goto_3

    :cond_6
    const-string v2, "Now forced in to light idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_4
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v0, :cond_9

    const-string v0, "Unable to go deep idle; not enabled"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    nop

    :try_start_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return v12

    :cond_9
    :try_start_8
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    :goto_5
    if-eq v0, v2, :cond_b

    const-string/jumbo v3, "s:shell"

    invoke-virtual {v7, v3}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    if-ne v0, v3, :cond_a

    const-string v2, "Unable to go deep idle; stopped at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    nop

    :try_start_9
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return v12

    :cond_a
    :try_start_a
    iget v3, v7, Lcom/android/server/DeviceIdleController;->mState:I

    move v0, v3

    goto :goto_5

    :cond_b
    const-string v2, "Now forced in to deep idle mode"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    :goto_6
    :try_start_b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :cond_c
    const-string v0, "force-inactive"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-wide v1, v0

    :try_start_d
    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_d
    const-string/jumbo v0, "unforce"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-wide v1, v0

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->exitForceIdleLocked()V

    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :catchall_6
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :cond_e
    const-string v0, "get"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string/jumbo v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v12, v2

    goto :goto_8

    :sswitch_1
    const-string v0, "charging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v12, v3

    goto :goto_8

    :sswitch_2
    const-string/jumbo v0, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v12, v11

    goto :goto_8

    :sswitch_3
    const-string v0, "force"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v12, v5

    goto :goto_8

    :sswitch_4
    const-string v0, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v12, v4

    goto :goto_8

    :sswitch_5
    const-string/jumbo v0, "screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    move v12, v0

    :cond_f
    :goto_8
    packed-switch v12, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_9

    :pswitch_0
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_a

    :pswitch_1
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mCharging:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_a

    :pswitch_2
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_a

    :pswitch_3
    iget-boolean v0, v7, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_a

    :pswitch_4
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_5
    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown get option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :goto_a
    :try_start_14
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_b

    :catchall_8
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_10
    const-string v0, "Argument required"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    monitor-exit p0

    :goto_c
    move-object v2, v9

    goto/16 :goto_3a

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0

    :cond_11
    const-string v0, "disable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    :try_start_16
    const-string v5, "deep"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_d

    :catchall_a
    move-exception v0

    goto :goto_f

    :cond_12
    :goto_d
    const/4 v4, 0x1

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v5, :cond_13

    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const/4 v0, 0x1

    const-string v5, "Deep idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    if-eqz v3, :cond_14

    const-string/jumbo v5, "light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "all"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    const/4 v4, 0x1

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v5, :cond_15

    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    const/4 v0, 0x1

    const-string v5, "Light idle mode disabled"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    if-eqz v0, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_16

    const-string v6, "all"

    goto :goto_e

    :cond_16
    move-object v6, v3

    :goto_e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v7, v5, v6}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_17
    if-nez v4, :cond_18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :cond_18
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :goto_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    throw v0

    :cond_19
    const-string v0, "enable"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1a

    :try_start_19
    const-string v6, "deep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_10

    :catchall_c
    move-exception v0

    goto :goto_11

    :cond_1a
    :goto_10
    const/4 v5, 0x1

    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-nez v6, :cond_1b

    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    const/4 v0, 0x1

    const-string v6, "Deep idle mode enabled"

    invoke-virtual {v10, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    if-eqz v3, :cond_1c

    const-string/jumbo v6, "light"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    const-string v6, "all"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    iget-boolean v6, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-nez v6, :cond_1d

    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    const/4 v0, 0x1

    const-string v4, "Light idle mode enable"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_1e
    if-nez v5, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown idle mode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    :cond_1f
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    goto/16 :goto_c

    :goto_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    throw v0

    :cond_20
    const-string v0, "enabled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    monitor-enter p0

    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_14

    :cond_21
    const-string v1, "deep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_22

    const-string v1, "1"

    goto :goto_12

    :cond_22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_12
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_16

    :cond_23
    const-string/jumbo v1, "light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_24

    const-string v1, "1"

    goto :goto_13

    :cond_24
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_16

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown idle mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_26
    :goto_14
    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    if-eqz v1, :cond_27

    iget-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    if-eqz v1, :cond_27

    const-string v1, "1"

    goto :goto_15

    :cond_27
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_15
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_16
    monitor-exit p0

    goto/16 :goto_c

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    throw v0

    :cond_28
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x3d

    const/16 v3, 0x2d

    const/16 v6, 0x2b

    if-eqz v0, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :goto_17
    move-wide v14, v0

    :try_start_1c
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_2f

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_29

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_29

    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_29

    goto/16 :goto_19

    :cond_29
    invoke-virtual {v13, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v13, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v6, :cond_2b

    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2b
    if-ne v0, v3, :cond_2c

    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2c
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2d
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    move-object v13, v0

    if-nez v0, :cond_2e

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_1d

    :cond_2e
    move-wide v0, v14

    const/16 v2, 0x3d

    goto/16 :goto_17

    :cond_2f
    :goto_19
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    nop

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_f
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_30
    monitor-enter p0

    move v0, v11

    :goto_1a
    :try_start_1e
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    const-string/jumbo v1, "system-excidle,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_31
    move v0, v11

    :goto_1b
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    const-string/jumbo v1, "system,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_32
    move v0, v11

    :goto_1c
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    const-string/jumbo v1, "user,"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_33
    monitor-exit p0

    :goto_1d
    goto/16 :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    throw v0

    :cond_34
    const-string/jumbo v0, "tempwhitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-wide/16 v0, 0x2710

    move-wide v13, v0

    move v0, v11

    :goto_1e
    move v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    if-eqz v0, :cond_3a

    const-string v0, "-u"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    const-string v1, "-u requires a user number"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    goto :goto_1f

    :cond_36
    const-string v0, "-d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    const-string v1, "-d requires a duration"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_37
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_1f

    :cond_38
    const-string v0, "-r"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_1e

    :cond_39
    :goto_1f
    move v0, v15

    goto :goto_1e

    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3c

    if-eqz v15, :cond_3b

    :try_start_1f
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    invoke-virtual {v7, v5, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_20

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto :goto_21

    :cond_3b
    :try_start_20
    iget v0, v8, Lcom/android/server/DeviceIdleController$Shell;->userId:I

    const-string/jumbo v16, "shell"
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    move-object v1, v7

    move-object v2, v5

    move-wide v3, v13

    move-object/from16 v17, v5

    move v5, v0

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    :try_start_21
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppChecked(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    :goto_20
    goto :goto_22

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_3c
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    if-eqz v15, :cond_3d

    const-string v0, "[-r] requires a package name"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v12

    :cond_3d
    invoke-virtual {v7, v10, v11}, Lcom/android/server/DeviceIdleController;->dumpTempWhitelistSchedule(Ljava/io/PrintWriter;Z)V

    :goto_22
    goto/16 :goto_c

    :cond_3e
    const-string v0, "except-idle-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_22
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    const-string v3, "No arguments given"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_3f
    :try_start_23
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetPowerSaveWhitelistExceptIdleInternal()V

    goto :goto_25

    :cond_40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_45

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_41

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_41

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v13, 0x3d

    if-eq v5, v13, :cond_41

    goto :goto_26

    :cond_41
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    if-ne v5, v6, :cond_43

    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->addPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_42

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Added: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_23
    const/16 v14, 0x3d

    goto :goto_24

    :cond_42
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    :cond_43
    const/16 v14, 0x3d

    if-ne v5, v14, :cond_44

    invoke-virtual {v7, v13}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistExceptIdleInternal(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->println(Z)V

    :goto_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    move-object v0, v5

    if-nez v5, :cond_40

    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_c

    :cond_44
    :try_start_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :cond_45
    :goto_26
    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package must be prefixed with +, -, or =: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_11
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_46
    const-string/jumbo v0, "sys-whitelist"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    :try_start_26
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->resetSystemPowerWhitelistInternal()V

    goto :goto_28

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_4c

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_48

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_48

    goto :goto_29

    :cond_48
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v6, :cond_4a

    if-eq v0, v3, :cond_49

    goto :goto_27

    :cond_49
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    :cond_4a
    invoke-virtual {v7, v1}, Lcom/android/server/DeviceIdleController;->restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restored "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4b
    :goto_27
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    move-object v2, v0

    if-nez v0, :cond_47

    :goto_28
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_2b

    :cond_4c
    :goto_29
    :try_start_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package must be prefixed with + or - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    nop

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_12
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4d
    monitor-enter p0

    move v0, v11

    :goto_2a
    :try_start_28
    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4e
    monitor-exit p0

    :goto_2b
    goto/16 :goto_c

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    throw v0

    :cond_4f
    const-string v0, "aggressive"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aggressive doze: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v3

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x1

    :goto_2c
    goto :goto_2d

    :cond_50
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v5, 0x0

    goto :goto_2c

    :goto_2d
    nop

    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v6, v5}, Lcom/android/server/DeviceIdleController$Constants;->setPolicy(I)V

    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v6, :cond_52

    if-ne v5, v4, :cond_51

    iget-object v6, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v6, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    goto :goto_2e

    :cond_51
    iget-object v4, v7, Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4, v11}, Landroid/os/PowerManagerInternal;->setDeviceIdleAggressive(Z)V

    :cond_52
    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aggressive: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_14

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_c

    :cond_53
    :try_start_2a
    const-string/jumbo v4, "please enter aggressive [true|false]"

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :cond_54
    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :catchall_14
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_55
    const-string v0, "abn_reporting"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_56

    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "abn_reporting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    const-string v3, "enabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    const-string v3, "abn_reporting is enabled"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :cond_57
    const-string v3, "disabled"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iput-boolean v11, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    sget-object v3, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateReportingFlag(Z)V

    const-string v3, "abn_reporting is disabled"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :cond_58
    const-string/jumbo v3, "please enter abn_reporting [enabled|disabled]"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    :cond_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abn_reporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_c

    :catchall_15
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5a
    const-string/jumbo v0, "standby"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    sget-boolean v3, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v3, :cond_5b

    const-string v3, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "standby: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    const-string/jumbo v3, "set_criteria"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_5e

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5c

    iput v3, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config standby criteria to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mA, and not allow update via online-config."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "DeviceIdleController"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v7, Lcom/android/server/DeviceIdleController;->mTempDisableCriteriaUpdate:Z

    goto :goto_30

    :cond_5c
    const-string/jumbo v4, "invalid standby criteria."

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    goto :goto_31

    :cond_5d
    const-string v3, "get_criteria"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current standby criteria : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "DeviceIdleController"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    :cond_5e
    :goto_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto/16 :goto_c

    :catchall_16
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5f
    const-string/jumbo v0, "qxdm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_2e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    move-object v3, v0

    if-eqz v3, :cond_74

    :try_start_2f
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    if-eqz v0, :cond_60

    :try_start_30
    const-string v0, "DeviceIdleController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "qxdm: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_19

    :cond_60
    :try_start_31
    const-string/jumbo v0, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v0

    sget-object v6, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabMechanismStatus()Z

    move-result v6

    sget-object v12, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMRecordingStatus()Z

    move-result v12

    sget-object v13, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabMinimumPeriod()J

    move-result-wide v13

    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getQXDMGrabGapAfterStandbyStart()J

    move-result-wide v15

    move-wide/from16 v19, v15

    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getStandbyStart()J

    move-result-wide v15

    move-wide/from16 v21, v15

    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getLastQXDMGrabTimeStamp()J

    move-result-wide v15

    move-wide/from16 v23, v15

    sget-object v15, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getMiddleCheckPeriod()J

    move-result-wide v15

    move-wide/from16 v25, v15

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/util/Formatter;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v15, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const-string v11, "%-25s: %1b"

    new-array v9, v5, [Ljava/lang/Object;

    const-string v16, "BugReportLiteEnable"

    const/16 v17, 0x0

    aput-object v16, v9, v17

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v9, v17

    invoke-virtual {v4, v11, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v9, "%-25s: %1b"

    new-array v11, v5, [Ljava/lang/Object;

    const-string/jumbo v16, "standby-abn-reporting"

    const/16 v17, 0x0

    aput-object v16, v11, v17

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mEnablePowerStandbyDetect:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v16, 0x1

    aput-object v5, v11, v16

    invoke-virtual {v4, v9, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string v9, "fast_report"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    iget-boolean v9, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "qxdm-grab"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v5, "%-25s: %1b"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "qxdm-under-recording"

    const/16 v16, 0x0

    aput-object v9, v11, v16

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v11, v16

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v5, "%-25s: %1d ms"

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "minGrabGap"

    const/16 v16, 0x0

    aput-object v9, v11, v16
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    move/from16 v29, v0

    move-wide/from16 v27, v1

    move-wide/from16 v0, v19

    :try_start_32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v9, 0x1

    aput-object v2, v11, v9

    invoke-virtual {v4, v5, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "latestStandbyStart"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v30, v0

    move-wide/from16 v0, v21

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "minGrabPeriod"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "lastGrabTimeStamp"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v32, v0

    move-wide/from16 v0, v23

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const-string/jumbo v5, "middleCheckPeriod"

    const/4 v11, 0x0

    aput-object v5, v9, v11

    move-wide/from16 v34, v0

    move-wide/from16 v0, v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v4, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v2, "%-25s: %1d ms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v9, "now"

    const/4 v11, 0x0

    aput-object v9, v5, v11

    move-wide/from16 v36, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v4, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_37

    :cond_61
    move-wide/from16 v27, v1

    const-string/jumbo v0, "time_reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_62

    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->setLastQXDMGrabTimeStamp(J)V

    const-string/jumbo v0, "reset lastGrabTimeStamp to 0"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_62
    const-string/jumbo v0, "time_set"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_17

    if-eqz v0, :cond_6b

    :try_start_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    const-string/jumbo v0, "last"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid time(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    :cond_63
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->setLastQXDMGrabTimeStamp(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set lastGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    goto/16 :goto_36

    :cond_64
    const-string/jumbo v0, "min"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid minGrabPeriod(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_33

    :cond_65
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMinimumPeriod(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set minGrabPeriod to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_33
    goto/16 :goto_36

    :cond_66
    const-string v0, "gap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an invalid minGrabGap(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34

    :cond_67
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabGapAfterStandbyStart(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set minGrabGap to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_34
    goto :goto_36

    :cond_68
    const-string/jumbo v0, "middle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "input an negative middleCheck(ms):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms, so disable this feature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set middleCheck to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_35
    sget-object v0, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateStandbyMiddleCheck(J)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_3
    .catchall {:try_start_33 .. :try_end_33} :catchall_17

    goto :goto_36

    :catch_3
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6a
    :goto_36
    goto/16 :goto_37

    :cond_6b
    const-string/jumbo v0, "grab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMechanism(Z)V

    const-string v1, "config QXDMGrabMechanism to true"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_6c
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDMGrabMechanism(Z)V

    const-string v1, "config QXDMGrabMechanism to false"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_6d
    const-string v0, "enabled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string/jumbo v1, "qxdm short is enabled(20sec auto-stop)"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->simulateTelephonyAbnormal(Z)V

    goto/16 :goto_37

    :cond_6e
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string/jumbo v1, "qxdm normal is enabled(2 min auto-stop)"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->simulateTelephonyAbnormal(Z)V

    goto/16 :goto_37

    :cond_6f
    const-string v0, "clean"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, "Try to clean up the latest QXDM logs under sdcard..."

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37

    :cond_70
    const-string v0, "copy1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, "copy1"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.power_mask"

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_71
    const-string v0, "copy2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "copy2"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.power_mask"

    const-string/jumbo v1, "service"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_72
    const-string v0, "copy3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string/jumbo v0, "persist.sys.power_mask"

    const-string/jumbo v1, "ims"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_73
    const-string/jumbo v0, "please enter qxdm [enabled|disabled]"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_17

    goto :goto_37

    :catchall_17
    move-exception v0

    move-wide/from16 v1, v27

    goto :goto_38

    :catchall_18
    move-exception v0

    goto :goto_38

    :cond_74
    move-wide/from16 v27, v1

    :cond_75
    :goto_37
    move-wide/from16 v1, v27

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    nop

    move-object/from16 v2, p2

    goto/16 :goto_3a

    :catchall_19
    move-exception v0

    :goto_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_76
    const-string v0, "fast_report"

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    :try_start_35
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_77

    const-string v1, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fast_report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    const-string v1, "fast_report is enabled"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39

    :cond_78
    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    const-string v1, "fast_report is disabled"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39

    :cond_79
    const-string/jumbo v1, "please enter fast_report [enabled|disabled]"

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_39

    :cond_7a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast_report: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v7, Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1a

    :goto_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_3a

    :catchall_1a
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7b
    const-string/jumbo v0, "motion"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    move-wide v3, v0

    :try_start_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    const-string v0, "Light state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->lightStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", deep state: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    :try_start_38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit p0

    :goto_3a
    const/4 v1, 0x0

    return v1

    :catchall_1b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1c

    throw v0

    :cond_7c
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/DeviceIdleController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x361a3f94 -> :sswitch_5
        0x2efcec -> :sswitch_4
        0x5d18aeb -> :sswitch_3
        0x6233516 -> :sswitch_2
        0x55996271 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mDeepEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mLightEnabled:Z

    const-string/jumbo v1, "oem.dozeNetworkChange.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/DeviceIdleController;->isDozeChangeSupport:Z

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSaveExceptIdle()Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/high16 v6, 0x100000

    const/4 v7, 0x1

    if-ge v4, v5, :cond_0

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v10, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v4

    move v5, v3

    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v8, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v9

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    new-array v6, v5, [I

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    move v6, v3

    :goto_4
    if-ge v6, v5, :cond_2

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleSystemAppIdArray:[I

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdsExceptIdle:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    iget-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    new-array v6, v5, [I

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_3

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIdArray:[I

    iget-object v9, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistSystemAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_3
    new-instance v6, Lcom/android/server/DeviceIdleController$Constants;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v6, p0, v8, v9}, Lcom/android/server/DeviceIdleController$Constants;-><init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    iput-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    iput-boolean v7, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    iput v3, p0, Lcom/android/server/DeviceIdleController;->mState:I

    iput v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v6, v3, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iput-wide v6, p0, Lcom/android/server/DeviceIdleController;->mInactiveTimeout:J

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-instance v1, Lcom/android/server/DeviceIdleController$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DeviceIdleController$BinderService;-><init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V

    iput-object v1, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    const-string v1, "deviceidle"

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mBinderService:Lcom/android/server/DeviceIdleController$BinderService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Lcom/android/server/DeviceIdleController$LocalService;

    new-instance v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/DeviceIdleController$LocalService;-><init>(Lcom/android/server/DeviceIdleController;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DeviceIdleController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public postToOPBackgroundThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postToOPBackgroundThread(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method readConfigFileLocked()V
    .locals 3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading config from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConfigFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/DeviceIdleController;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    throw v1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v1

    nop

    :goto_2
    return-void

    :catch_3
    move-exception v0

    return-void
.end method

.method receivedGenericLocationLocked(Landroid/location/Location;)V
    .locals 3

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generic location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v1, v1, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "s:location"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method receivedGpsLocationLocked(Landroid/location/Location;)V
    .locals 3

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->checkLoctionWhiteUid()Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean v2, Lcom/android/server/DeviceIdleController;->mStopGps:Z

    :cond_4
    sget-boolean v1, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Constants;->getPolicy()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v2, v2, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    return-void

    :cond_6
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "s:gps"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepIdleStateLocked(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method registerMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessages(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->removeMessages(I)V

    return-void
.end method

.method removePowerSaveTempWhitelistAppChecked(Ljava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    const-string v2, "No permission to change device idle whitelist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string/jumbo v9, "removePowerSaveTempWhitelistApp"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v5, v0

    move v6, p2

    invoke-interface/range {v3 .. v10}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/DeviceIdleController;->removePowerSaveTempWhitelistAppInternal(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reportMaintenanceActivityIfNeededLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mReportedMaintenanceActivity:Z

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method resetIdleManagementLocked()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->stopMonitoringMotionLocked()V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector;->stop()V

    return-void
.end method

.method resetLightIdleManagementLocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    return-void
.end method

.method public resetPowerSaveWhitelistExceptIdleInternal()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistAppsExceptIdle:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistExceptIdleAppIdArray:[I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->passWhiteListsToForceAppStandbyTrackerLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resetSystemPowerWhitelistInternal()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreSystemPowerWhitelistAppInternal(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->reportPowerSaveWhitelistChangedLocked()V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->updateWhitelistAppIdsLocked()V

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->writeConfigFileLocked()V

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method scheduleAlarmLocked(JZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleAlarmLocked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v1

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    if-eqz v3, :cond_2

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-wide v8, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v10, "DeviceIdleController.deep"

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setIdleUntil(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v14, 0x2

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextAlarmTime:J

    const-string v17, "DeviceIdleController.deep"

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mDeepAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    move-wide v15, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method scheduleLightAlarmLocked(J)V
    .locals 9

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleLightAlarmLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextLightAlarmTime:J

    const-string v6, "DeviceIdleController.light"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mLightAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method scheduleReportActiveLocked(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/DeviceIdleController$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method scheduleSensingTimeoutAlarmLocked(J)V
    .locals 9

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleSensingAlarmLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController;->mNextSensingTimeoutAlarmTime:J

    const-string v6, "DeviceIdleController.sensing"

    iget-object v7, p0, Lcom/android/server/DeviceIdleController;->mSensingTimeoutAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v8, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public sendEmptyMessageDelayed(IJ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method setAlarmsActive(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mAlarmsActive:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setJobsActive(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mJobsActive:Z

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->reportMaintenanceActivityIfNeededLocked()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->exitMaintenanceEarlyIfNeededLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkPolicyForceCloseSocketCallbackInternal(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/DeviceIdleController;->mNetworkPolicyForceCloseSocketCallback:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startMonitoringMotionLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "startMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->registerLocked()Z

    :cond_1
    return-void
.end method

.method stepIdleStateLocked(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "DeviceIdleController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stepIdleStateLocked: mState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleStep()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    add-long/2addr v4, v2

    iget-object v6, v0, Lcom/android/server/DeviceIdleController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v6}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DeviceIdleController"

    const-string v5, "becomeActiveLocked due to near incoming AlarmClock"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "alarm"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_1
    return-void

    :cond_2
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput v9, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moved from STATE_IDLE to STATE_IDLE_MAINTENANCE. Next alarm in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    long-to-float v11, v11

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v12, v12, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    mul-float/2addr v11, v12

    float-to-long v11, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_4

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    :cond_4
    const/4 v4, 0x6

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    invoke-direct {v0, v6, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelSensingTimeoutAlarmLocked()V

    iput v7, v0, Lcom/android/server/DeviceIdleController;->mState:I

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "DeviceIdleController"

    const-string v11, "Moved from STATE_SENSING to STATE_LOCATING."

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->isHasGpsReport()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    :cond_6
    const-string v4, "DeviceIdleController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isHasGpsRequest ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v4, :cond_7

    const-wide/32 v11, 0x1d4c0

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_0

    :cond_7
    const-wide/16 v11, 0x2710

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    goto :goto_0

    :cond_8
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v4, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    :goto_0
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-eqz v4, :cond_9

    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->isHasGpsRequest:Z

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v11, "gps"

    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v11, "gps"

    invoke-virtual {v4, v11}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->isFirstReport:Z

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x41200000    # 10.0f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_2

    :cond_9
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mLocationRequest:Landroid/location/LocationRequest;

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mGenericLocationListener:Landroid/location/LocationListener;

    iget-object v12, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v12}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v4, v5, v11, v12}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_1

    :cond_a
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasNetworkLocation:Z

    :goto_1
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v4

    if-eqz v4, :cond_b

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x40a00000    # 5.0f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGpsLocationListener:Landroid/location/LocationListener;

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v5}, Lcom/android/server/DeviceIdleController$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v17}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    goto :goto_2

    :cond_b
    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mHasGps:Z

    :goto_2
    iget-boolean v4, v0, Lcom/android/server/DeviceIdleController;->mLocating:Z

    if-eqz v4, :cond_c

    goto/16 :goto_3

    :cond_c
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelAlarmLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->stop()V

    :pswitch_3
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moved to STATE_IDLE. Next alarm in "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms."

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    long-to-float v4, v4

    iget-object v5, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    mul-float/2addr v4, v5

    float-to-long v4, v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "DeviceIdleController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mNextIdleDelay = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    iget-object v11, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v11, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    :cond_f
    iput v6, v0, Lcom/android/server/DeviceIdleController;->mState:I

    iget v4, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_10

    iput v5, v0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLightAlarmLocked()V

    :cond_10
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    invoke-direct {v0, v7, v8}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :pswitch_4
    const/4 v4, 0x3

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "DeviceIdleController"

    const-string v5, "Moved from STATE_IDLE_PENDING to STATE_SENSING."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-virtual {v0, v4, v5}, Lcom/android/server/DeviceIdleController;->scheduleSensingTimeoutAlarmLocked(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->cancelLocatingLocked()V

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mNotMoving:Z

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController;->mLocated:Z

    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGenericLocation:Landroid/location/Location;

    iput-object v8, v0, Lcom/android/server/DeviceIdleController;->mLastGpsLocation:Landroid/location/Location;

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mAnyMotionDetector:Lcom/android/server/AnyMotionDetector;

    invoke-virtual {v4}, Lcom/android/server/AnyMotionDetector;->checkForAnyMotion()V

    goto :goto_3

    :pswitch_5
    sget-boolean v4, Lcom/android/server/DeviceIdleController;->mDozeChange:Z

    if-nez v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    :cond_12
    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-virtual {v0, v4, v5, v10}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdlePendingDelay:J

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v4, v4, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/DeviceIdleController;->mNextIdleDelay:J

    const/4 v4, 0x2

    iput v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    sget-boolean v4, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v4, "DeviceIdleController"

    const-string v5, "Moved from STATE_INACTIVE to STATE_IDLE_PENDING."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget v4, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-static {v4, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdle(ILjava/lang/String;)V

    nop

    :goto_3
    new-array v4, v9, [I

    const/16 v5, 0x50

    aput v5, v4, v10

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/android/server/DeviceIdleController;->mLocalOnePlusPowerController:Lcom/android/server/OnePlusPowerController$LocalService;

    iget v5, v0, Lcom/android/server/DeviceIdleController;->mState:I

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusPowerController$LocalService;->setDozeState(I)V

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method stepLightIdleStateLocked(Ljava/lang/String;)V
    .locals 13

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepLightIdleStateLocked: mLightState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleLightStep()V

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    if-eq v0, v3, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "DeviceIdleController"

    const-string v1, "Moved to LIGHT_WAITING_FOR_NETWORK."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput v4, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    :goto_0
    iput v3, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleOpCount:I

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mActiveIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_1

    :cond_5
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    cmp-long v0, v3, v7

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    :cond_6
    :goto_1
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "DeviceIdleController"

    const-string v3, "Moved from LIGHT_STATE_IDLE to LIGHT_STATE_IDLE_MAINTENANCE."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    invoke-direct {p0, v6, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->isOpsInactiveLocked()Z

    move-result v0

    if-nez v0, :cond_9

    iput v6, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    goto :goto_3

    :cond_9
    :pswitch_1
    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    cmp-long v0, v7, v4

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    sub-long/2addr v7, v9

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v9, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    cmp-long v0, v7, v9

    if-gez v0, :cond_a

    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long/2addr v11, v7

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    goto :goto_2

    :cond_a
    iget-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    sub-long v11, v7, v11

    sub-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/server/DeviceIdleController;->mCurIdleBudget:J

    :cond_b
    :goto_2
    iput-wide v4, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceStartTime:J

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DeviceIdleController;->scheduleLightAlarmLocked(J)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-wide v7, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    long-to-float v0, v7

    iget-object v5, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget v5, v5, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    mul-float/2addr v0, v5

    float-to-long v7, v0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v7, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    cmp-long v0, v3, v7

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController;->mNextLightIdleDelay:J

    :cond_c
    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "DeviceIdleController"

    const-string v3, "Moved to LIGHT_STATE_IDLE."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput v1, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    iget v0, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    invoke-static {v0, p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleLight(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/DeviceIdleController;->addEvent(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessage(I)Z

    nop

    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method stopMonitoringMotionLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "stopMonitoringMotionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-boolean v0, v0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$MotionListener;->unregisterLocked()V

    :cond_1
    return-void
.end method

.method unregisterMaintenanceActivityListener(Landroid/os/IMaintenanceActivityListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateChargingLocked(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceIdleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateChargingLocked: charging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mCharging:Z

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v0, :cond_2

    const-string v0, "charging"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateConnectivityState(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mConnectivityService:Lcom/android/server/ConnectivityService;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    monitor-enter p0

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "networkType"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const-string/jumbo v3, "noConnectivity"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eq v2, v3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mNetworkConnected:Z

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/server/DeviceIdleController;->mLightState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    const-string/jumbo v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method updateInteractivityLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInteractivityLocked: screenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->becomeInactiveIfAppropriateLocked()V

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    sget v1, Lcom/android/server/DeviceIdleController;->TIME_OF_DEEPIDLE_START_RESET:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController;->mElapseRealTimeofDeepIdleStart:J

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    if-nez v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenOn:Z

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mForceIdle:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController;->mScreenLocked:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;

    iget-boolean v2, v2, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    if-nez v2, :cond_4

    :cond_3
    const-string/jumbo v2, "screen"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/DeviceIdleController;->becomeActiveLocked(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController;->leavingDeepIdleLocked(Z)V

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController;->m1stLightIdle:Z

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/server/DeviceIdleController;->clearWhiteUid()V

    return-void
.end method

.method writeConfigFileLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method writeConfigFileLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mPowerSaveWhitelistUserApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "n"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "wl"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "n"

    iget-object v3, p0, Lcom/android/server/DeviceIdleController;->mRemovedFromSystemWhitelistApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "un-wl"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "config"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method
