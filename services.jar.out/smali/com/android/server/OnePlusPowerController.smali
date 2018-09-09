.class public Lcom/android/server/OnePlusPowerController;
.super Lcom/android/server/SystemService;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;,
        Lcom/android/server/OnePlusPowerController$Shell;,
        Lcom/android/server/OnePlusPowerController$KMeans;,
        Lcom/android/server/OnePlusPowerController$IdleStats;,
        Lcom/android/server/OnePlusPowerController$Cluster;,
        Lcom/android/server/OnePlusPowerController$IdleItem;,
        Lcom/android/server/OnePlusPowerController$MyHandler;,
        Lcom/android/server/OnePlusPowerController$ConfigUpdater;,
        Lcom/android/server/OnePlusPowerController$LocalService;,
        Lcom/android/server/OnePlusPowerController$BinderService;
    }
.end annotation


# static fields
.field private static final ACTION_IDLE_STATS_CONFIG:Ljava/lang/String; = "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

.field private static final ACTION_OPTIMIZE_SWITCH:Ljava/lang/String; = "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

.field private static final ACTION_PROCESS_KMEANS:Ljava/lang/String; = "net.oneplus.powercontroller.action.PROCESS_KMEANS"

.field private static final ACTION_RECORD_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

.field private static final ACTION_RESTORE_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

.field private static final ADVANCED_OPTIMIZATION_ACTIVITY:Ljava/lang/String; = "com.oneplus.settings.backgroundoptimize.funcswitch.BgOptimizeSwitchActivity"

.field public static final BETA_OR_ALPHA_ROM:Z

.field private static final BLE_SCAN_AVAILABLE:I = 0x1

.field private static final BLE_SCAN_UNAVAILABLE:I = 0x0

.field private static DEBUG_IDLE_STATS:Z = false

.field private static DEBUG_KMEANS:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SLEEP_STATE:Z = false

.field private static final DELAY_DEBOUNCE:I = 0x7d0

.field private static final DELAY_START:I = 0x1388

.field private static final DIMENSION:I = 0x2

.field private static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final INTENT_OPSM_CHECK:Ljava/lang/String; = "net.oneplus.powercontroller.intent.OPSM"

.field private static final LOG_TAG:Ljava/lang/String; = "OnePlusPowerController"

.field private static final MAX_IDLE_ITEMS:I = 0x3c

.field private static final MAX_IDLE_LENGTH:I = 0x337f980

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "usersleep"

.field private static final MDM_OPSM_ACTIVE:Ljava/lang/String; = "1"

.field private static final MDM_OPSM_CONFIG:Ljava/lang/String; = "oc"

.field private static final MDM_OPSM_INACTIVE:Ljava/lang/String; = "0"

.field private static final MDM_OPSM_STATE:Ljava/lang/String; = "os"

.field private static final MIN_IDLE_ITEMS:I = 0x2

.field private static final MIN_IDLE_LENGTH:I = 0x112a880

.field private static final MIN_RECORD_TIME:I = 0x36ee80

.field private static final MSG_ADD_EXCLUSIVE_WAKELOCK:I = 0x3

.field private static final MSG_EARLY_RESTRICTION:I = 0x8

.field private static final MSG_ENTER_OPSM:I = 0x15be

.field private static final MSG_FIRST_ACTIVATION:I = 0x9

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_LEAVE_OPSM:I = 0x1e6c

.field private static final MSG_ONLINE_CONFIG:I = 0x7

.field private static final MSG_PROCESS_KMEANS:I = 0x4

.field private static final MSG_RECORD_IDLE:I = 0x5

.field private static final MSG_RESTORE_IDLE:I = 0x6

.field private static final MSG_UPDATE_POLICY:I = 0x2

.field private static final NUM_CLUSTER:I = 0x2

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final OPSM_DISABLED_BY_SYSTEM:I = -0x1

.field private static final OPSM_DISABLED_BY_USER:I = 0x0

.field private static final OPSM_ENABLED_BY_SYSTEM:I = 0x2

.field private static final OPSM_ENABLED_BY_USER:I = 0x1

.field private static final OPSM_ENABLED_UNKNOWN:I = -0x2

.field private static final POLICY_AGGRESSIVE:I = 0x1

.field private static final POLICY_DEFAULT:I = 0x0

.field private static final POWER_CONTROL_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "power_control_notification"

.field private static final POWER_CONTROL_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Power Control"

.field private static final PROJECT_CONFIG_NAME:Ljava/lang/String; = "PowerControl"

.field private static final RANDOM_SEED:I = 0x64

.field public static final REQUEST_OPSM:I = 0x1

.field public static final REQUEST_SLEEP_CHANGE:I = 0x0

.field public static SCREEN_OFF:I = 0x0

.field public static SCREEN_ON:I = 0x0

.field private static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final STATE_ACTIVE:I = 0x0

.field public static final STATE_AWAKE:I = 0x1e6c

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field public static final STATE_SLEEP:I = 0x15be

.field private static final THRESHOLD_COEFFICIENT_OF_VARIATION:D = 0.4

.field private static final TIMEOUT_AFTER_SCREEN_OFF:I = 0x44aa20

.field private static final TIMEOUT_BEFORE_USER_AWAKE:I = 0x1b7740

.field private static final TIME_LENGTH:I = 0x1

.field private static final TIME_START:I = 0x0

.field private static final TOLERANCE:I = 0x1

.field private static mActivationCount:I

.field private static mAggressive:Z

.field private static mCoefVar:D

.field private static mFirstChange:Z

.field private static mFirstMcc:I

.field private static mFirstMnc:I

.field private static mIsDeepSleep:Z

.field private static mMaxIdleItems:I

.field private static mMaxIdleLength:I

.field private static mMinIdleItems:I

.field private static mMinIdleLength:I

.field private static mMinRecordTime:I

.field private static mNumCluster:I

.field private static mOnlineConfigEnabled:Z

.field private static mRandomSeed:I

.field private static mShuttingDown:Z

.field private static mSleepState:I

.field private static mTimeOutAfterScreenOff:I

.field private static mTimeOutBeforeUserAwake:I

.field private static mTolerance:I


# instance fields
.field public final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

.field SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

.field private mBootCompletedElapsedTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDeepSleepWhitelistAppIdArray:[I

.field private final mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mDeepSleepWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeState:I

.field private final mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mEarlyRestrictionEnabled:Z

.field private mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

.field private mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

.field private mIsCharging:Z

.field private mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

.field private final mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNextAlarmFromOPSM:J

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOPSMActive:Z

.field private mOPSMEnabled:I

.field private final mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mSavedBleScanAlwaysAvailable:I

.field private mSavedBluetoothState:Z

.field private mSavedDataState:Z

.field private mSavedTetheredIfaces:[Ljava/lang/String;

.field private mSavedWifiScanState:Z

.field private mSavedWifiState:Z

.field private mScreenOffStart:Ljava/time/LocalDateTime;

.field private mScreenOffStartDateTime:Ljava/time/LocalDateTime;

.field private mSensorEnabled:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRestrict:Z

.field private mSleepEndOverridden:Ljava/time/LocalDateTime;

.field private mSleepStartOverridden:Ljava/time/LocalDateTime;

.field private mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserSleep:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tetherableBluetoothRegexs:[Ljava/lang/String;

.field private tetherableUsbRegexs:[Ljava/lang/String;

.field private tetherableWifiRegexs:[Ljava/lang/String;

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 159
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 161
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 162
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 231
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    .line 254
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    .line 335
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    .line 336
    sput-boolean v1, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 337
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 339
    const/16 v2, 0x1e6c

    sput v2, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 340
    const/4 v2, -0x1

    sput v2, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 341
    sput v2, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 354
    const v2, 0x44aa20

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 355
    const v2, 0x1b7740

    sput v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 369
    const-string/jumbo v2, "ro.build.beta"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    const-string/jumbo v2, "ro.build.alpha"

    .line 370
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    .line 372
    sput v0, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    .line 373
    sput v1, Lcom/android/server/OnePlusPowerController;->SCREEN_ON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    .line 182
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    .line 226
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 227
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 228
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 245
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 246
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 247
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 248
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 311
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 316
    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 322
    iput v2, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    .line 361
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 406
    new-instance v3, Lcom/android/server/OnePlusPowerController$1;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$1;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 418
    new-instance v3, Lcom/android/server/OnePlusPowerController$2;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$2;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 1131
    new-instance v3, Lcom/android/server/OnePlusPowerController$4;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$4;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1672
    new-instance v3, Lcom/android/server/OnePlusPowerController$5;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$5;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 3290
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/server/OnePlusPowerController;->timeout:J

    .line 432
    const/16 v3, 0x3c

    sput v3, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 433
    const v3, 0x112a880

    sput v3, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 434
    const v3, 0x337f980

    sput v3, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 435
    const/4 v3, 0x2

    sput v3, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 436
    const v4, 0x36ee80

    sput v4, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 437
    sput v3, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 438
    const/16 v3, 0x64

    sput v3, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 439
    sput v1, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    .line 440
    const-wide v3, 0x3fd999999999999aL    # 0.4

    sput-wide v3, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    .line 442
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 443
    const-string/jumbo v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 444
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 445
    new-instance v3, Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    .line 446
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    .line 447
    const-class v3, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManagerInternal;

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 449
    new-instance v3, Lcom/oneplus/config/ConfigObserver;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    new-instance v6, Lcom/android/server/OnePlusPowerController$ConfigUpdater;

    invoke-direct {v6, p0, v0}, Lcom/android/server/OnePlusPowerController$ConfigUpdater;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V

    const-string v7, "PowerControl"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 450
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v3}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 452
    new-instance v3, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v5, "NYNCG4I0TI"

    invoke-direct {v3, v4, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 453
    new-instance v3, Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {v3, p1}, Lcom/android/server/OverHeatingDiagnosis;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    .line 455
    new-instance v3, Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$IdleStats;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    .line 456
    new-instance v3, Lcom/android/server/OnePlusPowerController$KMeans;

    invoke-direct {v3, p0}, Lcom/android/server/OnePlusPowerController$KMeans;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    .line 458
    new-instance v3, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-direct {v3, v0}, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;-><init>(Lcom/android/server/OnePlusPowerController$1;)V

    iput-object v3, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    .line 460
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 461
    new-instance v0, Lcom/android/server/OnePlusPowerController$3;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/OnePlusPowerController$3;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    .line 490
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "doze_mode_policy"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 495
    new-array v0, v1, [I

    const/16 v1, 0x50

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "optimal_power_save_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 502
    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusPowerController"

    const-string v1, "OnePlusPowerController is constructed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusPowerController;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OnePlusPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # J

    .line 157
    iput-wide p1, p0, Lcom/android/server/OnePlusPowerController;->mNextAlarmFromOPSM:J

    return-wide p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/OnePlusPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/OnePlusPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # I

    .line 157
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return p1
.end method

.method static synthetic access$1800()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic access$2202(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    return p0
.end method

.method static synthetic access$2300()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return p0
.end method

.method static synthetic access$2402(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    return p0
.end method

.method static synthetic access$2500()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return v0
.end method

.method static synthetic access$2502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return p0
.end method

.method static synthetic access$2600()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return v0
.end method

.method static synthetic access$2602(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return p0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    return p0
.end method

.method static synthetic access$2802(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    return p0
.end method

.method static synthetic access$2900()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 157
    sput p0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/OnePlusPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    return-object v0
.end method

.method static synthetic access$3500()D
    .locals 2

    .line 157
    sget-wide v0, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    return-wide v0
.end method

.method static synthetic access$3600()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    return v0
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager$OnAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/OnePlusPowerController;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # Ljava/time/LocalDateTime;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/OnePlusPowerController;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->createNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/OnePlusPowerController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$4300()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return v0
.end method

.method static synthetic access$4302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 157
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return p0
.end method

.method static synthetic access$4400()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    return v0
.end method

.method static synthetic access$4500()I
    .locals 1

    .line 157
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    return v0
.end method

.method static synthetic access$4600()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 157
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;

    .line 157
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/OnePlusPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "x1"    # I

    .line 157
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return p1
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 4
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
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

    .line 3326
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3327
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 3328
    move v2, v0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3329
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3332
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 3333
    move v2, v0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3334
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3333
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3337
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 3338
    .local v1, "size":I
    new-array v2, v1, [I

    .line 3339
    .local v2, "appids":[I
    nop

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 3340
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v0

    .line 3339
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3342
    .end local v0    # "i":I
    :cond_2
    return-object v2
.end method

.method private convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J
    .locals 4
    .param p1, "date"    # Ljava/time/LocalDateTime;

    .line 3365
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 3366
    .local v0, "zdt":Ljava/time/ZonedDateTime;
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    .line 3368
    .local v1, "instant":Ljava/time/Instant;
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    return-wide v2
.end method

.method private createNotification()Landroid/app/Notification;
    .locals 7

    .line 3506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3507
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "classname"

    const-string v2, "com.oneplus.settings.backgroundoptimize.funcswitch.BgOptimizeSwitchActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3508
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3509
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3511
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const v3, 0x50c0048

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3512
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const v4, 0x50c0047

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3514
    .local v3, "details":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power_control_notification"

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3516
    const v5, 0x506000e

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 3517
    const v6, 0x1060157

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3519
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3520
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3521
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3522
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3523
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string/jumbo v6, "sys"

    .line 3524
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3525
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3526
    const/16 v6, 0x10

    invoke-virtual {v4, v6, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 3527
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 3529
    .local v4, "notification":Landroid/app/Notification;
    return-object v4
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;)V
    .locals 4
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;

    .line 3491
    if-nez p1, :cond_0

    return-void

    .line 3493
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "power_control_notification"

    const-string v2, "Power Control"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 3498
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 3499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 3500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 3501
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 3502
    return-void
.end method

.method private dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .line 3293
    const/4 v0, 0x0

    .line 3294
    .local v0, "fis":Ljava/io/FileInputStream;
    const/16 v1, 0x400

    .line 3295
    .local v1, "buf_size":I
    new-array v2, v1, [B

    .line 3297
    .local v2, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3299
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 3300
    const/4 v4, 0x0

    .line 3301
    .local v4, "length":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3302
    .local v5, "nowELAPSED":J
    :cond_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 3303
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iget-wide v9, p0, Lcom/android/server/OnePlusPowerController;->timeout:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 3305
    const-string v7, "**** Exceed read timeout, force exit ***"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    nop

    .line 3309
    .end local v4    # "length":I
    .end local v5    # "nowELAPSED":J
    :cond_1
    goto :goto_0

    .line 3310
    :cond_2
    const-string v4, "**** File not found ****"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    .end local v3    # "f":Ljava/io/File;
    :goto_0
    if-eqz v0, :cond_3

    .line 3317
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3318
    :catch_0
    move-exception v3

    .line 3320
    goto :goto_2

    .line 3319
    :cond_3
    :goto_1
    goto :goto_2

    .line 3315
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 3312
    :catch_1
    move-exception v3

    .line 3313
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3316
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3

    .line 3317
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3321
    :goto_2
    return-void

    .line 3315
    :goto_3
    nop

    .line 3316
    if-eqz v0, :cond_4

    .line 3317
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 3318
    :catch_2
    move-exception v4

    nop

    .line 3319
    :cond_4
    :goto_4
    throw v3
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2560
    const-string v0, "OnePlus power controller (powercontrol) commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2563
    const-string v0, "  log [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2564
    const-string v0, "    Enable/disable log messages"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2565
    const-string v0, "  onlineconfig [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2566
    const-string v0, "    Enable/disable online config of powercontrol service"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    const-string v0, "  aggressive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2568
    const-string v0, "    Print the information of the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2569
    const-string v0, "  aggressive [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    const-string v0, "    Enable or disable the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const-string v0, "  overheat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    const-string v0, "    Print the information of the diagnosis of overheating"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2573
    const-string v0, "  overheat [enable|disable]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2574
    const-string v0, "    Enable or disable the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    const-string v0, "  overheat [number|temper|period|force-monitor] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2576
    const-string v0, "    Configure the property value of the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2578
    const-string v0, "  standby"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    const-string v0, "    Print standby diagnosis records"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2581
    const-string v0, "  deepsleepwhitelist [update|clean|get] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2582
    const-string v0, "    Update the deepsleepwhitelist, or get, or entire clean"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    const-string v0, "  wifi [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2584
    const-string v0, "    Enable, disable or query wifi network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    const-string v0, "  data [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    const-string v0, "    Enable, disable or query data network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2587
    const-string v0, "  tethering [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2588
    const-string v0, "    Enable, disable or query tethering state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2589
    const-string v0, "  usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    const-string v0, "    Print the information of the usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2591
    const-string v0, "  usersleep log [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    const-string v0, "    Enable or disable the usersleep log."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2593
    const-string v0, "  usersleep opsm [enable|disable]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    const-string v0, "    Enable or disable OPSM"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    const-string v0, "  usersleep start [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    const-string v0, "    Set the usersleep start time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    const-string v0, "  usersleep end [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    const-string v0, "    Set the usersleep end time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    const-string v0, "  usersleep timeoutAfterScreenOff [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    const-string v0, "    Set the threshold to enter OPSM after screen-off"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    const-string v0, "  usersleep timeoutBeforeUserAwake [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    const-string v0, "    Set the threshold to leave OPSM before user awake"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    const-string v0, "  wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    const-string v0, "    Print exclusive wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    return-void
.end method

.method private dumpUseSleep(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3202
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3203
    const-string v0, "**** USER DEEP SLEEP CONFIGURATION ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX IDLE ITEMS  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN IDLE ITEMS  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAX IDLE LENGTH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN IDLE LENGTH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIN RECORD TIME : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COEFFICIENT OF VARIATION : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%.3f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3210
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Doze State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " User Sleep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OPSMEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OPSMActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SensorRestrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " isCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3219
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 3220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    CurrentWifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 3223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    CurrentDataState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3225
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "             mSavedWifiState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "             mSavedDataState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mSavedTetheredIfaces = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        mSavedBluetoothState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSavedBleScanAlwaysAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3231
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v0, :cond_2

    .line 3232
    const-string v0, "Screen-off time = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3234
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen-off time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3237
    :goto_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 3238
    .local v0, "now":Ljava/time/LocalDateTime;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current local date time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeOutAfterScreenOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeOutBeforeUserAwake = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivationCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3245
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    if-eqz v1, :cond_8

    .line 3246
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v1

    .line 3247
    .local v1, "start":Ljava/time/LocalTime;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v2

    .line 3248
    .local v2, "duration":Ljava/time/Duration;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 3249
    .local v3, "nextStart":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v4

    .line 3251
    .local v4, "nextEnd":Ljava/time/LocalDateTime;
    const-string v5, "**** IDLE RECORD STATISTICS ****"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total idle records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5, p1}, Lcom/android/server/OnePlusPowerController$IdleStats;->dumpIdleItems(Ljava/io/PrintWriter;)V

    .line 3256
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v5

    .line 3258
    .local v5, "lastRecordTime":Ljava/time/LocalDateTime;
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    .line 3262
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last update time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deep-sleep: start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v7}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3259
    :cond_4
    :goto_1
    const-string v6, "Last update time: 0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    const-string v6, "deep-sleep: start=0, length=0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3267
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3268
    const-string v6, "**** User DEEP SLEEP PROGNOSIS ****"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_5

    .line 3271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep Start (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3273
    :cond_5
    if-eqz v3, :cond_6

    .line 3274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep Start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_7

    .line 3279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep End (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3281
    :cond_7
    if-eqz v4, :cond_8

    .line 3282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sleep End = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    .end local v1    # "start":Ljava/time/LocalTime;
    .end local v2    # "duration":Ljava/time/Duration;
    .end local v3    # "nextStart":Ljava/time/LocalDateTime;
    .end local v4    # "nextEnd":Ljava/time/LocalDateTime;
    .end local v5    # "lastRecordTime":Ljava/time/LocalDateTime;
    :cond_8
    :goto_4
    return-void
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 3097
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3098
    const-string/jumbo v0, "vendor.wigig.interface"

    const-string/jumbo v1, "wigig0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3099
    .local v0, "wigigIface":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3100
    const/4 v1, 0x3

    return v1

    .line 3102
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 3103
    .end local v0    # "wigigIface":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3104
    const/4 v0, 0x1

    return v0

    .line 3105
    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3106
    const/4 v0, 0x2

    return v0

    .line 3108
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private isMusicPlaying()Z
    .locals 5

    .line 3377
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3378
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 3380
    .local v1, "isMusicActive":Z
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 3381
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMusicActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "regexs"    # [Ljava/lang/String;

    .line 3112
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3113
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3112
    .end local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3115
    :cond_1
    return v1
.end method

.method private parseOPSM(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1417
    const-string v0, "OnePlusPowerController"

    const-string/jumbo v1, "parseOPSM..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const-string v0, "enabled"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1429
    .local v0, "enabled":I
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v2, :cond_0

    .line 1430
    const-string v2, "beta_enabled"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1433
    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_3

    .line 1434
    :cond_1
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "optimal_power_save_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1438
    .local v3, "opsm":I
    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_2

    if-ne v3, v5, :cond_3

    .line 1441
    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "optimal_power_save_mode_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1446
    .end local v3    # "opsm":I
    :cond_3
    const-string/jumbo v1, "timeout_after_screen_off"

    const v2, 0x44aa20

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 1448
    const-string/jumbo v1, "timeout_before_user_awake"

    const v2, 0x1b7740

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 1451
    :try_start_0
    const-string/jumbo v1, "whiteList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1452
    .local v1, "whiteList":Lorg/json/JSONArray;
    if-eqz v1, :cond_5

    .line 1453
    const/4 v2, 0x0

    .line 1453
    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1454
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1456
    .local v3, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1459
    goto :goto_1

    .line 1457
    :catch_0
    move-exception v4

    .line 1458
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1463
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v2, v3, v4}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 1464
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-interface {v2, v3}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 1465
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1469
    .end local v1    # "whiteList":Lorg/json/JSONArray;
    :cond_5
    goto :goto_2

    .line 1467
    :catch_1
    move-exception v1

    .line 1468
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    sget-boolean v1, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v1, :cond_6

    .line 1472
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mUserSleep = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mOPSMEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v3}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTimeOutAfterScreenOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTimeOutBeforeUserAwake = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mDeepSleepWhitelistAppIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_6
    return-void
.end method

.method private parseUserSleep(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1372
    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 1374
    const-string/jumbo v0, "sensor_restrict"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 1377
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-nez v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1383
    :cond_0
    const-string/jumbo v0, "seed"

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 1385
    const-string v0, "cluster"

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 1387
    const-string/jumbo v0, "min_rec"

    const v4, 0x36ee80

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 1389
    const-string/jumbo v0, "min_idle"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 1391
    const-string/jumbo v0, "max_idle"

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 1393
    const-string/jumbo v0, "min_len"

    const v3, 0x112a880

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 1395
    const-string/jumbo v0, "max_len"

    const v3, 0x337f980

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 1397
    const-string v0, "coef_var"

    const-wide v3, 0x3fd999999999999aL    # 0.4

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    sput-wide v3, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    .line 1399
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v0, :cond_1

    .line 1400
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] USER_SLEEP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] RANDOM_SEED = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] NUM_CLUSTER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] MIN_RECORD_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] MIN_IDLE_ITEMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] MAX_IDLE_ITEMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] MIN_IDLE_LENGTH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] MAX_IDLE_LENGTH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] COEFFICIENT_OF_VARIATION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%.3f"

    new-array v1, v1, [Ljava/lang/Object;

    sget-wide v5, Lcom/android/server/OnePlusPowerController;->mCoefVar:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_1
    return-void
.end method

.method private parseWakeLock(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "config"    # Lorg/json/JSONObject;

    .line 1329
    :try_start_0
    const-string/jumbo v0, "packageList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1330
    .local v0, "packageList":Lorg/json/JSONArray;
    const-string/jumbo v1, "packageList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->clearExclusiveWakeLock()V

    .line 1332
    const/4 v1, 0x0

    move v2, v1

    .line 1332
    .local v2, "j":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1333
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1334
    .local v3, "item":Lorg/json/JSONObject;
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1335
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1336
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "tagList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1337
    const-string/jumbo v5, "tagList"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1338
    .local v5, "tagList":Lorg/json/JSONArray;
    move v6, v1

    .line 1338
    .local v6, "k":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1339
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1340
    .local v7, "tag":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1341
    .local v8, "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1342
    const-string/jumbo v9, "tag"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1343
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1338
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1332
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "tagList":Lorg/json/JSONArray;
    .end local v6    # "k":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1351
    .end local v0    # "packageList":Lorg/json/JSONArray;
    .end local v2    # "j":I
    :cond_1
    goto :goto_2

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "configList"    # Lorg/json/JSONArray;

    .line 1258
    if-nez p1, :cond_0

    .line 1259
    const-string v0, "OnePlusPowerController"

    const-string v1, "[OnlineConfig] configList == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1261
    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    if-nez v0, :cond_1

    .line 1262
    const-string v0, "OnePlusPowerController"

    const-string v1, "[OnlineConfig] OnlineConfig is turned off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void

    .line 1281
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 1281
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1282
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1284
    .local v2, "config":Lorg/json/JSONObject;
    const-string/jumbo v3, "program"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1285
    const-string/jumbo v3, "program"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1286
    .local v3, "program":Ljava/lang/String;
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] program: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x3427fb

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x1552e9ec

    if-eq v5, v6, :cond_3

    const v6, 0x16dbb584

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "wakelocks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v0

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "usersleep"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v7

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "opsm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x2

    :cond_5
    :goto_1
    packed-switch v4, :pswitch_data_0

    .end local v2    # "config":Lorg/json/JSONObject;
    .end local v3    # "program":Ljava/lang/String;
    goto :goto_2

    .line 1296
    .restart local v2    # "config":Lorg/json/JSONObject;
    .restart local v3    # "program":Ljava/lang/String;
    :pswitch_0
    new-array v4, v7, [I

    const/16 v5, 0x50

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1297
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseOPSM(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 1293
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseUserSleep(Lorg/json/JSONObject;)V

    .line 1294
    goto :goto_2

    .line 1290
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->parseWakeLock(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    nop

    .line 1281
    .end local v2    # "config":Lorg/json/JSONObject;
    .end local v3    # "program":Ljava/lang/String;
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1307
    .end local v1    # "i":I
    :cond_7
    goto :goto_3

    .line 1305
    :catch_0
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method acquireNetworkTempInternal()V
    .locals 11

    .line 3389
    iget-wide v0, p0, Lcom/android/server/OnePlusPowerController;->mNextAlarmFromOPSM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3394
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_0

    .line 3396
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3397
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restoreNetwork()V

    .line 3402
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    .line 3403
    .local v0, "mNextAlarmFromOPSM":J
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    const-string v8, "PowerController.RestrictNetwork"

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mRestrictAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 3407
    return-void
.end method

.method addPackageToWhitelist(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1248
    nop

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1250
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    return-void
.end method

.method applyEarlyRestriction()V
    .locals 4

    .line 3461
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3462
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3463
    monitor-exit v0

    return-void

    .line 3466
    :cond_0
    const-string v1, "OnePlusPowerController"

    const-string v3, "applyEarlyRestriction"

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockRestriction(Z)Z

    .line 3468
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/job/JobSchedulerInternal;->setJobRestriction(Z)V

    .line 3469
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->setAlarmRestriction(Z)V

    .line 3470
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    .line 3471
    monitor-exit v0

    .line 3472
    return-void

    .line 3471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method convertOPSMEnabledToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "opsm"    # I

    .line 3187
    packed-switch p1, :pswitch_data_0

    .line 3197
    const-string v0, "OPSM_ENABLED_UNKNOWN"

    return-object v0

    .line 3195
    :pswitch_0
    const-string v0, "OPSM_ENABLED_BY_SYSTEM"

    return-object v0

    .line 3193
    :pswitch_1
    const-string v0, "OPSM_ENABLED_BY_USER"

    return-object v0

    .line 3191
    :pswitch_2
    const-string v0, "OPSM_DISABLED_BY_USER"

    return-object v0

    .line 3189
    :pswitch_3
    const-string v0, "OPSM_DISABLED_BY_SYSTEM"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method convertToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "sleepState"    # I

    .line 3162
    const/16 v0, 0x15be

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e6c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3182
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 3180
    :pswitch_0
    const-string v0, "STATE_IDLE_MAINTENANCE"

    return-object v0

    .line 3178
    :pswitch_1
    const-string v0, "STATE_IDLE"

    return-object v0

    .line 3176
    :pswitch_2
    const-string v0, "STATE_LOCATING"

    return-object v0

    .line 3174
    :pswitch_3
    const-string v0, "STATE_SENSING"

    return-object v0

    .line 3172
    :pswitch_4
    const-string v0, "STATE_IDLE_PENDING"

    return-object v0

    .line 3170
    :pswitch_5
    const-string v0, "STATE_INACTIVE"

    return-object v0

    .line 3168
    :pswitch_6
    const-string v0, "STATE_ACTIVE"

    return-object v0

    .line 3166
    :cond_0
    const-string v0, "STATE_AWAKE"

    return-object v0

    .line 3164
    :cond_1
    const-string v0, "STATE_SLEEP"

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

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 3119
    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "OnePlusPowerController"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3121
    :cond_0
    const/4 v0, 0x0

    if-eqz v3, :cond_4

    .line 3122
    const/4 v4, 0x0

    .line 3123
    .local v4, "userId":I
    move v5, v0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 3124
    aget-object v6, v3, v5

    .line 3125
    .local v6, "arg":Ljava/lang/String;
    const-string v7, "-h"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3126
    invoke-static/range {p2 .. p2}, Lcom/android/server/OnePlusPowerController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 3127
    return-void

    .line 3128
    :cond_1
    const-string v7, "-a"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3123
    .end local v6    # "arg":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3130
    .restart local v6    # "arg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_3

    .line 3131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3132
    return-void

    .line 3134
    :cond_3
    new-instance v7, Lcom/android/server/OnePlusPowerController$Shell;

    invoke-direct {v7, v1}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 3135
    .local v7, "shell":Lcom/android/server/OnePlusPowerController$Shell;
    iput v4, v7, Lcom/android/server/OnePlusPowerController$Shell;->userId:I

    .line 3136
    array-length v8, v3

    sub-int/2addr v8, v5

    new-array v15, v8, [Ljava/lang/String;

    .line 3137
    .local v15, "newArgs":[Ljava/lang/String;
    array-length v8, v3

    sub-int/2addr v8, v5

    invoke-static {v3, v5, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3138
    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    new-instance v0, Landroid/os/ResultReceiver;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v8, v7

    move-object/from16 v11, p1

    move-object v13, v15

    move-object/from16 v16, v15

    move-object v15, v0

    .end local v15    # "newArgs":[Ljava/lang/String;
    .local v16, "newArgs":[Ljava/lang/String;
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3140
    return-void

    .line 3145
    .end local v4    # "userId":I
    .end local v5    # "i":I
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "shell":Lcom/android/server/OnePlusPowerController$Shell;
    .end local v16    # "newArgs":[Ljava/lang/String;
    :cond_4
    monitor-enter p0

    .line 3146
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [I

    const/16 v5, 0x50

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3147
    invoke-direct {v1, v2}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V

    .line 3149
    :cond_5
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, v2}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 3150
    const-string v0, "**** OverHeat Diagnosis Records ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3151
    const-string v0, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v1, v2, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3154
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3155
    const-string v0, "**** Standby Diagnosis Records ****"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    const-string v0, "/data/system/power/diagnosis_standby.txt"

    invoke-direct {v1, v2, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3157
    monitor-exit p0

    .line 3159
    return-void

    .line 3157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enterOPSMIfAppropriated(Z)V
    .locals 13
    .param p1, "forced"    # Z

    .line 919
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 920
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 921
    .local v1, "now":Ljava/time/LocalDateTime;
    const/4 v2, 0x1

    if-nez p1, :cond_5

    .line 922
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->isMusicPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 923
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of audio playing"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void

    .line 927
    :cond_0
    sget v3, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v4, 0x1e6c

    if-ne v3, v4, :cond_1

    .line 928
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abort entering OPSM mode because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void

    .line 932
    :cond_1
    iget v3, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 933
    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Abort entering OPSM mode because of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    return-void

    .line 937
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    if-eqz v3, :cond_3

    .line 938
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of charging"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return-void

    .line 942
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-ne v3, v2, :cond_4

    .line 943
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because OPSM is already active."

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void

    .line 947
    :cond_4
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v3, :cond_5

    .line 948
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    sget v5, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 949
    const-string v2, "OnePlusPowerController"

    const-string v3, "Abort entering OPSM mode because of Screen-off Timeout"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void

    .line 955
    :cond_5
    const-string v3, "OnePlusPowerController"

    const-string v4, "Entering OPSM mode"

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-wide/16 v3, 0x0

    .line 959
    .local v3, "sleepTimeout":J
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v5, :cond_6

    .line 960
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSleepEndOverridden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v6, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 962
    .local v5, "time":Ljava/time/LocalDateTime;
    invoke-static {v1, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v6

    .line 963
    .local v6, "duration":Ljava/time/Duration;
    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    .line 964
    .end local v5    # "time":Ljava/time/LocalDateTime;
    .end local v6    # "duration":Ljava/time/Duration;
    goto :goto_0

    .line 965
    :cond_6
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v5

    sget v6, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v5

    .line 966
    .local v5, "nextEnd":Ljava/time/LocalDateTime;
    if-eqz v5, :cond_7

    .line 967
    invoke-static {v1, v5}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    goto :goto_0

    .line 969
    :cond_7
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    .line 974
    .end local v5    # "nextEnd":Ljava/time/LocalDateTime;
    :goto_0
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v3

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/DeviceIdleController$LocalService;->scheduleAlarm(JZ)V

    .line 977
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    .line 978
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    .line 979
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "wifi_scan_always_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_8

    move v5, v2

    goto :goto_1

    :cond_8
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    .line 981
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    .line 983
    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    .line 985
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "ble_scan_always_enabled"

    .line 986
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    .line 988
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mSavedBluetoothState="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", mSavedBleScanAlwaysAvailable="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_9
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tethered interfaces: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    array-length v6, v5

    move v8, v7

    :goto_2
    if-ge v8, v6, :cond_a

    aget-object v9, v5, v8

    .line 995
    .local v9, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v9}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 996
    const-string v10, "OnePlusPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disable "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " tethering"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v9    # "iface":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 999
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restrictNetwork()V

    .line 1002
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v5, v2}, Landroid/os/BatteryManagerInternal;->setDeepSleepMode(Z)V

    .line 1005
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v5, v2}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepMode(Z)V

    .line 1006
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5, v2}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 1009
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    if-eqz v5, :cond_b

    .line 1010
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v5, v2}, Lcom/android/server/lights/Light;->setPowerSaveMode(Z)V

    .line 1014
    :cond_b
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v5, :cond_c

    .line 1015
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5}, Landroid/hardware/SensorManager;->enterOPSM()V

    .line 1016
    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 1020
    :cond_c
    if-eqz v0, :cond_e

    .line 1021
    iget v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    if-ne v5, v2, :cond_d

    .line 1022
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "ble_scan_always_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1024
    const-string v5, "OnePlusPowerController"

    const-string v6, "Set BLE_SCAN_ALWAYS_AVAILABLE to 0"

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    if-ne v5, v2, :cond_e

    .line 1027
    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    .line 1028
    const-string v5, "OnePlusPowerController"

    const-string v6, "Disable bluetooth"

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_e
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 1035
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1036
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "os"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v7, "usersleep"

    invoke-virtual {v6, v7, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1039
    sget v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    if-nez v6, :cond_f

    .line 1041
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1045
    :cond_f
    sget v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    add-int/2addr v6, v2

    sput v6, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    .line 1046
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "optimal_power_save_mode_activation"

    sget v7, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1050
    return-void
.end method

.method getSleepState(Ljava/time/LocalDateTime;)I
    .locals 8
    .param p1, "now"    # Ljava/time/LocalDateTime;

    .line 1111
    const/16 v0, 0x1e6c

    .line 1112
    .local v0, "sleepState":I
    if-eqz p1, :cond_0

    .line 1113
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    .line 1114
    .local v1, "date":Ljava/time/LocalDate;
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v2

    .line 1115
    .local v2, "time":Ljava/time/LocalTime;
    if-eqz v2, :cond_0

    .line 1116
    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    .line 1117
    .local v3, "sleepStart":Ljava/time/LocalDateTime;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v4

    sget v5, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/time/Duration;->minusSeconds(J)Ljava/time/Duration;

    move-result-object v4

    .line 1118
    .local v4, "sleepDuration":Ljava/time/Duration;
    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSleepState: sleepStart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", sleepDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 1120
    invoke-virtual {p1, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p1, v3}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1123
    invoke-static {v3, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v5

    if-gez v5, :cond_0

    .line 1124
    const/16 v0, 0x15be

    .line 1128
    .end local v1    # "date":Ljava/time/LocalDate;
    .end local v2    # "time":Ljava/time/LocalTime;
    .end local v3    # "sleepStart":Ljava/time/LocalDateTime;
    .end local v4    # "sleepDuration":Ljava/time/Duration;
    :cond_0
    return v0
.end method

.method isAggressive()Z
    .locals 1

    .line 655
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x1

    return v0

    .line 658
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isChinaRegionInternal()Z
    .locals 2

    .line 642
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 643
    const/4 v0, 0x1

    return v0

    .line 645
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isInSleep()Z
    .locals 2

    .line 669
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIndiaRegionInternal()Z
    .locals 2

    .line 629
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x195

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method leaveOPSM()V
    .locals 9

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-nez v0, :cond_0

    return-void

    .line 1060
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1063
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1064
    .local v5, "iface":Ljava/lang/String;
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " tethering"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v5}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 1063
    .end local v5    # "iface":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->restoreNetwork()V

    .line 1071
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1072
    iget v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedBleScanAlwaysAvailable:I

    if-ne v2, v1, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "ble_scan_always_enabled"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1075
    const-string v2, "OnePlusPowerController"

    const-string v4, "Set BLE_SCAN_ALWAYS_AVAILABLE to 1"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedBluetoothState:Z

    if-eqz v2, :cond_3

    .line 1078
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1079
    const-string v2, "OnePlusPowerController"

    const-string v4, "Enable bluetooth"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_3
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2, v3}, Landroid/os/BatteryManagerInternal;->setDeepSleepMode(Z)V

    .line 1087
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v2, v3}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepMode(Z)V

    .line 1088
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 1091
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    if-eqz v2, :cond_4

    .line 1092
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setPowerSaveMode(Z)V

    .line 1096
    :cond_4
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v2, :cond_5

    .line 1097
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1098
    iput-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 1101
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 1104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1105
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "os"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v3, "usersleep"

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1108
    return-void
.end method

.method public millisToLocalDateTime(J)Ljava/time/LocalDateTime;
    .locals 2
    .param p1, "millis"    # J

    .line 3359
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 3360
    .local v0, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 3361
    .local v1, "date":Ljava/time/LocalDateTime;
    return-object v1
.end method

.method notifyScreenStateInternal(I)V
    .locals 13
    .param p1, "state"    # I

    .line 677
    sget v0, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    const/16 v1, 0x50

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v0, :cond_2

    .line 678
    const-string v0, "OnePlusPowerController"

    const-string v5, "SCREEN is OFF"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v0, :cond_1

    .line 681
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 682
    const-string v0, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mScreenOffStart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    if-lez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->removeMessages(I)V

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 696
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    new-array v0, v3, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 697
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleAlarmToEnterOPSM()V

    goto/16 :goto_2

    .line 700
    :cond_2
    const-string v0, "OnePlusPowerController"

    const-string v5, "SCREEN is ON"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 704
    .local v0, "screenOffEnd":Ljava/time/LocalDateTime;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v5, :cond_7

    .line 705
    new-array v5, v3, [I

    aput v1, v5, v2

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 706
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 707
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->removeMessages(I)V

    goto :goto_0

    .line 709
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->releaseEarlyRestriction()V

    .line 715
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {v4, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 716
    .local v4, "duration":J
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off duration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget v6, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    sget v6, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 719
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mScreenOffStart: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v8, v9}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenOffEnd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-virtual {v6, v7, v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->addIdleItem(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    .line 724
    const-wide/16 v6, 0x0

    .line 725
    .local v6, "recordDuration":J
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v8

    .line 727
    .local v8, "last":Ljava/time/LocalDateTime;
    if-nez v8, :cond_5

    .line 728
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_1

    .line 730
    :cond_5
    invoke-static {v8, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Duration;->toMillis()J

    move-result-wide v6

    .line 733
    :goto_1
    const-string v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "record duration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    sget v9, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    int-to-long v9, v9

    cmp-long v9, v6, v9

    if-lez v9, :cond_7

    .line 737
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v9}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v9

    sget v10, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    const-wide/16 v11, 0x1388

    if-lt v9, v10, :cond_6

    .line 739
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 740
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 743
    .end local v9    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 744
    .restart local v9    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 750
    .end local v4    # "duration":J
    .end local v6    # "recordDuration":J
    .end local v8    # "last":Ljava/time/LocalDateTime;
    .end local v9    # "msg":Landroid/os/Message;
    :cond_7
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 752
    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 754
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v2, 0x1e6c

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 757
    .end local v0    # "screenOffEnd":Ljava/time/LocalDateTime;
    :cond_8
    :goto_2
    return-void
.end method

.method public onBootPhase(I)V
    .locals 11
    .param p1, "phase"    # I

    .line 515
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnePlusPowerController onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    const/16 v0, 0x258

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 517
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 518
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 525
    :cond_2
    const/16 v0, 0x1f4

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-ne p1, v0, :cond_3

    .line 526
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 527
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 528
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 529
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 530
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 531
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 532
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 533
    new-array v0, v1, [I

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->createNotificationChannel(Landroid/app/NotificationManager;)V

    .line 538
    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_7

    .line 540
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 543
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 544
    .local v0, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 547
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 548
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v5, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    new-array v5, v1, [I

    aput v2, v5, v3

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string/jumbo v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string/jumbo v2, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    :cond_4
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    .line 560
    const-string/jumbo v2, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string/jumbo v2, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v2, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v2, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    :cond_5
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 570
    const-string/jumbo v2, "{\"packageName\":\"net.oneplus.test_gms_wakelock\",\"tag\":\"TEST_GMS\"}"

    .line 572
    .local v2, "test_1":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 573
    .local v5, "json_1":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v5}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v5    # "json_1":Lorg/json/JSONObject;
    goto :goto_0

    .line 574
    :catch_0
    move-exception v5

    .line 575
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create an exclusive wakelock for testing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis;->start()V

    .line 579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/OnePlusPowerController;->mBootCompletedElapsedTime:J

    .line 582
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x107004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 587
    const-string/jumbo v5, "persist.vendor.fst.softap.en"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_6

    .line 588
    const-string v5, "bond0"

    .line 589
    .local v5, "defaultFstInterfaceName":Ljava/lang/String;
    const-string/jumbo v6, "persist.vendor.fst.data.interface"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "fstInterfaceName":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    aput-object v6, v1, v3

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 592
    .end local v5    # "defaultFstInterfaceName":Ljava/lang/String;
    .end local v6    # "fstInterfaceName":Ljava/lang/String;
    goto :goto_1

    .line 593
    :cond_6
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x107004f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 597
    :goto_1
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x107004b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 600
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    .line 601
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 602
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobSchedulerInternal;

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    .line 603
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 605
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "optimal_power_save_mode_activation"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/OnePlusPowerController;->mActivationCount:I

    .line 610
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "test_1":Ljava/lang/String;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_7
    return-void
.end method

.method onShellCommand(Lcom/android/server/OnePlusPowerController$Shell;Ljava/lang/String;)I
    .locals 16
    .param p1, "shell"    # Lcom/android/server/OnePlusPowerController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 2624
    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 2626
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v0, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onShellCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    const-string v0, "aggressive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 2628
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    monitor-enter p0

    .line 2632
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2633
    .local v7, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 2636
    .local v4, "arg":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2637
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2638
    .local v0, "option":Ljava/lang/String;
    const-string/jumbo v9, "on"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2639
    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "doze_mode_policy"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2641
    const-string v5, "Aggressive doze mode is on"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2642
    :cond_0
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2643
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "doze_mode_policy"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2645
    const-string v5, "Aggressive doze mode is off"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    .end local v0    # "option":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 2651
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2648
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAggressive="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2651
    :goto_1
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2652
    nop

    .line 2653
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    monitor-exit p0

    goto/16 :goto_2d

    .line 2651
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v7    # "token":J
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2653
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2654
    :cond_3
    const-string/jumbo v0, "log"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    monitor-enter p0

    .line 2658
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2659
    .restart local v7    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v0

    .line 2662
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 2663
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .restart local v0    # "option":Ljava/lang/String;
    const-string/jumbo v9, "on"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2665
    sput-boolean v5, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 2666
    sput-boolean v5, Lcom/android/server/OPLogger$Slog;->isLoggable:Z

    .line 2667
    const-string/jumbo v5, "log is on"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2668
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2669
    sput-boolean v6, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 2670
    sput-boolean v6, Lcom/android/server/OPLogger$Slog;->isLoggable:Z

    .line 2671
    const-string/jumbo v5, "log is off"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    .end local v0    # "option":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_4

    .line 2677
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 2674
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "log state: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2677
    :goto_4
    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2678
    nop

    .line 2679
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    monitor-exit p0

    goto/16 :goto_2d

    .line 2677
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v7    # "token":J
    :goto_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2679
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 2680
    :cond_7
    const-string/jumbo v0, "onlineconfig"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2681
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    monitor-enter p0

    .line 2684
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2685
    .restart local v7    # "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object v4, v0

    .line 2688
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 2689
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2690
    .restart local v0    # "option":Ljava/lang/String;
    const-string/jumbo v9, "on"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2691
    sput-boolean v5, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 2692
    const-string v5, "OnlineConfig is turned on"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 2693
    :cond_8
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2694
    sput-boolean v6, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    .line 2695
    const-string v5, "OnlineConfig is turned off"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    .end local v0    # "option":Ljava/lang/String;
    :cond_9
    :goto_6
    goto :goto_7

    .line 2701
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 2698
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnlineConfigEnabled: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/OnePlusPowerController;->mOnlineConfigEnabled:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2701
    :goto_7
    :try_start_8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2702
    nop

    .line 2703
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    monitor-exit p0

    goto/16 :goto_2d

    .line 2701
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v7    # "token":J
    :goto_8
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2703
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "token":J
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 2704
    :cond_b
    const-string/jumbo v0, "wakelocks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2705
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    monitor-enter p0

    .line 2708
    :try_start_9
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 2709
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getExclusiveWakeLock()Ljava/util/HashMap;

    move-result-object v0

    .line 2711
    .local v0, "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2712
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2713
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2714
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 2715
    .local v9, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    const-string/jumbo v10, "tags: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2718
    .local v12, "tag":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    .end local v12    # "tag":Ljava/lang/String;
    goto :goto_a

    .line 2720
    :cond_c
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2721
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_9

    .line 2722
    :cond_d
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2723
    .end local v0    # "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    monitor-exit p0

    goto/16 :goto_2d

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v0

    .line 2724
    :cond_e
    new-array v0, v5, [I

    const/16 v7, 0x50

    aput v7, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v8, 0x2

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "usersleep"

    .line 2725
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2726
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    monitor-enter p0

    .line 2729
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 2730
    .local v7, "arg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 2732
    .local v9, "token":J
    if-eqz v7, :cond_2b

    .line 2733
    :try_start_b
    const-string/jumbo v0, "log"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2734
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "option":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2736
    sput-boolean v5, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2737
    sput-boolean v5, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2738
    sput-boolean v5, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2739
    const-string v4, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    const-string v4, "OnePlusPowerController"

    const-string v5, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2742
    :cond_f
    sput-boolean v6, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2743
    sput-boolean v6, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2744
    sput-boolean v6, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2745
    const-string v4, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    const-string v4, "OnePlusPowerController"

    const-string v5, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    .end local v0    # "option":Ljava/lang/String;
    :goto_b
    goto/16 :goto_18

    :cond_10
    const-string/jumbo v0, "start"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x15be

    const/16 v12, 0x1e6c

    if-eqz v0, :cond_12

    .line 2749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2750
    .local v4, "optionDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2751
    .local v5, "optionTime":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-object v8, v0

    .line 2755
    .local v8, "dateFormat":Ljava/lang/String;
    :try_start_c
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v8, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2756
    .local v0, "ldt":Ljava/time/LocalDateTime;
    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2757
    const-string v13, "OnePlusPowerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mSleepStartOverridden: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    sget v13, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    if-ne v13, v12, :cond_11

    .line 2760
    invoke-virtual {v1, v0, v11}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    .line 2763
    :cond_11
    const-string v11, "User sleep time is overrided!"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 2766
    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    goto :goto_c

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    .local v0, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_d
    const-string v11, "Invalid date format!!!"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    .end local v0    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v4    # "optionDate":Ljava/lang/String;
    .end local v5    # "optionTime":Ljava/lang/String;
    .end local v8    # "dateFormat":Ljava/lang/String;
    :goto_c
    goto/16 :goto_18

    :cond_12
    const-string v0, "end"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2768
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2769
    .restart local v4    # "optionDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2770
    .restart local v5    # "optionTime":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v8, v0

    .line 2773
    .restart local v8    # "dateFormat":Ljava/lang/String;
    :try_start_e
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-static {v8, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 2775
    .local v0, "ldt":Ljava/time/LocalDateTime;
    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2776
    const-string v12, "OnePlusPowerController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mSleepEndOverridden: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    sget v12, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    if-ne v12, v11, :cond_13

    .line 2779
    invoke-virtual {v1, v0, v11}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    .line 2782
    :cond_13
    const-string v11, "User awake time is overrided!"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 2785
    .end local v0    # "ldt":Ljava/time/LocalDateTime;
    goto :goto_d

    .line 2783
    :catch_1
    move-exception v0

    .line 2784
    .local v0, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_f
    const-string v11, "Invalid date format!!!"

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    .end local v0    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v4    # "optionDate":Ljava/lang/String;
    .end local v5    # "optionTime":Ljava/lang/String;
    .end local v8    # "dateFormat":Ljava/lang/String;
    :goto_d
    goto/16 :goto_18

    :cond_14
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2787
    sput v12, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 2788
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v0, v12}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2789
    iput-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2790
    iput-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2791
    const v0, 0x44aa20

    sput v0, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2792
    const v0, 0x1b7740

    sput v0, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2793
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    goto/16 :goto_18

    .line 2794
    :cond_15
    const-string/jumbo v0, "timeoutAfterScreenOff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2796
    .local v0, "option":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 2797
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2799
    .local v4, "timeout":I
    if-ltz v4, :cond_16

    .line 2800
    sput v4, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTimeOutAfterScreenOff="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 2803
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    .end local v4    # "timeout":I
    :goto_e
    goto :goto_f

    .line 2806
    :cond_17
    const-string v4, "Option cannot be null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    .end local v0    # "option":Ljava/lang/String;
    :goto_f
    goto/16 :goto_18

    :cond_18
    const-string/jumbo v0, "timeoutBeforeUserAwake"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2809
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2810
    .restart local v0    # "option":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 2811
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2813
    .restart local v4    # "timeout":I
    if-ltz v4, :cond_19

    .line 2814
    sput v4, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTimeOutBeforeUserAwake="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    .line 2817
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    .end local v4    # "timeout":I
    :goto_10
    goto :goto_11

    .line 2820
    :cond_1a
    const-string v4, "Option cannot be null!"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    .end local v0    # "option":Ljava/lang/String;
    :goto_11
    goto/16 :goto_18

    :cond_1b
    const-string/jumbo v0, "opsm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2823
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2824
    .restart local v0    # "option":Ljava/lang/String;
    const-string v4, "enable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2825
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "optimal_power_save_mode_enabled"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    .line 2829
    :cond_1c
    const-string v4, "disable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2830
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "optimal_power_save_mode_enabled"

    const/4 v8, -0x1

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    .line 2835
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    .end local v0    # "option":Ljava/lang/String;
    :goto_12
    goto/16 :goto_18

    :cond_1e
    const-string/jumbo v0, "sensor"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2838
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2839
    .restart local v0    # "option":Ljava/lang/String;
    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2840
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_21

    .line 2841
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4}, Landroid/hardware/SensorManager;->leaveOPSM()V

    goto :goto_13

    .line 2843
    :cond_1f
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2844
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_21

    .line 2845
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4}, Landroid/hardware/SensorManager;->enterOPSM()V

    goto :goto_13

    .line 2848
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    const-string v4, "Please use on/off"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    .end local v0    # "option":Ljava/lang/String;
    :cond_21
    :goto_13
    goto/16 :goto_18

    :cond_22
    const-string/jumbo v0, "sensor_restrict"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2852
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2853
    .restart local v0    # "option":Ljava/lang/String;
    const-string v4, "enable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2854
    iput-boolean v5, v1, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    goto :goto_14

    .line 2855
    :cond_23
    const-string v4, "disable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2856
    iput-boolean v6, v1, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    goto :goto_14

    .line 2858
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SensorRestrict = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    .end local v0    # "option":Ljava/lang/String;
    :goto_14
    goto/16 :goto_18

    :cond_25
    const-string v0, "bluetooth"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2861
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2862
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_26

    .line 2863
    const-string v4, "No bluetooth service"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2867
    .local v4, "option":Ljava/lang/String;
    const-string v8, "enable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 2868
    iget-object v8, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "ble_scan_always_enabled"

    invoke-static {v8, v11, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2871
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_17

    .line 2872
    :cond_27
    const-string v8, "disable"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2873
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "ble_scan_always_enabled"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2876
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->disable(Z)Z

    goto :goto_17

    .line 2878
    :cond_28
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bluetooth = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_29

    const-string/jumbo v11, "on"

    goto :goto_15

    :cond_29
    const-string/jumbo v11, "off"

    :goto_15
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    iget-object v8, v1, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "ble_scan_always_enabled"

    invoke-static {v8, v11, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 2882
    .local v8, "state":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BluetoothBle = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v8, v5, :cond_2a

    const-string/jumbo v5, "on"

    goto :goto_16

    :cond_2a
    const-string/jumbo v5, "off"

    :goto_16
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "option":Ljava/lang/String;
    .end local v8    # "state":I
    :goto_17
    goto :goto_18

    .line 2889
    :catchall_7
    move-exception v0

    goto :goto_19

    .line 2886
    :cond_2b
    invoke-direct {v1, v3}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 2889
    :cond_2c
    :goto_18
    :try_start_10
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2890
    nop

    .line 2891
    .end local v7    # "arg":Ljava/lang/String;
    .end local v9    # "token":J
    monitor-exit p0

    goto/16 :goto_2d

    .line 2889
    .restart local v7    # "arg":Ljava/lang/String;
    .restart local v9    # "token":J
    :goto_19
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2891
    .end local v7    # "arg":Ljava/lang/String;
    .end local v9    # "token":J
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    .line 2892
    :cond_2d
    const-string/jumbo v0, "overheat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    monitor-enter p0

    .line 2896
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2897
    .local v4, "arg":Ljava/lang/String;
    if-eqz v4, :cond_3a

    .line 2898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 2900
    .local v7, "token":J
    :try_start_12
    const-string v0, "enable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2901
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, v5}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V

    goto/16 :goto_1c

    .line 2902
    :cond_2e
    const-string v0, "disable"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2903
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, v6}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V

    goto/16 :goto_1c

    .line 2904
    :cond_2f
    const-string/jumbo v0, "number"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2905
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2906
    .local v0, "num_arg":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorNum(I)V

    .line 2907
    .end local v0    # "num_arg":Ljava/lang/String;
    goto/16 :goto_1c

    :cond_30
    const-string/jumbo v0, "temper"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2908
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2909
    .local v0, "temp_arg":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorTemp(I)V

    .line 2910
    .end local v0    # "temp_arg":Ljava/lang/String;
    goto/16 :goto_1c

    :cond_31
    const-string/jumbo v0, "period"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2911
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "period_arg":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorPeriod(J)V

    .line 2913
    .end local v0    # "period_arg":Ljava/lang/String;
    goto/16 :goto_1c

    :cond_32
    const-string v0, "force-monitor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2914
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2915
    .local v0, "force_arg":Ljava/lang/String;
    const-string v9, "enable"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 2916
    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v9, v5}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto :goto_1a

    .line 2917
    :cond_33
    const-string v5, "disable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 2918
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5, v6}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto :goto_1a

    .line 2920
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: overheat force-monitor "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string v5, "Please enter overheat force-monitor [enable|disable]"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    .end local v0    # "force_arg":Ljava/lang/String;
    :goto_1a
    goto :goto_1c

    :cond_35
    const-string/jumbo v0, "monitor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2924
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2925
    .local v0, "monitor_arg":Ljava/lang/String;
    const-string/jumbo v5, "start"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2926
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis;->startMonitor()V

    goto :goto_1b

    .line 2927
    :cond_36
    const-string/jumbo v5, "update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2928
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis;->updateMonitor()V

    goto :goto_1b

    .line 2929
    :cond_37
    const-string v5, "end"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 2930
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis;->endMonitor()V

    goto :goto_1b

    .line 2932
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: overheat monitor "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string v5, "Please enter overheat monitor [start|update|end]"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    .end local v0    # "monitor_arg":Ljava/lang/String;
    :goto_1b
    goto :goto_1c

    .line 2936
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: overheat "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 2939
    :goto_1c
    :try_start_13
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    nop

    .line 2941
    .end local v7    # "token":J
    goto :goto_1d

    .line 2939
    .restart local v7    # "token":J
    :catchall_9
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2942
    .end local v7    # "token":J
    :cond_3a
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, v3}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 2943
    const-string v0, "**** OverHeat Diagnosis Records ****"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string v0, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v1, v3, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2947
    .end local v4    # "arg":Ljava/lang/String;
    :goto_1d
    monitor-exit p0

    goto/16 :goto_2d

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    throw v0

    .line 2949
    :cond_3b
    const-string/jumbo v0, "standby"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2950
    const-string v0, "**** Standby Diagnosis Records ****"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string v0, "/data/system/power/diagnosis_standby.txt"

    invoke-direct {v1, v3, v0}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 2952
    :cond_3c
    const-string v0, "deepsleepwhitelist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2953
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2954
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 2955
    const-string/jumbo v5, "update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2956
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 2957
    .end local v0    # "arg":Ljava/lang/String;
    .local v5, "arg":Ljava/lang/String;
    if-eqz v5, :cond_40

    .line 2958
    const-string v0, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deepsleepwhitelist update to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deepsleepwhitelist update to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2961
    .local v7, "split_pkg":[Ljava/lang/String;
    move v0, v6

    .line 2961
    .local v0, "i":I
    :goto_1e
    move v8, v0

    .line 2961
    .end local v0    # "i":I
    .local v8, "i":I
    array-length v0, v7

    if-ge v8, v0, :cond_3d

    .line 2963
    :try_start_14
    aget-object v0, v7, v8

    invoke-virtual {v1, v0}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_2

    .line 2966
    goto :goto_1f

    .line 2964
    :catch_2
    move-exception v0

    .line 2965
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1f
    add-int/lit8 v0, v8, 0x1

    .line 2961
    .end local v8    # "i":I
    .local v0, "i":I
    goto :goto_1e

    .line 2969
    .end local v0    # "i":I
    :cond_3d
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget-object v8, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v4, v0, v8}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 2970
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-interface {v0, v4}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 2971
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v0, v4}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    .line 2972
    .end local v7    # "split_pkg":[Ljava/lang/String;
    goto :goto_20

    .line 2973
    .end local v5    # "arg":Ljava/lang/String;
    .local v0, "arg":Ljava/lang/String;
    :cond_3e
    const-string v4, "get"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2974
    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeepSleepWhitelistAppIds:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WhitelistAppIdArray: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 2976
    :cond_3f
    const-string v4, "clean"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2978
    const-string v4, "OnePlusPowerController"

    const-string v5, "deepsleepwhitelist clean up to empty"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    new-array v5, v6, [I

    invoke-interface {v4, v5}, Lcom/android/server/AlarmManagerInternal;->setDeepSleepWhitelist([I)V

    .line 2980
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    new-array v5, v6, [I

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    .line 2983
    .end local v0    # "arg":Ljava/lang/String;
    :cond_40
    :goto_20
    goto/16 :goto_2d

    :cond_41
    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2985
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_47

    .line 2986
    const/4 v0, 0x0

    .line 2987
    .local v0, "enabled":Z
    const-string v5, "enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2988
    const/4 v0, 0x1

    .line 3002
    .end local v0    # "enabled":Z
    .local v5, "enabled":Z
    :goto_21
    move v5, v0

    goto :goto_22

    .line 2989
    .end local v5    # "enabled":Z
    .restart local v0    # "enabled":Z
    :cond_42
    const-string v5, "disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2990
    const/4 v0, 0x0

    goto :goto_21

    .line 3002
    .end local v0    # "enabled":Z
    .restart local v5    # "enabled":Z
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3004
    .local v7, "token":J
    :try_start_15
    const-string v0, "OnePlusPowerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiEnabled to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WiFi is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_43

    const-string v9, "enabled"

    goto :goto_23

    :cond_43
    const-string v9, "disabled"

    :goto_23
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3006
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 3008
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3009
    nop

    .line 3010
    .end local v5    # "enabled":Z
    .end local v7    # "token":J
    goto :goto_24

    .line 3008
    .restart local v5    # "enabled":Z
    .restart local v7    # "token":J
    :catchall_b
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2991
    .end local v5    # "enabled":Z
    .end local v7    # "token":J
    .restart local v0    # "enabled":Z
    :cond_44
    const-string/jumbo v5, "query"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 2992
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_45

    .line 2993
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 2994
    const-string v5, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mWifiManager.isWifiEnabled()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    :cond_45
    return v6

    .line 2998
    :cond_46
    const-string v5, "Unknown option"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2999
    return v6

    .line 3011
    .end local v0    # "enabled":Z
    :cond_47
    const-string v0, "Please enter wifi option. [enable|disable|query]"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3013
    .end local v4    # "arg":Ljava/lang/String;
    :goto_24
    goto/16 :goto_2d

    :cond_48
    const-string/jumbo v0, "tether"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3015
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_49

    .line 3016
    const-string v0, "Tethering is not supported"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    return v6

    .line 3020
    :cond_49
    iget-object v0, v1, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 3021
    .local v0, "tetheredIfaces":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 3022
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_4f

    .line 3023
    const/4 v7, 0x0

    .line 3024
    .local v7, "enabled":Z
    const-string v9, "enable"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 3025
    const/4 v7, 0x1

    goto :goto_25

    .line 3026
    :cond_4a
    const-string v9, "disable"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 3027
    const/4 v7, 0x0

    .line 3036
    :goto_25
    if-ne v7, v5, :cond_4b

    .line 3038
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v5, v6, v6, v9}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 3039
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v9, v1, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v5, v8, v6, v9}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto :goto_27

    .line 3042
    :cond_4b
    array-length v5, v0

    move v8, v6

    :goto_26
    if-ge v8, v5, :cond_4c

    aget-object v9, v0, v8

    .line 3043
    .local v9, "s":Ljava/lang/String;
    invoke-direct {v1, v9}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v10

    .line 3044
    .local v10, "type":I
    const-string v11, "OnePlusPowerController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tether interface = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", type = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    iget-object v11, v1, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v9}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 3042
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "type":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 3049
    .end local v7    # "enabled":Z
    :cond_4c
    :goto_27
    goto :goto_28

    .line 3028
    .restart local v7    # "enabled":Z
    :cond_4d
    const-string/jumbo v5, "query"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 3029
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    return v6

    .line 3032
    :cond_4e
    const-string v5, "Unknown option"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    return v6

    .line 3050
    .end local v7    # "enabled":Z
    :cond_4f
    const-string v5, "Please enter tether option. [enable|disable|query]"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    .end local v0    # "tetheredIfaces":[Ljava/lang/String;
    .end local v4    # "arg":Ljava/lang/String;
    :goto_28
    goto/16 :goto_2d

    :cond_50
    const-string v0, "data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3053
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3054
    .local v0, "arg":Ljava/lang/String;
    if-eqz v0, :cond_55

    .line 3055
    const/4 v4, 0x0

    .line 3056
    .local v4, "enabled":Z
    const-string v5, "enable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 3057
    const/4 v4, 0x1

    goto :goto_29

    .line 3058
    :cond_51
    const-string v5, "disable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3059
    const/4 v4, 0x0

    .line 3068
    :goto_29
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    .line 3069
    .local v5, "isDataEnabled":Z
    const-string v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isDataEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", setDataEnabled to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_52

    const-string v8, "enabled"

    goto :goto_2a

    :cond_52
    const-string v8, "disabled"

    :goto_2a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    iget-object v7, v1, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 3072
    .end local v4    # "enabled":Z
    .end local v5    # "isDataEnabled":Z
    goto :goto_2b

    .line 3060
    .restart local v4    # "enabled":Z
    :cond_53
    const-string/jumbo v5, "query"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 3061
    iget-object v5, v1, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 3062
    const-string v5, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TelephonyManager.getDataEnabled()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return v6

    .line 3065
    :cond_54
    const-string v5, "Unknown option"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    return v6

    .line 3073
    .end local v4    # "enabled":Z
    :cond_55
    const-string v4, "Please enter data option. [enable|disable|query]"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    .end local v0    # "arg":Ljava/lang/String;
    :goto_2b
    goto :goto_2d

    :cond_56
    new-array v0, v5, [I

    aput v7, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string/jumbo v0, "test"

    .line 3076
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3077
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_59

    .line 3078
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 3079
    .restart local v0    # "arg":Ljava/lang/String;
    if-eqz v0, :cond_58

    .line 3080
    const-string/jumbo v4, "notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 3081
    iget-object v4, v1, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2c

    .line 3083
    :cond_57
    const-string v4, "Unknown option"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    return v6

    .line 3087
    :cond_58
    const-string v4, "Please enter data option. [enable|disable|query]"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    .end local v0    # "arg":Ljava/lang/String;
    :goto_2c
    nop

    .line 3093
    :cond_59
    :goto_2d
    return v6

    .line 3091
    :cond_5a
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/OnePlusPowerController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 507
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    const-string v1, "OnePlusPowerController onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    new-instance v0, Lcom/android/server/OnePlusPowerController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    .line 509
    const-string/jumbo v0, "powercontrol"

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    const-class v0, Lcom/android/server/OnePlusPowerController$LocalService;

    new-instance v1, Lcom/android/server/OnePlusPowerController$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/OnePlusPowerController$LocalService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 511
    return-void
.end method

.method releaseEarlyRestriction()V
    .locals 3

    .line 3475
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3476
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    if-nez v1, :cond_0

    .line 3477
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 3478
    monitor-exit v0

    return-void

    .line 3481
    :cond_0
    const-string v1, "OnePlusPowerController"

    const-string/jumbo v2, "releaseEarlyRestriction"

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setWakeLockRestriction(Z)Z

    .line 3483
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mLocalJobScheduler:Lcom/android/server/job/JobSchedulerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/job/JobSchedulerInternal;->setJobRestriction(Z)V

    .line 3484
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v1, v2}, Lcom/android/server/AlarmManagerInternal;->setAlarmRestriction(Z)V

    .line 3486
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mEarlyRestrictionEnabled:Z

    .line 3487
    monitor-exit v0

    .line 3488
    return-void

    .line 3487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method restoreNetwork()V
    .locals 3

    .line 3441
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3444
    const-string v0, "OnePlusPowerController"

    const-string v2, "Restore wifi scan"

    invoke-static {v0, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-ne v0, v1, :cond_1

    .line 3449
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3450
    const-string v0, "OnePlusPowerController"

    const-string v2, "Restore wifi network"

    invoke-static {v0, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    if-ne v0, v1, :cond_2

    .line 3455
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v1, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 3456
    const-string v0, "OnePlusPowerController"

    const-string v1, "Restore data network"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :cond_2
    return-void
.end method

.method restrictNetwork()V
    .locals 5

    .line 3411
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 3414
    const-string v0, "OnePlusPowerController"

    const-string v3, "Disable data network"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3416
    :cond_0
    const-string v0, "OnePlusPowerController"

    const-string v3, "Data network is disabled"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    :goto_0
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-ne v0, v2, :cond_1

    .line 3422
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 3423
    const-string v0, "OnePlusPowerController"

    const-string v3, "Disable wifi network"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3425
    :cond_1
    const-string v0, "OnePlusPowerController"

    const-string v3, "Wifi network is disabled"

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    :goto_1
    const-string v0, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi Scan state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    if-ne v0, v2, :cond_2

    .line 3431
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3433
    const-string v0, "OnePlusPowerController"

    const-string v1, "Disable wifi scan"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3435
    :cond_2
    const-string v0, "OnePlusPowerController"

    const-string v1, "Wifi scan is disabled"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :goto_2
    return-void
.end method

.method scheduleAlarmToEnterOPSM()V
    .locals 10

    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 769
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 773
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 774
    .local v3, "now":J
    sget v5, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    .line 777
    .local v5, "next":J
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v2, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 780
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v2, :cond_1

    .line 781
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 783
    .local v2, "date":Ljava/util/Date;
    const-string v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule next alarm  @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 784
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for OPSM check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 783
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v2    # "date":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method scheduleNextAlarmIfNeededLocked()V
    .locals 4

    .line 793
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    if-nez v0, :cond_0

    return-void

    .line 794
    :cond_0
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x1e6c

    const/16 v2, 0x15be

    if-ne v0, v2, :cond_3

    .line 796
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_1

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 801
    .local v0, "sleepEnd":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_2

    .line 802
    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_0

    .line 804
    :cond_2
    const-string v1, "OnePlusPowerController"

    const-string v2, "failed to scheudle the alarm for sleep end"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v0    # "sleepEnd":Ljava/time/LocalDateTime;
    :goto_0
    goto :goto_1

    .line 808
    :cond_3
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    if-ne v0, v1, :cond_6

    .line 809
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v0, :cond_4

    .line 810
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_1

    .line 812
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 813
    .local v0, "sleepStart":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_5

    .line 814
    invoke-virtual {p0, v0, v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_1

    .line 816
    :cond_5
    const-string v1, "OnePlusPowerController"

    const-string v2, "failed to scheudle the alarm for sleep start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    .end local v0    # "sleepStart":Ljava/time/LocalDateTime;
    :cond_6
    :goto_1
    return-void
.end method

.method scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V
    .locals 6
    .param p1, "date"    # Ljava/time/LocalDateTime;
    .param p2, "state"    # I

    .line 826
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 831
    .local v1, "pending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 832
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J

    move-result-wide v4

    .line 831
    invoke-virtual {v3, v2, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 834
    sget-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v2, :cond_1

    .line 836
    sget v2, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v3, 0x15be

    if-ne v2, v3, :cond_0

    .line 837
    const-string v2, "END"

    .line 837
    .local v2, "reason":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v2    # "reason":Ljava/lang/String;
    :cond_0
    const-string v2, "START"

    .line 841
    .restart local v2    # "reason":Ljava/lang/String;
    :goto_0
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule next alarm  @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 842
    invoke-virtual {p1, v5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    .end local v2    # "reason":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method setMccMncValue(Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 617
    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 619
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 621
    :cond_0
    return-void
.end method

.method shutdownLocked()V
    .locals 1

    .line 673
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 674
    return-void
.end method
