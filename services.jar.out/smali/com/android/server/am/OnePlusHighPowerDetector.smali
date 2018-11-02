.class public Lcom/android/server/am/OnePlusHighPowerDetector;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;,
        Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;,
        Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;,
        Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;,
        Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;
    }
.end annotation


# static fields
.field private static final ACTION_FORCE_STOP_HIGH_PKG:Ljava/lang/String; = "com.oem.intent.action.force_stop_high_pkg"

.field private static final ACTION_FORCE_STOP_PKG:Ljava/lang/String; = "com.oem.intent.action.force_stop_pkg"

.field private static final ACTION_TEST:Ljava/lang/String; = "ohpd.action.test"

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field private static AID_CAMERASERVER:I = 0x0

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field static APP_CONT_BUSY_TIME_THOLD:I = 0x0

.field static APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I = 0x0

.field static APP_LAST_FOREGROUND_TIME_THRESHOLD:I = 0x0

.field private static BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String; = null

.field static BGC_APP_LAST_FOREGROUND_TIME_THRESHOLD:I = 0x0

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I = null

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I = null

.field static BG_DETECTION_NETWORK_USAGE_THRESHOLD:I = 0x0

.field public static final CAMERA_MONITOR_DELAY:J = 0x2710L

.field public static final CHECK_CUSTOMIZED_NOTIFICATION_MSG:I = 0xd6dd

.field public static final CHECK_EXCESSIVE_CPU_DEFAULT_MSG:I = 0xd6d8

.field public static final CHECK_EXCESSIVE_CPU_MODE1_MSG:I = 0xd6d9

.field public static final CHECK_EXCESSIVE_CPU_MODE2_MSG:I = 0xd6da

.field public static final CHECK_EXCESSIVE_CPU_MODE3_MSG:I = 0xd6de

.field public static final CHECK_IF_NOTIFICATION_EXISTED_MSG:I = 0xd6e5

.field public static final CLEANUP_PACKAGE_RECORD_MSG:I = 0xd6dc

.field static CPU_CHECK_DELAY:[I = null

.field static CPU_MIN_CHECK_DURATION:I = 0x0

.field public static DEBUG:Z = false

.field static DEBUG_BGC:Z = false

.field static DEBUG_BG_USAGE_QUICK:Z = false

.field static DEBUG_LIGHTIDLE:Z = false

.field private static final DEFAULT_POLICY:I = 0x0

.field private static DEVICE_TEMP_PATH:Ljava/lang/String; = null

.field public static ENABLE:Z = false

.field private static FORCE_HANDLE_SKIP_APP:Z = false

.field public static final FORCE_STOP_PKG_MSG:I = 0xd6e0

.field public static final GET_ONLINECONFIG:I = 0xd6e4

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector; = null

.field public static final LIGHTIDLE_PROCESSKILL_MSG:I = 0xd6e2

.field public static final LIGHTIDLE_RXTX_DELAY:J = 0x7530L

.field public static final LIGHTIDLE_UPDATEPROC_RXTX_WHEN_SCREENOFF_MSG:I = 0xd6e3

.field public static final MDM_DATA_PROC_CPU_USAGE:Ljava/lang/String; = "cpu_usage"

.field public static final MDM_DATA_PROC_HANDLED:Ljava/lang/String; = "handled"

.field public static final MDM_DATA_PROC_NAME:Ljava/lang/String; = "proc"

.field public static final MDM_EVENT:Ljava/lang/String; = "camera_proc_busy"

.field public static final MDM_NATIVE_EVENT:Ljava/lang/String; = "native_proc_busy"

.field public static final MDM_NATIVE_SUBMIT_MSG:I = 0xd6e8

.field public static final MDM_SUBMIT_MSG:I = 0xd6e6

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MILLIS_PER_HOUR:J = 0x36ee80L

.field static final MODE_MSGS:[I

.field public static final MONITOR_CAMERA_WHEN_SCREENOFF_MSG:I = 0xd6e7

.field private static MONITOR_RESET:I = 0x0

.field private static final NOTIFICATION_CANCEL_ACTION:Ljava/lang/String; = "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

.field static NOTIFY_INTERVAL:J = 0x0L

.field public static final NOTIFY_PD_MSG:I = 0xd6df

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field static ONLINE_CONFIG:Z = false

.field private static final PARALLEL_APP_USER_ID:I = 0x3e7

.field public static final POST_HIGH_NOTIFICATION_MSG:I = 0xd6e1

.field public static final POST_MEDIUM_NOTIFICATION_MSG:I = 0xd6db

.field static POWER_DRAIN_TEMP_THOLD:I = 0x0

.field static POWER_DRAIN_USG_THOLD:I = 0x0

.field private static final PROP_BGC_DEBUG_ON:Ljava/lang/String; = "persist.sys.ohpd.bgc_debug"

.field private static final PROP_BGC_FEATURE:Ljava/lang/String; = "persist.sys.bgc"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final PROP_DEBUG_BG_USAGE_QUICK:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.ohpd.flags"

.field private static final PROP_FORCE_HANDLE_SKIP_APP:Ljava/lang/String; = "persist.sys.ohpd.skip.on"

.field private static final PROP_KILL_ON:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field private static final PROP_LIGHTIDLE_DEBUG_ON:Ljava/lang/String; = "persist.sys.ohpd.idle_debug"

.field private static final PROP_NOTIFY_INTERVAL:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field private static final PROP_ONLINE_CONFIG:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field private static final PROP_POWER_DRAIN_SCREEN_OFF_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.off.lastfg"

.field private static final PROP_POWER_DRAIN_SCREEN_ON_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.on.lastfg"

.field private static final PROP_POWER_DRAIN_TEMP_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field private static final PROP_POWER_DRAIN_USG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field private static final PROP_RNK_USG_THOLD_MEDIUM:Ljava/lang/String; = "persist.sys.ohpd.rnk.med.usg"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_THRESHOLD:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field static RNK_ON:Z = false

.field static RNK_USG_THOLD_MEDIUM:I = 0x0

.field static SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I = 0x0

.field static SCREEN_ON_PD_LAST_FG_TIME_THOLD:I = 0x0

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final TAG:Ljava/lang/String; = "OHPD"

.field public static final VERSION:I = 0x103b975

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mCameraLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mEnableHandleSkipApps:Z

.field private static mEnableKillBusyCameraProc:Z

.field private static mEnableKillBusyGMSProcess:Z

.field private static mEnableMonitorCameraProc:Z

.field private static mGlobalFlags:I

.field private static mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

.field private static mIsBetaRom:Z

.field private static mIsPreciseDevTemp:Z

.field private static mIsScreenOn:Z

.field private static mKillMechanism:Z

.field private static mRegion:Ljava/lang/String;

.field static sBattUpdteLock:Ljava/lang/Object;

.field static sConfigLock:Ljava/lang/Object;


# instance fields
.field private BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

.field private blackAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackExAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gmsMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private killProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level0KillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppForkedProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field mBGCUidArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mBGCUsingTrafficUidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mBatteryDropCriteria:I

.field mBatteryLevelOfStart:I

.field mBgDetectStartMonitoring:Z

.field private mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

.field private mCameraProcName:Ljava/lang/String;

.field mCurNotifyHighPkgKey:Ljava/lang/String;

.field mCurNotifyHighPkgKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurNotifyPkgKey:Ljava/lang/String;

.field mCurNotifyPkgKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEverLightIdleBGCCheck:Z

.field private mEverLightIdleCameraCheck:Z

.field private mEverLightIdleCheck:Z

.field private mFakeTestEnabled:Z

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

.field mHighPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHighPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBGCFeatureEnabled:Z

.field mIsNativeMonitorStart:Z

.field mIsObserveAbn:Z

.field mIsPowerDrain:Z

.field mLastActiveAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastBatteryDropTime:J

.field mLastBatteryPercent:I

.field mLastBgDetectCleanUpTime:J

.field private mLastCameraProcUsage:J

.field mLastCpuCheckUptime:[J

.field mLastDevTemp:I

.field private mLastGmsProcUsage:J

.field mMaxNativeMonitorCount:I

.field mMediumPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mMediumPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorStartTime:J

.field mNativeMonitorCount:I

.field mNativeMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNativeProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;",
            ">;"
        }
    .end annotation
.end field

.field mNativeUsageCriteria:I

.field mNotifyPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

.field mPendingNativeRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private mWidgetPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWorkingForkedPidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWorkingNativePidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sepicalNativeProcessMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private whiteAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whiteBGCAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    const-string/jumbo v1, "persist.sys.ohpd.idle_debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    const-string/jumbo v1, "persist.sys.ohpd.bgc_debug"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BGC:Z

    const-string/jumbo v1, "persist.sys.ohpd.debug.bg"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    const-string/jumbo v1, "persist.sys.ohpd.notify"

    const-wide/32 v3, 0x36ee80

    invoke-static {v1, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    const-string/jumbo v1, "persist.sys.ohpd.onlineconfig"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    const/16 v3, 0x3c

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0xb4

    :goto_0
    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    const/16 v4, 0x12c

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->BGC_APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    const v1, 0x1b7740

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    const v1, 0x493e0

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    const/16 v1, 0x14

    :goto_4
    mul-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    const/4 v1, 0x4

    new-array v6, v1, [I

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move v7, v4

    :goto_5
    mul-int/lit16 v7, v7, 0x3e8

    aput v7, v6, v2

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v6, v0

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    const/16 v4, 0x78

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    const/16 v3, 0x258

    :goto_7
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v6, v5

    const/4 v3, 0x3

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    const/16 v4, 0x4b0

    :goto_8
    mul-int/lit16 v4, v4, 0x3e8

    aput v4, v6, v3

    sput-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    new-array v3, v1, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/high16 v1, 0x1400000

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    const/16 v1, 0x2c

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    const-string v1, "/sys/class/thermal/thermal_zone27/temp"

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    const/16 v1, 0x417

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->AID_CAMERASERVER:I

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    const/4 v1, -0x1

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    const-string v1, ""

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    const-string v0, "BackgroundDetection"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0xd6d8
        0xd6d9
        0xd6da
        0xd6de
    .end array-data

    :array_1
    .array-data 4
        0x3e8
        0x14
        0xf
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x14
        0xf
        0xa
        0x14
    .end array-data
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I

    const/4 v3, 0x4

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    const-string/jumbo v3, "persist.sys.bgc"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    const-string v3, "android.hardware.camera.provider@2.4-service"

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    const/16 v3, 0x50

    iput v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryDropCriteria:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMaxNativeMonitorCount:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$1;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "persist.sys.ohpd.enable"

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    const-string/jumbo v1, "persist.sys.ohpd.debug"

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    const-string/jumbo v1, "ro.build.beta"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    if-nez v1, :cond_1

    const-string v0, "OHPD"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "OnePlusHighPowerDetector--constructor"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    new-instance v1, Lcom/android/server/SystemEventCollector;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v3, "HighPowerDetector"

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemEventCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    new-instance v1, Lcom/android/server/am/OnePlusBGController;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/OnePlusBGController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    new-array v1, v4, [I

    const/16 v2, 0x5b

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OP_FEATURE_BGC enabled, disable RNK_ON"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    goto :goto_1

    :cond_2
    const-string v1, "OP_FEATURE_BGC disabled, enable RNK_ON"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->init()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->dumpOther()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/am/OnePlusHighPowerDetector;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    return-wide p1
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->dumpLruProcess()V

    return-void
.end method

.method private checkAbnBgKillLocked()V
    .locals 37

    move-object/from16 v7, p0

    const-string v0, "OHPD"

    const-string v1, "[BGC] checkAbnBgKillLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-wide/from16 v19, v8

    goto/16 :goto_1c

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v12

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v13

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] visibleUids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x0

    if-eqz v14, :cond_1

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_1
    move-object v15, v0

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active audio :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->getStepCounterActiveUids()Ljava/lang/String;

    move-result-object v6

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active step counter uids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] locked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    const/16 v16, 0x0

    if-eqz v0, :cond_4

    iget-object v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v2, v16

    :goto_0
    move-object/from16 v17, v5

    :try_start_1
    iget-object v5, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v14

    :try_start_2
    iget-object v14, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v19, v8

    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "F"

    goto :goto_1

    :cond_2
    const-string v9, "K"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "], "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v17

    move-object/from16 v14, v18

    move-wide/from16 v8, v19

    goto :goto_0

    :catchall_0
    move-exception v0

    move-wide/from16 v19, v8

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v8

    move-object/from16 v18, v14

    const-string v2, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] mBGCUidArray :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide/from16 v19, v8

    move-object/from16 v18, v14

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    move-wide/from16 v19, v8

    move-object/from16 v18, v14

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_4
    move-object/from16 v17, v5

    move-wide/from16 v19, v8

    move-object/from16 v18, v14

    :goto_3
    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    iget-object v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const-string v2, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_5

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v8

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] currentIME :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    sget-object v14, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v21, v0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    move/from16 v22, v0

    if-lez v22, :cond_18

    add-int/lit8 v0, v22, -0x1

    move-object/from16 v23, v1

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    sget-boolean v22, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    if-eqz v22, :cond_7

    :try_start_6
    sget-boolean v22, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BGC:Z

    if-eqz v22, :cond_7

    move-object/from16 v24, v2

    const-string v2, "OHPD"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v25, v9

    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-wide/from16 v26, v10

    :try_start_8
    const-string v10, "[BGC] i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", iso="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", pkg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", app.info.uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", f=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isSys="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v7, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isMulti="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v7, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->isMultiArch(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", sN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_1b

    :catch_0
    move-exception v0

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_19

    :catchall_6
    move-exception v0

    move-wide/from16 v26, v10

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    move-wide/from16 v26, v10

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_19

    :catchall_7
    move-exception v0

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_1b

    :catch_2
    move-exception v0

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_19

    :cond_7
    move-object/from16 v24, v2

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    :goto_7
    :try_start_9
    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    nop

    :goto_8
    move/from16 v28, v0

    :goto_9
    move-object v9, v4

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    move-object/from16 v11, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v3

    move-object v12, v5

    move-object/from16 v24, v6

    goto/16 :goto_f

    :cond_8
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-nez v2, :cond_9

    :try_start_a
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v7, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v7, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "proc "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") sys pkg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v2, v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :cond_9
    :try_start_b
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v2, :cond_a

    :try_start_c
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(pid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") locked"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v2, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_a
    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(pid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") active audio"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v2, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    if-eqz v6, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v10, 0xb

    if-gt v2, v10, :cond_c

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(pid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") active pedometer sensor. Procstat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v2, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_c
    if-eqz v12, :cond_e

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v28, v0

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v0, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v11, "has alert window"

    invoke-virtual {v7, v5, v0, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_b

    :cond_d
    nop

    :goto_b
    move/from16 v0, v28

    goto :goto_a

    :cond_e
    move/from16 v28, v0

    :try_start_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-lez v0, :cond_10

    :try_start_e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v11, :cond_f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "has visible window"

    invoke-virtual {v7, v5, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_c

    :cond_f
    goto :goto_c

    :cond_10
    if-eqz v8, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "proc "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") current IME"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto/16 :goto_9

    :cond_11
    :try_start_f
    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    if-eqz v0, :cond_12

    :try_start_10
    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_12

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "proc "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") current using network"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v5, v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_9

    :cond_12
    :try_start_11
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v2, v10, v11}, Lcom/android/server/am/OnePlusBGController;->needCheckProc(II)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-nez v2, :cond_15

    :try_start_12
    invoke-virtual {v7, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v7, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v7, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_d

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "proc "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") stat "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5, v2, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BGC] 2. Skip due to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_14
    move-object v9, v4

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    move-object/from16 v11, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v3

    move-object v12, v5

    move-object/from16 v24, v6

    goto :goto_e

    :cond_15
    :goto_d
    :try_start_13
    sget v10, Lcom/android/server/am/OnePlusHighPowerDetector;->BGC_APP_LAST_FOREGROUND_TIME_THRESHOLD:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object v2, v1

    move-object/from16 v11, v23

    move-object v1, v7

    move-object/from16 v30, v2

    move-object/from16 v29, v8

    move-object/from16 v8, v24

    move-object/from16 v23, v3

    move/from16 v31, v9

    move-object v9, v4

    move-wide/from16 v3, v26

    move-object/from16 v32, v12

    move-object v12, v5

    move-object v5, v0

    move-object/from16 v24, v6

    move v6, v10

    :try_start_14
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheckForBGCAbn(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v1, :cond_16

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] 1. Skip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v1, v30

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v12, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_f

    :cond_17
    move-object/from16 v1, v30

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    nop

    :goto_f
    move-object v2, v8

    move-object v4, v9

    move-object v1, v11

    move-object v5, v12

    move-object/from16 v3, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-wide/from16 v10, v26

    move/from16 v0, v28

    move-object/from16 v8, v29

    move-object/from16 v12, v32

    goto/16 :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v23, v3

    move-object v9, v4

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v32, v12

    goto/16 :goto_19

    :cond_18
    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-object/from16 v32, v12

    move-object v11, v1

    move-object v8, v2

    move-object v9, v4

    move-object v12, v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1d

    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_19

    goto :goto_10

    :cond_19
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    invoke-virtual {v7, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-virtual {v7, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->isForkedProcInBGCWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z

    move-result v5

    if-eqz v5, :cond_1b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] skip forked fproc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), reason= white list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_10

    :cond_1b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    monitor-exit v2

    goto :goto_11

    :catchall_9
    move-exception v0

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    throw v0

    :cond_1d
    :goto_11
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_1e

    move/from16 v0, v16

    :goto_12
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", skipped reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_1f

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", skipped reason=no running proc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move/from16 v2, v16

    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v5, v21

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v7, v10, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    const-string v10, "OHPD"

    move/from16 v33, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v34, v6

    const-string v6, "[BGC]force stop "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_20
    move/from16 v33, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] kill "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_15

    :cond_21
    move-object/from16 v5, v21

    :cond_22
    :goto_15
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v21, v5

    goto/16 :goto_14

    :cond_23
    move-object/from16 v5, v21

    :goto_16
    move/from16 v2, v16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v6, :cond_24

    iget-object v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_24
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    move-object/from16 v35, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v1

    const-string v1, "[BGC] kill forked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v10, v4, v0}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_17

    :cond_25
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    :goto_17
    add-int/lit8 v16, v2, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    goto :goto_16

    :cond_26
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_29

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_28

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_27

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] notify killed pkg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/OnePlusAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    goto :goto_18

    :cond_28
    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0, v11}, Lcom/android/server/am/OnePlusBGController;->resetKillUidBudgets(Ljava/util/HashSet;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :cond_29
    goto :goto_1a

    :catch_4
    move-exception v0

    goto :goto_19

    :catchall_a
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-object/from16 v32, v12

    move-object v9, v4

    goto :goto_1b

    :catch_5
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v24, v6

    move-object/from16 v29, v8

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-object/from16 v32, v12

    move-object v9, v4

    :goto_19
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    monitor-exit v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] checkAbnBgKillLocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void

    :catchall_b
    move-exception v0

    :goto_1b
    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_2b
    move-wide/from16 v19, v8

    :goto_1c
    return-void
.end method

.method private checkExcessiveCpuUsageLocked(II)I
    .locals 155

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExcessiveCpuUsageLocked # level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minCheckDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object/from16 v25, v0

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v18, v0, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_81

    move/from16 v26, v9

    move-object/from16 v27, v10

    const-wide/16 v9, 0x0

    cmp-long v0, v18, v9

    const/4 v7, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    :try_start_1
    new-array v0, v9, [I

    const/16 v10, 0xe

    aput v10, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    move-object v9, v8

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    :goto_0
    move-object/from16 v27, v11

    goto/16 :goto_b3

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :cond_2
    move v10, v1

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide/from16 v30, v0

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v0, v0, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_80

    move-object/from16 v32, v8

    sub-long v7, v30, v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7f

    move/from16 v35, v10

    :try_start_4
    iget-wide v9, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7e

    const-wide/16 v18, 0x0

    cmp-long v9, v9, v18

    if-nez v9, :cond_3

    :try_start_5
    iput-wide v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    :goto_2
    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move/from16 v1, v35

    goto :goto_0

    :cond_3
    :try_start_6
    iget-wide v9, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7e

    sub-long v9, v0, v9

    const-wide/32 v18, 0x5265c00

    cmp-long v9, v9, v18

    if-lez v9, :cond_4

    :try_start_7
    iput-wide v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_3
    int-to-long v9, v13

    cmp-long v9, v7, v9

    move/from16 v36, v3

    move-object/from16 v37, v4

    if-gez v9, :cond_5

    :try_start_8
    const-string v9, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v7, v3

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " secs critical "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    aget v3, v3, v14

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-wide/from16 v40, v0

    int-to-long v0, v13

    sub-long/2addr v0, v7

    const-wide/16 v18, 0xbb8

    add-long v0, v0, v18

    invoke-virtual {v9, v4, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    return v0

    :catchall_2
    move-exception v0

    move/from16 v47, v2

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x3e8

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v6, -0x2

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v38, 0x22

    const/4 v13, 0x3

    if-ne v14, v13, :cond_7

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v13, 0x0

    aput v38, v4, v13

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    iget-object v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v4, v3}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual {v3, v13}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[BgDetect] get app rank in "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v45, v0

    move-object/from16 v44, v1

    sub-long v0, v20, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v46, v0

    const-string v0, "[BgDetect] alertWindowUid "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    nop

    move-object/from16 v0, v46

    goto :goto_4

    :cond_6
    move-object/from16 v46, v0

    move-object v13, v4

    move-object/from16 v3, v46

    goto :goto_5

    :cond_7
    move-object/from16 v45, v0

    move-object/from16 v44, v1

    move-object/from16 v13, v37

    move-object/from16 v3, v45

    :goto_5
    if-nez v14, :cond_d

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp(ZLjava/lang/String;)I

    move-result v0

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-eqz v4, :cond_8

    :try_start_b
    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    if-lt v0, v4, :cond_8

    iget v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move/from16 v47, v2

    :try_start_c
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-lt v4, v2, :cond_9

    const/4 v2, 0x1

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v49, v3

    move/from16 v3, v36

    :goto_6
    move/from16 v2, v47

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move/from16 v47, v2

    move-object/from16 v49, v3

    move/from16 v3, v36

    goto/16 :goto_d

    :cond_8
    move/from16 v47, v2

    :cond_9
    move/from16 v2, v36

    :goto_7
    :try_start_d
    iput v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    if-eqz v4, :cond_a

    :try_start_e
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object/from16 v49, v3

    move v3, v2

    goto :goto_6

    :cond_a
    :goto_8
    :try_start_f
    iget-boolean v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-nez v4, :cond_c

    :try_start_10
    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-lt v0, v4, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v48, v2

    move-object/from16 v49, v3

    move/from16 v2, v47

    goto :goto_a

    :cond_c
    :goto_9
    :try_start_11
    const-string v4, "OHPD"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move/from16 v48, v2

    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v49, v3

    :try_start_13
    const-string v3, "[BgDetect] Batt drain triggered , curr temp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    const/4 v0, 0x1

    move v2, v0

    :goto_a
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move v3, v2

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_b
    move/from16 v3, v48

    goto :goto_d

    :catchall_7
    move-exception v0

    move/from16 v2, v47

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v49, v3

    move/from16 v2, v47

    move/from16 v3, v48

    goto :goto_c

    :catchall_9
    move-exception v0

    move/from16 v48, v2

    move-object/from16 v49, v3

    move/from16 v2, v47

    move/from16 v3, v48

    goto :goto_d

    :catchall_a
    move-exception v0

    move-object/from16 v49, v3

    move v3, v2

    move/from16 v2, v47

    :goto_c
    goto :goto_d

    :catchall_b
    move-exception v0

    move/from16 v47, v2

    move-object/from16 v49, v3

    move/from16 v3, v36

    :goto_d
    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_d

    :cond_d
    move/from16 v47, v2

    move-object/from16 v49, v3

    move/from16 v48, v36

    move/from16 v3, v47

    :goto_e
    sget-object v33, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v33

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aput-wide v30, v0, v14

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect]chkExcessCpu level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doKills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7b

    move/from16 v4, v35

    :try_start_17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " critical "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v50, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v51, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v52, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v53, v0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7a

    move-object/from16 v54, v0

    if-nez v14, :cond_e

    move-object/from16 v55, v2

    :try_start_18
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :try_start_19
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2

    goto :goto_10

    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    throw v0

    :catchall_e
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object v14, v5

    :goto_f
    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :cond_e
    move-object/from16 v55, v2

    :goto_10
    const/4 v2, 0x1

    if-ne v14, v2, :cond_f

    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :try_start_1b
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2

    goto :goto_11

    :catchall_f
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    :try_start_1c
    throw v0

    :cond_f
    :goto_11
    const/4 v2, 0x2

    if-ne v14, v2, :cond_10

    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :try_start_1d
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2

    goto :goto_12

    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    :try_start_1e
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    :cond_10
    :goto_12
    :try_start_1f
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_87
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7a

    :goto_13
    move/from16 v18, v0

    const-wide/16 v19, 0x64

    if-lez v18, :cond_38

    add-int/lit8 v2, v18, -0x1

    :try_start_20
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_29
    .catchall {:try_start_20 .. :try_end_20} :catchall_26

    move-object/from16 v56, v0

    move-object/from16 v57, v13

    move-object/from16 v13, v56

    :try_start_21
    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_28
    .catchall {:try_start_21 .. :try_end_21} :catchall_25

    if-nez v0, :cond_15

    :try_start_22
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlagNotIsolated(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v58, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    move-object/from16 v59, v5

    :try_start_23
    const-string/jumbo v5, "proc "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") sys pkg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    if-eqz v3, :cond_11

    :try_start_24
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "proc "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") sys pkg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    move-object/from16 v5, v50

    :try_start_25
    invoke-virtual {v15, v5, v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v36, v5

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object v15, v1

    goto/16 :goto_17

    :catchall_11
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object v15, v1

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_11
    move-object/from16 v5, v50

    :goto_14
    if-nez v14, :cond_14

    :try_start_26
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v4, :cond_13

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v21, v0, v14
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_4
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    const-wide/16 v23, 0x0

    cmp-long v0, v21, v23

    if-lez v0, :cond_13

    move-object/from16 v60, v1

    :try_start_27
    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v21, v2, v14
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_3
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    sub-long v0, v0, v21

    mul-long v19, v19, v0

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    :try_start_28
    div-long v5, v19, v7

    iput-wide v5, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string v2, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] gms usage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move-wide/from16 v63, v7

    :try_start_29
    iget-wide v6, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " cputimeUsed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " curr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v13, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " last "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v6, v6, v14

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_12
    move-wide/from16 v63, v7

    goto/16 :goto_15

    :catchall_12
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v41, v61

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_2
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v41, v61

    move-object/from16 v36, v62

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :catch_3
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v36, v5

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_13
    move-object/from16 v60, v1

    move-object/from16 v62, v5

    move-object/from16 v61, v6

    move-wide/from16 v63, v7

    :goto_15
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_16

    :catch_4
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v36, v5

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object v15, v1

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_14
    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v80, v5

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v78, v12

    move-object/from16 v8, v27

    move-object/from16 v73, v32

    move-object/from16 v72, v44

    move-object/from16 v66, v49

    move-object/from16 v5, v51

    move-object/from16 v7, v52

    move-object/from16 v4, v53

    move-object/from16 v74, v54

    move-object/from16 v6, v55

    move/from16 v37, v58

    move-object/from16 v67, v59

    move-object v10, v1

    goto/16 :goto_35

    :catchall_13
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_5
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object v15, v1

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :catchall_14
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_6
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object v15, v1

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_15
    move-object/from16 v60, v1

    move/from16 v58, v2

    move-object/from16 v59, v5

    move-object/from16 v61, v6

    move-wide/from16 v63, v7

    move-object/from16 v62, v50

    if-nez v4, :cond_16

    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_7
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    nop

    :goto_16
    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v78, v12

    move-object/from16 v8, v27

    move-object/from16 v73, v32

    move-object/from16 v72, v44

    move-object/from16 v66, v49

    move-object/from16 v5, v51

    move-object/from16 v7, v52

    move-object/from16 v4, v53

    move-object/from16 v74, v54

    move-object/from16 v6, v55

    move/from16 v37, v58

    move-object/from16 v67, v59

    move-object/from16 v10, v60

    move-object/from16 v41, v61

    move-object/from16 v80, v62

    move-wide/from16 v75, v63

    goto/16 :goto_35

    :catchall_15
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v41, v61

    move-wide/from16 v42, v63

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v41, v61

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    :goto_17
    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_16
    :try_start_2a
    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastFgTime:J
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_27
    .catchall {:try_start_2a .. :try_end_2a} :catchall_24

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_17

    :try_start_2b
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, v13, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_9
    .catchall {:try_start_2b .. :try_end_2b} :catchall_15

    move-object/from16 v8, v54

    :try_start_2c
    invoke-virtual {v8, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_8
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    goto/16 :goto_18

    :catch_8
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v41, v61

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v32, v8

    goto :goto_17

    :catch_9
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v41, v61

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_17
    move-object/from16 v8, v54

    :goto_18
    :try_start_2d
    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v5, v2, v14
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_26
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    sub-long v35, v0, v5

    const/4 v1, 0x3

    if-ne v14, v1, :cond_18

    :try_start_2e
    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->isSmallAdjState(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_8
    .catchall {:try_start_2e .. :try_end_2e} :catchall_15

    :cond_18
    :try_start_2f
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v0, v0, v14
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_26
    .catchall {:try_start_2f .. :try_end_2f} :catchall_24

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_1e

    :try_start_30
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_d
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    if-eqz v3, :cond_19

    :try_start_31
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getPDLastFGTimeThold()I

    move-result v18
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_b
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    move-object/from16 v7, v44

    move-object/from16 v6, v60

    move-object v1, v15

    move-object/from16 v65, v11

    move-object/from16 v5, v55

    move/from16 v37, v58

    const/4 v11, 0x2

    move-object v2, v13

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v66, v49

    move-wide/from16 v3, v30

    move-object v11, v5

    move-object/from16 v68, v9

    move-object/from16 v67, v59

    move-object/from16 v9, v62

    move v5, v14

    move-object/from16 v69, v10

    move-object/from16 v41, v61

    move-object v10, v6

    move-object v6, v0

    move-object/from16 v72, v7

    move-object/from16 v71, v11

    move-object/from16 v70, v12

    move-wide/from16 v11, v63

    move/from16 v7, v40

    move-object/from16 v74, v8

    move-object/from16 v73, v32

    move/from16 v8, v18

    :try_start_32
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v9, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_a
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    goto/16 :goto_19

    :catch_a
    move-exception v0

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object/from16 v10, v52

    goto/16 :goto_aa

    :catch_b
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v70, v12

    move-object/from16 v41, v61

    move/from16 v39, v4

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v11, v49

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v27, v65

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v32, v8

    goto/16 :goto_aa

    :cond_19
    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v74, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v70, v12

    move-object/from16 v73, v32

    move-object/from16 v72, v44

    move-object/from16 v66, v49

    move-object/from16 v71, v55

    move/from16 v37, v58

    move-object/from16 v67, v59

    move-object/from16 v10, v60

    move-object/from16 v41, v61

    move-object/from16 v9, v62

    move-wide/from16 v11, v63

    :cond_1a
    :goto_19
    :try_start_33
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v1

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object v1, v15

    move-object v2, v13

    move-wide/from16 v3, v30

    move v5, v14

    move-object v6, v0

    move/from16 v7, v40

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v10, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    mul-long v19, v19, v35

    div-long v19, v19, v11

    move-wide/from16 v1, v19

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_c
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    move-object/from16 v8, v52

    :try_start_34
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    long-to-int v5, v1

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    iget v4, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_1b
    iget v3, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    long-to-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_1c
    move-object/from16 v8, v52

    :goto_1a
    if-nez v14, :cond_1d

    const-wide/16 v1, 0x0

    iput-wide v1, v13, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_e
    .catchall {:try_start_34 .. :try_end_34} :catchall_16

    :cond_1d
    move-object v7, v8

    move-object/from16 v80, v9

    move-wide/from16 v75, v11

    move-object/from16 v8, v27

    move-object/from16 v5, v51

    move-object/from16 v4, v53

    move-object/from16 v78, v70

    :goto_1b
    move-object/from16 v6, v71

    goto/16 :goto_35

    :catchall_16
    move-exception v0

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    :goto_1c
    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_c
    move-exception v0

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object/from16 v10, v52

    goto/16 :goto_aa

    :catchall_17
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v65, v11

    move-object/from16 v70, v12

    move-object/from16 v41, v61

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v11, v49

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-wide/from16 v42, v63

    move-object/from16 v27, v65

    move-object/from16 v24, v70

    goto/16 :goto_b2

    :catch_d
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v74, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v70, v12

    move-object/from16 v41, v61

    move/from16 v39, v4

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v11, v49

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v27, v65

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v32, v74

    goto/16 :goto_aa

    :cond_1e
    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v74, v8

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v70, v12

    move-object/from16 v73, v32

    move-object/from16 v72, v44

    move-object/from16 v66, v49

    move-object/from16 v8, v52

    move-object/from16 v71, v55

    move/from16 v37, v58

    move-object/from16 v67, v59

    move-object/from16 v10, v60

    move-object/from16 v41, v61

    move-object/from16 v9, v62

    move-wide/from16 v11, v63

    :try_start_35
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.google.android.gms.persistent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_25
    .catchall {:try_start_35 .. :try_end_35} :catchall_23

    if-eqz v0, :cond_1f

    :try_start_36
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v1, "add gms-persistent to sys pkg"

    invoke-virtual {v15, v10, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v40, :cond_1f

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v1, "add gms-persistent to sys pkg"

    invoke-virtual {v15, v9, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_e
    .catchall {:try_start_36 .. :try_end_36} :catchall_16

    goto :goto_1e

    :catch_e
    move-exception v0

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    :goto_1d
    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :cond_1f
    :goto_1e
    :try_start_37
    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_25
    .catchall {:try_start_37 .. :try_end_37} :catchall_23

    if-eqz v0, :cond_20

    :try_start_38
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_10
    .catchall {:try_start_38 .. :try_end_38} :catchall_19

    move-object/from16 v7, v70

    :try_start_39
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_f
    .catchall {:try_start_39 .. :try_end_39} :catchall_18

    goto/16 :goto_21

    :catchall_18
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    :goto_1f
    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    goto/16 :goto_1c

    :catch_f
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    :goto_20
    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    goto :goto_1d

    :catchall_19
    move-exception v0

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_10
    move-exception v0

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :cond_20
    move-object/from16 v7, v70

    :goto_21
    mul-long v19, v19, v35

    :try_start_3a
    div-long v19, v19, v11
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_24
    .catchall {:try_start_3a .. :try_end_3a} :catchall_22

    move-wide/from16 v5, v19

    const-wide/16 v0, 0xa

    cmp-long v0, v5, v0

    if-lez v0, :cond_21

    :try_start_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bgtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v1, v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_f
    .catchall {:try_start_3b .. :try_end_3b} :catchall_18

    :cond_21
    :try_start_3c
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_24
    .catchall {:try_start_3c .. :try_end_3c} :catchall_22

    if-nez v0, :cond_27

    :try_start_3d
    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v15, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v3, v27

    goto/16 :goto_24

    :cond_22
    if-nez v14, :cond_23

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v0, v0, v14
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_12
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1b

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-ltz v0, :cond_23

    move-object/from16 v3, v27

    :try_start_3e
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_23
    move-object/from16 v3, v27

    :goto_22
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v10, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v40, :cond_24

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") stat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v9, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_24
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v5

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_25
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    if-nez v14, :cond_26

    const-wide/16 v0, 0x0

    iput-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_11
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1a

    :cond_26
    move-object/from16 v78, v7

    move-object v7, v8

    move-object/from16 v80, v9

    move-wide/from16 v75, v11

    move-object/from16 v4, v53

    move-object v8, v3

    move-wide v11, v5

    move-object/from16 v5, v51

    move-object/from16 v6, v71

    goto/16 :goto_34

    :catchall_1a
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    goto/16 :goto_20

    :catchall_1b
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_12
    move-exception v0

    move-object/from16 v24, v7

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :cond_27
    move-object/from16 v3, v27

    :goto_24
    :try_start_3f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_23
    .catchall {:try_start_3f .. :try_end_3f} :catchall_21

    if-eqz v40, :cond_28

    :try_start_40
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getPDLastFGTimeThold()I

    move-result v18
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_14
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    move-object v1, v15

    move-object v2, v13

    move-wide/from16 v75, v11

    move-object v11, v3

    move-wide/from16 v3, v30

    move-object/from16 v77, v11

    move-wide v11, v5

    move v5, v14

    move-object v6, v0

    move-object/from16 v78, v7

    move/from16 v7, v40

    move-object/from16 v79, v8

    move/from16 v8, v18

    :try_start_41
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v9, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_13
    .catchall {:try_start_41 .. :try_end_41} :catchall_1c

    goto/16 :goto_27

    :catchall_1c
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    :goto_25
    move-object/from16 v24, v78

    goto/16 :goto_b2

    :catch_13
    move-exception v0

    move-object/from16 v36, v9

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    :goto_26
    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :catchall_1d
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_14
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :cond_28
    move-object/from16 v77, v3

    move-object/from16 v78, v7

    move-object/from16 v79, v8

    move-wide/from16 v75, v11

    move-wide v11, v5

    :cond_29
    :goto_27
    :try_start_42
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move-object v8, v1

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_22
    .catchall {:try_start_42 .. :try_end_42} :catchall_20

    move-object v1, v15

    move-object v2, v13

    move-wide/from16 v3, v30

    move v5, v14

    move-object v6, v8

    move/from16 v7, v40

    move-object/from16 v80, v9

    move-object v9, v8

    move v8, v0

    :try_start_43
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_21
    .catchall {:try_start_43 .. :try_end_43} :catchall_20

    if-eqz v0, :cond_2e

    :try_start_44
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v10, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v0, v0, v14
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_18
    .catchall {:try_start_44 .. :try_end_44} :catchall_20

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_2b

    :try_start_45
    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] skip proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_16
    .catchall {:try_start_45 .. :try_end_45} :catchall_20

    if-nez v14, :cond_2a

    move-object/from16 v8, v77

    :try_start_46
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catch_15
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    goto/16 :goto_26

    :cond_2a
    move-object/from16 v8, v77

    :goto_28
    if-nez v14, :cond_2c

    iget-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] set lastSkipTime for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_15
    .catchall {:try_start_46 .. :try_end_46} :catchall_1e

    goto :goto_29

    :catch_16
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :cond_2b
    move-object/from16 v8, v77

    :cond_2c
    :goto_29
    :try_start_47
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_17
    .catchall {:try_start_47 .. :try_end_47} :catchall_1e

    move-object/from16 v7, v79

    :try_start_48
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v11

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_2d
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    long-to-int v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_2a
    move-object/from16 v5, v51

    move-object/from16 v4, v53

    goto/16 :goto_1b

    :catch_17
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :catch_18
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :cond_2e
    move-object/from16 v8, v77

    move-object/from16 v7, v79

    if-nez v14, :cond_2f

    const-wide/16 v0, 0x0

    iput-wide v0, v13, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_19
    .catchall {:try_start_48 .. :try_end_48} :catchall_1e

    goto :goto_2c

    :catchall_1e
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    goto/16 :goto_25

    :catch_19
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    :goto_2b
    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    goto/16 :goto_39

    :cond_2f
    :goto_2c
    :try_start_49
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v0, v0, v14
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_20
    .catchall {:try_start_49 .. :try_end_49} :catchall_1e

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_35

    :try_start_4a
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v0, v0, v14

    int-to-long v0, v0

    cmp-long v0, v11, v0

    if-gez v0, :cond_35

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_1b
    .catchall {:try_start_4a .. :try_end_4a} :catchall_1e

    if-eqz v0, :cond_30

    :try_start_4b
    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v2, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v2, v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    if-nez v14, :cond_31

    monitor-enter v25
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_19
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1e

    :try_start_4c
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v18, v25

    move/from16 v19, v0

    move-object/from16 v20, v1

    move-wide/from16 v21, v75

    move-wide/from16 v23, v35

    invoke-virtual/range {v18 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    monitor-exit v25

    goto :goto_2d

    :catchall_1f
    move-exception v0

    monitor-exit v25
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_1f

    :try_start_4d
    throw v0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_19
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1e

    :cond_31
    :goto_2d
    :try_start_4e
    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_32

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_1b
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1e

    move-object/from16 v6, v71

    :try_start_4f
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_32
    move-object/from16 v6, v71

    :cond_33
    :goto_2e
    if-nez v14, :cond_34

    if-eqz v13, :cond_34

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_34

    iget-object v0, v13, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_1a
    .catchall {:try_start_4f .. :try_end_4f} :catchall_1e

    goto :goto_2f

    :catch_1a
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    goto/16 :goto_30

    :cond_34
    :goto_2f
    move-object/from16 v5, v51

    move-object/from16 v4, v53

    goto/16 :goto_33

    :catch_1b
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_35
    move-object/from16 v6, v71

    :try_start_50
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_1f
    .catchall {:try_start_50 .. :try_end_50} :catchall_1e

    move-object/from16 v5, v51

    :try_start_51
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_1e
    .catchall {:try_start_51 .. :try_end_51} :catchall_1e

    if-eqz v0, :cond_36

    :try_start_52
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v11

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1c
    .catchall {:try_start_52 .. :try_end_52} :catchall_1e

    goto :goto_32

    :catch_1c
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    :goto_30
    move-object/from16 v23, v53

    :goto_31
    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    goto/16 :goto_2b

    :cond_36
    :try_start_53
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    long-to-int v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    iget v0, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_1e
    .catchall {:try_start_53 .. :try_end_53} :catchall_1e

    move-object/from16 v4, v53

    :try_start_54
    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, v11, v0

    if-lez v2, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect]accumulate usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " from procName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_37
    :goto_33
    nop

    :goto_34
    invoke-virtual {v15, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_1d
    .catchall {:try_start_54 .. :try_end_54} :catchall_1e

    nop

    :goto_35
    move-object/from16 v53, v4

    move-object/from16 v51, v5

    move-object/from16 v55, v6

    move-object/from16 v52, v7

    move-object/from16 v27, v8

    move-object v1, v10

    move/from16 v0, v37

    move/from16 v4, v39

    move/from16 v3, v40

    move-object/from16 v6, v41

    move-object/from16 v13, v57

    move-object/from16 v11, v65

    move-object/from16 v49, v66

    move-object/from16 v5, v67

    move-object/from16 v9, v68

    move-object/from16 v10, v69

    move-object/from16 v44, v72

    move-object/from16 v32, v73

    move-object/from16 v54, v74

    move-wide/from16 v7, v75

    move-object/from16 v12, v78

    move-object/from16 v50, v80

    goto/16 :goto_13

    :catch_1d
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    goto/16 :goto_31

    :catch_1e
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catch_1f
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catch_20
    move-exception v0

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catch_21
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :catchall_20
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    goto/16 :goto_b2

    :catch_22
    move-exception v0

    move-object/from16 v36, v9

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v22, v77

    move-object/from16 v24, v78

    move-object v15, v10

    move-object/from16 v10, v79

    goto/16 :goto_aa

    :catchall_21
    move-exception v0

    move-object/from16 v22, v3

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_23
    move-exception v0

    move-object/from16 v78, v7

    move-object/from16 v22, v3

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object/from16 v24, v78

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :catchall_22
    move-exception v0

    move-object/from16 v24, v7

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_24
    move-exception v0

    move-object/from16 v78, v7

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object/from16 v24, v78

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :catchall_23
    move-exception v0

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    goto/16 :goto_b2

    :catch_25
    move-exception v0

    move-object/from16 v36, v9

    move-wide/from16 v42, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v37, v51

    move-object/from16 v23, v53

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v24, v70

    move-object/from16 v20, v71

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-object v15, v10

    move-object v10, v8

    goto/16 :goto_aa

    :catch_26
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v74, v8

    move-object/from16 v69, v10

    move-object/from16 v41, v61

    move-object/from16 v34, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v35, v69

    move-object/from16 v32, v74

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :catchall_24
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v41, v61

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-wide/from16 v42, v63

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_27
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v69, v10

    move-object/from16 v41, v61

    move-object/from16 v34, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v36, v62

    move-wide/from16 v42, v63

    move-object/from16 v35, v69

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :catchall_25
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v13, v57

    move-wide/from16 v42, v75

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_28
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v67, v5

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move-object/from16 v69, v10

    move-object/from16 v34, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v13, v57

    move-object/from16 v14, v67

    move-object/from16 v35, v69

    move-wide/from16 v42, v75

    move-object v15, v1

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :catchall_26
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move/from16 v39, v4

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-wide/from16 v42, v75

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_b2

    :catch_29
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v67, v5

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move-object/from16 v69, v10

    move-object/from16 v34, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object/from16 v14, v67

    move-object/from16 v35, v69

    move-wide/from16 v42, v75

    move-object v15, v1

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto/16 :goto_aa

    :cond_38
    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v67, v5

    move-object/from16 v41, v6

    move-wide/from16 v75, v7

    move-object/from16 v68, v9

    move-object/from16 v69, v10

    move-object/from16 v65, v11

    move-object/from16 v78, v12

    move-object/from16 v57, v13

    move-object/from16 v8, v27

    move-object/from16 v73, v32

    move-object/from16 v72, v44

    move-object/from16 v66, v49

    move-object/from16 v80, v50

    move-object/from16 v5, v51

    move-object/from16 v7, v52

    move-object/from16 v4, v53

    move-object/from16 v74, v54

    move-object/from16 v6, v55

    move-object v10, v1

    if-eqz v39, :cond_bd

    move-object/from16 v11, v69

    :try_start_55
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_84
    .catchall {:try_start_55 .. :try_end_55} :catchall_76

    if-lez v0, :cond_3a

    :try_start_56
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_2b
    .catchall {:try_start_56 .. :try_end_56} :catchall_27

    move-object/from16 v12, v78

    :try_start_57
    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "has visible window"

    invoke-virtual {v15, v10, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v40, :cond_39

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "has visible window"
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_2a
    .catchall {:try_start_57 .. :try_end_57} :catchall_28

    move-object/from16 v9, v80

    :try_start_58
    invoke-virtual {v15, v9, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_37

    :cond_39
    move-object/from16 v9, v80

    :goto_37
    move-object/from16 v80, v9

    move-object/from16 v78, v12

    goto :goto_36

    :catch_2a
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catchall_27
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    goto/16 :goto_b2

    :catch_2b
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_3a
    move-object/from16 v12, v78

    move-object/from16 v9, v80

    if-nez v14, :cond_3d

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "audio active in last sample"

    invoke-virtual {v15, v10, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v40, :cond_3b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "audio active in last sample"

    invoke-virtual {v15, v9, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_3b
    goto :goto_38

    :cond_3c
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_2c
    .catchall {:try_start_58 .. :try_end_58} :catchall_28

    goto :goto_3a

    :catchall_28
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    goto/16 :goto_b2

    :catch_2c
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    :goto_39
    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_3d
    :goto_3a
    :try_start_59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_83
    .catchall {:try_start_59 .. :try_end_59} :catchall_75

    move-object v13, v0

    if-eqz v68, :cond_46

    move-object/from16 v3, v68

    :try_start_5a
    array-length v0, v3

    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v0, :cond_45

    aget-object v2, v3, v1

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_3e

    nop

    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    goto/16 :goto_3d

    :cond_3e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_30
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2a

    move/from16 v81, v21

    move/from16 v82, v0

    move-object/from16 v83, v3

    move/from16 v0, v81

    :try_start_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "audio active"

    invoke-virtual {v15, v10, v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2f
    .catchall {:try_start_5b .. :try_end_5b} :catchall_29

    if-eqz v40, :cond_3f

    :try_start_5c
    const-string v3, "audio active"

    invoke-virtual {v15, v9, v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_2d
    .catchall {:try_start_5c .. :try_end_5c} :catchall_29

    goto :goto_3c

    :catch_2d
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    goto :goto_39

    :cond_3f
    :goto_3c
    if-nez v14, :cond_40

    :try_start_5d
    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2f
    .catchall {:try_start_5d .. :try_end_5d} :catchall_29

    move-object/from16 v84, v4

    :try_start_5e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3d

    :cond_40
    move-object/from16 v84, v4

    goto/16 :goto_3d

    :cond_41
    move-object/from16 v84, v4

    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "has visible window & audio active"

    invoke-virtual {v15, v10, v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v40, :cond_42

    const-string v3, "has visible window & audio active"

    invoke-virtual {v15, v9, v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_42
    if-nez v14, :cond_44

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_2e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_29

    goto/16 :goto_3d

    :catch_2e
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    goto/16 :goto_39

    :catchall_29
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    goto/16 :goto_b2

    :catch_2f
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_43
    move/from16 v82, v0

    move-object/from16 v83, v3

    move-object/from16 v84, v4

    :cond_44
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v82

    move-object/from16 v3, v83

    move-object/from16 v4, v84

    goto/16 :goto_3b

    :cond_45
    move-object/from16 v83, v3

    move-object/from16 v84, v4

    goto :goto_3e

    :catchall_2a
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    goto/16 :goto_b2

    :catch_30
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_46
    move-object/from16 v84, v4

    move-object/from16 v83, v68

    :goto_3e
    if-nez v14, :cond_51

    :try_start_5f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    if-eqz v48, :cond_51

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_50

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    invoke-direct {v15, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_50

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_3a
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2f

    if-eqz v1, :cond_4c

    :try_start_60
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_37
    .catchall {:try_start_60 .. :try_end_60} :catchall_2c

    move-object/from16 v2, v74

    :try_start_61
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_36
    .catchall {:try_start_61 .. :try_end_61} :catchall_2c

    if-eqz v1, :cond_49

    if-eqz v1, :cond_48

    :try_start_62
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v21, v30, v21

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_31
    .catchall {:try_start_62 .. :try_end_62} :catchall_29

    move-object/from16 v85, v5

    int-to-long v4, v3

    cmp-long v3, v21, v4

    if-ltz v3, :cond_47

    goto/16 :goto_3f

    :cond_47
    move-object/from16 v32, v2

    move-object/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v22, v8

    move-object/from16 v89, v11

    move-object/from16 v88, v12

    move-object/from16 v87, v13

    move-object/from16 v35, v83

    move-object/from16 v90, v84

    move-object/from16 v11, v85

    const/16 v12, 0x3e7

    const/4 v13, 0x0

    goto/16 :goto_42

    :catch_31
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_48
    move-object/from16 v32, v2

    move-object/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v22, v8

    move-object/from16 v89, v11

    move-object/from16 v88, v12

    move-object/from16 v87, v13

    move-object/from16 v35, v83

    move-object/from16 v90, v84

    const/16 v12, 0x3e7

    move v13, v3

    move-object v11, v5

    goto/16 :goto_42

    :cond_49
    move-object/from16 v85, v5

    :goto_3f
    :try_start_63
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_35
    .catchall {:try_start_63 .. :try_end_63} :catchall_2c

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_4a

    const/4 v3, 0x1

    goto :goto_40

    :cond_4a
    const/4 v3, 0x0

    :goto_40
    move/from16 v21, v3

    if-eqz v21, :cond_4b

    :try_start_64
    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_32
    .catchall {:try_start_64 .. :try_end_64} :catchall_29

    goto :goto_41

    :catch_32
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v37, v85

    goto/16 :goto_39

    :cond_4b
    :try_start_65
    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    :goto_41
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_35
    .catchall {:try_start_65 .. :try_end_65} :catchall_2c

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v86, v6

    :try_start_66
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_34
    .catchall {:try_start_66 .. :try_end_66} :catchall_2c

    move-object/from16 v27, v1

    move-object v1, v15

    move-object/from16 v32, v2

    move-object v2, v3

    move-object/from16 v87, v13

    move-object/from16 v35, v83

    const/4 v13, 0x0

    move-object v3, v5

    move/from16 v36, v4

    move-object/from16 v88, v12

    move-object/from16 v5, v84

    const/16 v12, 0x3e7

    move/from16 v4, v22

    move-object/from16 v90, v5

    move-object/from16 v89, v11

    move-object/from16 v11, v85

    move/from16 v5, v23

    move/from16 v22, v6

    move-object/from16 v91, v86

    move/from16 v6, v24

    move-object/from16 v92, v7

    move/from16 v7, v22

    move-object/from16 v22, v8

    move/from16 v8, v36

    :try_start_67
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_33
    .catchall {:try_start_67 .. :try_end_67} :catchall_2b

    :goto_42
    nop

    move-object/from16 v93, v72

    goto/16 :goto_48

    :catchall_2b
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    goto/16 :goto_43

    :catch_33
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    goto/16 :goto_44

    :catch_34
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v89, v11

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v37, v85

    move-object/from16 v20, v86

    move-object/from16 v35, v89

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catch_35
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v89, v11

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v37, v85

    move-object/from16 v35, v89

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catch_36
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v89, v11

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v35, v89

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catchall_2c
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    goto/16 :goto_b2

    :catch_37
    move-exception v0

    move-object/from16 v89, v11

    move-object/from16 v32, v74

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v35, v89

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_4c
    move-object/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v22, v8

    move-object/from16 v89, v11

    move-object/from16 v88, v12

    move-object/from16 v87, v13

    move-object/from16 v32, v74

    move-object/from16 v35, v83

    move-object/from16 v90, v84

    const/16 v12, 0x3e7

    move v13, v3

    move-object v11, v5

    move-object/from16 v8, v72

    :try_start_68
    invoke-virtual {v15, v0, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkKillSkipApp(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z

    move-result v1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_39
    .catchall {:try_start_68 .. :try_end_68} :catchall_2e

    if-eqz v1, :cond_4d

    :try_start_69
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Skip] kill "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to abnormally busy, proc state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_38
    .catchall {:try_start_69 .. :try_end_69} :catchall_2d

    move-object/from16 v93, v8

    goto/16 :goto_48

    :catchall_2d
    move-exception v0

    move-object/from16 v38, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    :goto_43
    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    goto/16 :goto_b2

    :catch_38
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    :goto_44
    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    goto/16 :goto_49

    :cond_4d
    :try_start_6a
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_39
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2e

    if-ne v1, v12, :cond_4e

    const/4 v1, 0x1

    goto :goto_45

    :cond_4e
    move v1, v13

    :goto_45
    move/from16 v21, v1

    if-eqz v21, :cond_4f

    :try_start_6b
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_38
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2d

    goto :goto_46

    :cond_4f
    :try_start_6c
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    :goto_46
    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_39
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2e

    move/from16 v23, v1

    move-object v1, v15

    move-object/from16 v93, v8

    move/from16 v8, v23

    :try_start_6d
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string/jumbo v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_3b
    .catchall {:try_start_6d .. :try_end_6d} :catchall_36

    goto/16 :goto_48

    :catchall_2e
    move-exception v0

    move-object/from16 v38, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    goto/16 :goto_b2

    :catch_39
    move-exception v0

    move-object/from16 v38, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object v15, v10

    move-object/from16 v10, v92

    goto/16 :goto_aa

    :cond_50
    move-object/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v22, v8

    move-object/from16 v89, v11

    move-object/from16 v88, v12

    move-object/from16 v87, v13

    move-object/from16 v93, v72

    move-object/from16 v32, v74

    move-object/from16 v35, v83

    move-object/from16 v90, v84

    const/16 v12, 0x3e7

    move v13, v3

    goto/16 :goto_47

    :catchall_2f
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    goto/16 :goto_b2

    :catch_3a
    move-exception v0

    move-object/from16 v89, v11

    move-object/from16 v32, v74

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v34, v83

    move-object/from16 v23, v84

    move-object/from16 v35, v89

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_51
    move-object/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v22, v8

    move-object/from16 v89, v11

    move-object/from16 v88, v12

    move-object/from16 v87, v13

    move-object/from16 v93, v72

    move-object/from16 v32, v74

    move-object/from16 v35, v83

    move-object/from16 v90, v84

    const/16 v12, 0x3e7

    const/4 v13, 0x0

    :goto_47
    move-object v11, v5

    :goto_48
    if-nez v14, :cond_69

    const/4 v0, 0x0

    :try_start_6e
    iget-boolean v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_3d
    .catchall {:try_start_6e .. :try_end_6e} :catchall_36

    if-eqz v1, :cond_55

    :try_start_6f
    iget v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v1, :cond_52

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mNativeMonitorCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMaxNativeMonitorCount:I

    if-ne v1, v2, :cond_55

    iput-boolean v13, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    iput v13, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v1, :cond_53

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mLastBatteryPercent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBatteryLevelOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    iget v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    sub-int/2addr v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryDropCriteria:I

    if-le v1, v2, :cond_54

    const/4 v0, 0x1

    :cond_54
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] stop native process monitoring, start to judge, doKill="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_3b
    .catchall {:try_start_6f .. :try_end_6f} :catchall_36

    goto :goto_4a

    :catch_3b
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object/from16 v38, v93

    :goto_49
    move-object v15, v10

    move-object/from16 v10, v92

    goto/16 :goto_aa

    :cond_55
    :goto_4a
    move v1, v0

    :try_start_70
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_3d
    .catchall {:try_start_70 .. :try_end_70} :catchall_36

    :try_start_71
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_67

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v8, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_34

    const/4 v12, 0x1

    if-ne v8, v12, :cond_56

    :try_start_72
    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->resetAbn()V
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_30

    goto :goto_4c

    :catchall_30
    move-exception v0

    move-object/from16 v99, v9

    goto/16 :goto_52

    :cond_56
    :goto_4c
    :try_start_73
    iget-object v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v23, v8, v14
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_34

    const-wide/16 v27, 0x0

    cmp-long v8, v23, v27

    if-lez v8, :cond_66

    :try_start_74
    iget-wide v13, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    iget-object v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_32

    move-wide v12, v13

    move/from16 v14, p1

    :try_start_75
    aget-wide v23, v8, v14

    sub-long v12, v12, v23

    mul-long v23, v12, v19

    div-long v23, v23, v75

    move-wide/from16 v94, v23

    iget-object v8, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    move/from16 v96, v0

    iget-object v0, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v3, 0x1

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    iget-object v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_31

    move/from16 v98, v3

    move/from16 v97, v4

    int-to-long v3, v0

    move-object/from16 v99, v9

    move-wide/from16 v8, v94

    cmp-long v0, v8, v3

    if-ltz v0, :cond_58

    :try_start_76
    iget-boolean v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-eqz v0, :cond_57

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addHighCpuUsedCount()V

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " HighCpuUsedCount add 1, now HighCpuUsedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->getHighCpuUsedCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    const/4 v0, 0x1

    move/from16 v96, v0

    goto :goto_4d

    :cond_58
    iget-boolean v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-eqz v0, :cond_5b

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->reduceHighCpuUsedCount()V

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->getHighCpuUsedCount()I

    move-result v0

    if-gtz v0, :cond_5b

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->resetHighCpuUsedCount()V

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " HighCpuUsedCount reduce 1, now HighCpuUsedCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->getHighCpuUsedCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    :cond_59
    move/from16 v97, v4

    move-object/from16 v99, v9

    move-wide/from16 v8, v94

    iget v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    move/from16 v100, v3

    int-to-long v3, v0

    cmp-long v0, v8, v3

    if-ltz v0, :cond_5a

    const/4 v0, 0x1

    move/from16 v96, v0

    :cond_5a
    move/from16 v98, v100

    :cond_5b
    :goto_4d
    if-eqz v96, :cond_5c

    iget v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v3, 0x2

    if-gt v0, v3, :cond_5c

    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->setAbn()V

    :cond_5c
    if-eqz v96, :cond_65

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]detect excessive cpu on native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " monitor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " round="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " doKill="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-eqz v0, :cond_5f

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->getHighCpuUsedCount()I

    move-result v0

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_5e

    iget v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    sub-int/2addr v0, v3

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getBatteryDrop()I

    move-result v3

    if-le v0, v3, :cond_5d

    const/4 v4, 0x1

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v101, v4

    const-string v4, "[BgDetect]native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "drop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    move-object/from16 v102, v6

    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getBatteryDrop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "counts, dokillSpecial is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v97, v101

    goto/16 :goto_4e

    :cond_5d
    move-object/from16 v102, v6

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->resetHighCpuUsedCount()V

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is reset HighCpuUsedCount because batteryDrop < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getBatteryDrop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_5e
    move-object/from16 v102, v6

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->getHighCpuUsedCount()I

    move-result v0

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getCount()I

    move-result v3

    if-le v0, v3, :cond_60

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->resetHighCpuUsedCount()V

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]native process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is reset HighCpuUsedCount because HighCpuUsedCount higher than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_5f
    move-object/from16 v102, v6

    :cond_60
    :goto_4e
    if-nez v1, :cond_61

    if-eqz v97, :cond_64

    :cond_61
    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->isAbn()Z

    move-result v0

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    if-eqz v98, :cond_62

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] kill native process "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(pid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    :cond_62
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v4, 0xd6e8

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int v4, v8

    iput v4, v3, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_63

    const/4 v4, 0x1

    goto :goto_4f

    :cond_63
    const/4 v4, 0x0

    :goto_4f
    iput v4, v3, Landroid/os/Message;->arg2:I

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_64
    move/from16 v0, v96

    move/from16 v4, v97

    move/from16 v3, v98

    goto :goto_51

    :cond_65
    move-object/from16 v102, v6

    move/from16 v0, v96

    move/from16 v4, v97

    move/from16 v3, v98

    goto :goto_51

    :catchall_31
    move-exception v0

    move-object/from16 v99, v9

    goto :goto_50

    :catchall_32
    move-exception v0

    move-object/from16 v99, v9

    move/from16 v14, p1

    :goto_50
    const/4 v13, 0x0

    goto :goto_52

    :cond_66
    move/from16 v96, v0

    move/from16 v100, v3

    move/from16 v97, v4

    move-object/from16 v102, v6

    move-object/from16 v99, v9

    :goto_51
    iget-object v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    iget-wide v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v8, v6, v14

    nop

    move-object/from16 v9, v99

    const/16 v12, 0x3e7

    const/4 v13, 0x0

    goto/16 :goto_4b

    :cond_67
    move-object/from16 v99, v9

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_33

    :try_start_77
    iget v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_68

    iget-boolean v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    if-nez v0, :cond_68

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    iput v13, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const-string v0, "OHPD"

    const-string v2, "[BgDetect] stop native process monitoring due to no abnormal so far"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_3c
    .catchall {:try_start_77 .. :try_end_77} :catchall_36

    goto/16 :goto_54

    :cond_68
    const/4 v13, 0x0

    goto/16 :goto_54

    :catchall_33
    move-exception v0

    const/4 v13, 0x0

    goto :goto_52

    :catchall_34
    move-exception v0

    move-object/from16 v99, v9

    :goto_52
    :try_start_78
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_35

    :try_start_79
    throw v0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_3c
    .catchall {:try_start_79 .. :try_end_79} :catchall_36

    :catch_3c
    move-exception v0

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    goto/16 :goto_49

    :catchall_35
    move-exception v0

    goto :goto_52

    :catchall_36
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    :goto_53
    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_3d
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object/from16 v38, v93

    move-object v15, v10

    move-object/from16 v10, v92

    goto/16 :goto_aa

    :cond_69
    move-object/from16 v99, v9

    :goto_54
    :try_start_7a
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v12, v0

    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_82
    .catchall {:try_start_7a .. :try_end_7a} :catchall_74

    if-lez v0, :cond_75

    :try_start_7b
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_3f
    .catchall {:try_start_7b .. :try_end_7b} :catchall_40

    :try_start_7c
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    invoke-virtual {v15, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_55

    :cond_6a
    iget-wide v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    iget-object v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v6, v6, v14

    sub-long/2addr v4, v6

    iget v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    iget-object v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    const-string v7, "dex2oat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73

    invoke-virtual {v15, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z

    move-result v6

    if-eqz v6, :cond_6b

    move-object/from16 v104, v0

    move/from16 v105, v3

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    goto/16 :goto_5c

    :cond_6b
    iget-object v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v6, v6, v14

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_70

    mul-long v6, v4, v19

    div-long v6, v6, v75

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, v14
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3d

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_6d

    :try_start_7d
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, v14

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_6d

    iget v8, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    const/4 v9, 0x0

    invoke-virtual {v12, v8, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_6c

    const-string v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") level "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " usage "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v12, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_37

    :cond_6c
    move-object/from16 v104, v0

    move/from16 v105, v3

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    goto/16 :goto_59

    :catchall_37
    move-exception v0

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    :goto_56
    move-object/from16 v11, v90

    :goto_57
    move-object/from16 v9, v92

    goto/16 :goto_5d

    :cond_6d
    :try_start_7e
    const-string v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[BgDetect]forked proc "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " uid: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " during "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_3d

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    :try_start_7f
    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_3c

    if-eqz v8, :cond_6e

    :try_start_80
    iget v8, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v104, v0

    long-to-int v0, v6

    add-int/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v8, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_38

    goto :goto_58

    :catchall_38
    move-exception v0

    move-object/from16 v106, v11

    goto :goto_56

    :cond_6e
    move-object/from16 v104, v0

    :try_start_81
    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    long-to-int v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_58
    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v9, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v105, v3

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_3c

    move-object/from16 v106, v11

    :try_start_82
    iget-object v11, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-direct {v8, v9, v3, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_3b

    move-object/from16 v11, v90

    :try_start_83
    invoke-virtual {v11, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_3a

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6f

    :try_start_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]accumulate usage "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from procName "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_39

    goto :goto_59

    :catchall_39
    move-exception v0

    goto/16 :goto_57

    :cond_6f
    :goto_59
    :try_start_85
    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_3a

    move-object/from16 v9, v92

    :try_start_86
    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    long-to-int v8, v6

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :catchall_3a
    move-exception v0

    move-object/from16 v9, v92

    goto/16 :goto_5d

    :catchall_3b
    move-exception v0

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    goto/16 :goto_5d

    :catchall_3c
    move-exception v0

    move-object/from16 v106, v11

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    goto/16 :goto_5d

    :cond_70
    move-object/from16 v104, v0

    move/from16 v105, v3

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    :cond_71
    :goto_5a
    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    iget-wide v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v6, v0, v14

    nop

    :cond_72
    :goto_5b
    move-object/from16 v92, v9

    move-object/from16 v90, v11

    move-wide/from16 v75, v12

    move-object/from16 v12, v103

    move-object/from16 v0, v104

    move-object/from16 v11, v106

    const/4 v13, 0x0

    goto/16 :goto_55

    :cond_73
    move-object/from16 v104, v0

    move/from16 v105, v3

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip fproc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    iget-wide v6, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v6, v0, v14

    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    mul-long v6, v4, v19

    div-long/2addr v6, v12

    iget v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    long-to-int v8, v6

    add-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5b

    :cond_74
    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    monitor-exit v1

    goto/16 :goto_60

    :catchall_3d
    move-exception v0

    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    :goto_5d
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_3f

    :try_start_87
    throw v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_3e
    .catchall {:try_start_87 .. :try_end_87} :catchall_3e

    :catchall_3e
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    goto/16 :goto_53

    :catch_3e
    move-exception v0

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v20, v91

    :goto_5e
    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object/from16 v37, v106

    :goto_5f
    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_3f
    move-exception v0

    goto :goto_5d

    :catchall_40
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_3f
    move-exception v0

    move-object/from16 v106, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object/from16 v37, v106

    move-object v15, v10

    move-object/from16 v10, v92

    goto/16 :goto_aa

    :cond_75
    move-object/from16 v106, v11

    move-object/from16 v103, v12

    move-wide/from16 v12, v75

    move-object/from16 v11, v90

    move-object/from16 v9, v92

    :goto_60
    move-object/from16 v8, v91

    :try_start_88
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_81
    .catchall {:try_start_88 .. :try_end_88} :catchall_73

    if-lez v0, :cond_8d

    :try_start_89
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v6, v0

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_4e
    .catchall {:try_start_89 .. :try_end_89} :catchall_4b

    if-eqz v0, :cond_81

    :try_start_8a
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    if-eqz v0, :cond_80

    const/4 v1, 0x3

    if-ne v14, v1, :cond_80

    invoke-virtual {v15, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_80

    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v1, :cond_7e

    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7e

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_41
    .catchall {:try_start_8a .. :try_end_8a} :catchall_3e

    if-eqz v0, :cond_7d

    const/4 v1, 0x0

    :try_start_8b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_40
    .catchall {:try_start_8b .. :try_end_8b} :catchall_3e

    move-object v1, v0

    nop

    if-eqz v1, :cond_7c

    :try_start_8c
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v0, :cond_7c

    const/4 v0, 0x0

    :goto_63
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_7b

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    :goto_64
    move-object/from16 v107, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_7a

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    if-eqz v1, :cond_79

    move-object/from16 v108, v2

    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_78

    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v109, v1

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v110, v3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_77

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_76

    goto :goto_65

    :cond_76
    move-object/from16 v112, v4

    goto :goto_66

    :cond_77
    :goto_65
    const/4 v1, 0x1

    const-string v3, "OHPD"

    move/from16 v111, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v112, v4

    const-string v4, "[BgDetect] skip "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bound by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") state "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v3, v111

    goto :goto_67

    :cond_78
    move/from16 v110, v3

    move-object/from16 v112, v4

    goto :goto_66

    :cond_79
    move-object/from16 v108, v2

    move/from16 v110, v3

    move-object/from16 v112, v4

    :goto_66
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v107

    move-object/from16 v2, v108

    move/from16 v3, v110

    move-object/from16 v4, v112

    goto/16 :goto_64

    :cond_7a
    move-object/from16 v108, v2

    move/from16 v110, v3

    :goto_67
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v107

    move-object/from16 v2, v108

    goto/16 :goto_63

    :cond_7b
    move-object/from16 v107, v1

    move-object/from16 v108, v2

    move/from16 v110, v3

    goto/16 :goto_62

    :cond_7c
    move-object/from16 v107, v1

    move-object/from16 v108, v2

    move-object/from16 v1, v107

    move-object/from16 v2, v108

    goto/16 :goto_62

    :catch_40
    move-exception v0

    move-object/from16 v108, v2

    nop

    :cond_7d
    move v0, v3

    :cond_7e
    if-nez v0, :cond_7f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :cond_7f
    goto :goto_68

    :cond_80
    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] skip proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_41
    .catchall {:try_start_8c .. :try_end_8c} :catchall_3e

    :goto_68
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_61

    :catch_41
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    goto/16 :goto_5e

    :cond_81
    :try_start_8d
    iget v0, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_4e
    .catchall {:try_start_8d .. :try_end_8d} :catchall_4b

    move-object/from16 v5, v106

    :try_start_8e
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_4d
    .catchall {:try_start_8e .. :try_end_8e} :catchall_4b

    if-eqz v0, :cond_82

    :try_start_8f
    iget v0, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_42
    .catchall {:try_start_8f .. :try_end_8f} :catchall_3e

    goto :goto_69

    :catch_42
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    goto/16 :goto_5f

    :cond_82
    :goto_69
    :try_start_90
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_83

    const/4 v0, 0x1

    goto :goto_6a

    :cond_83
    const/4 v0, 0x0

    :goto_6a
    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_4d
    .catchall {:try_start_90 .. :try_end_90} :catchall_4b

    move v4, v1

    if-nez v14, :cond_87

    :try_start_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_49
    .catchall {:try_start_91 .. :try_end_91} :catchall_47

    move-object/from16 v3, v93

    :try_start_92
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_48
    .catchall {:try_start_92 .. :try_end_92} :catchall_46

    if-eqz v1, :cond_85

    :try_start_93
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_45
    .catchall {:try_start_93 .. :try_end_93} :catchall_43

    move-object/from16 v113, v3

    :try_start_94
    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_44
    .catchall {:try_start_94 .. :try_end_94} :catchall_42

    if-eqz v0, :cond_84

    :try_start_95
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_43
    .catchall {:try_start_95 .. :try_end_95} :catchall_41

    goto :goto_6b

    :catchall_41
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v113

    goto/16 :goto_b2

    :catch_43
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-object/from16 v38, v113

    goto/16 :goto_5f

    :cond_84
    :try_start_96
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    :goto_6b
    move-object v2, v1

    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v1, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v114, v1

    iget-object v1, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_44
    .catchall {:try_start_96 .. :try_end_96} :catchall_42

    move/from16 v24, v1

    move/from16 v23, v114

    move-object v1, v15

    move-wide/from16 v115, v12

    move-object/from16 v13, v113

    move v12, v4

    move/from16 v4, v19

    move-object/from16 v117, v5

    move/from16 v5, v20

    move-object/from16 v118, v6

    move/from16 v6, v21

    move-object/from16 v19, v7

    move/from16 v7, v23

    move-object/from16 v20, v8

    move/from16 v8, v24

    :try_start_97
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v8, v118

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v5, "lru_huge"

    const/4 v6, 0x0

    move-object v1, v15

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_46
    .catchall {:try_start_97 .. :try_end_97} :catchall_44

    goto/16 :goto_6c

    :catchall_42
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v113

    goto/16 :goto_b2

    :catch_44
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-object/from16 v38, v113

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_43
    move-exception v0

    move-object/from16 v38, v3

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    goto/16 :goto_b2

    :catch_45
    move-exception v0

    move-object/from16 v38, v3

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :cond_85
    move-object/from16 v117, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v115, v12

    move-object v13, v3

    move v12, v4

    move-object v8, v6

    :try_start_98
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_98} :catch_47
    .catchall {:try_start_98 .. :try_end_98} :catchall_45

    if-eqz v1, :cond_86

    :try_start_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_46
    .catchall {:try_start_99 .. :try_end_99} :catchall_44

    :goto_6c
    move-object/from16 v7, v73

    goto/16 :goto_6d

    :catchall_44
    move-exception v0

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    goto/16 :goto_70

    :catch_46
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    goto/16 :goto_5f

    :cond_86
    :try_start_9a
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v15, v1, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_47
    .catchall {:try_start_9a .. :try_end_9a} :catchall_45

    move-object/from16 v7, v73

    :try_start_9b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6d
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v119, v7

    move-object/from16 v120, v9

    :goto_6e
    const/4 v8, 0x3

    goto/16 :goto_73

    :catchall_45
    move-exception v0

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    goto/16 :goto_b2

    :catch_47
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_46
    move-exception v0

    move-object/from16 v38, v3

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    goto/16 :goto_b2

    :catch_48
    move-exception v0

    move-object/from16 v38, v3

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_47
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_49
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :cond_87
    move-object/from16 v117, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v115, v12

    move-object/from16 v7, v73

    move-object/from16 v13, v93

    move v12, v4

    move-object v8, v6

    const/4 v1, 0x1

    if-ne v14, v1, :cond_89

    if-eqz v0, :cond_88

    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9b} :catch_4a
    .catchall {:try_start_9b .. :try_end_9b} :catchall_48

    goto :goto_71

    :catchall_48
    move-exception v0

    move-object v9, v7

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    :goto_6f
    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    :goto_70
    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    goto/16 :goto_b2

    :catch_4a
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    move-object v15, v10

    move-object v10, v9

    move-object v9, v7

    goto/16 :goto_aa

    :cond_88
    :try_start_9c
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    :goto_71
    move-object v2, v1

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_4b
    .catchall {:try_start_9c .. :try_end_9c} :catchall_49

    move/from16 v21, v1

    move-object v1, v15

    move/from16 v23, v6

    const/4 v6, 0x0

    move-object/from16 v119, v7

    move/from16 v7, v21

    move-object/from16 v120, v9

    move-object v9, v8

    move/from16 v8, v23

    :try_start_9d
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string/jumbo v5, "lru_high"

    const/4 v6, 0x1

    move-object v1, v15

    move v4, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_6e

    :catchall_49
    move-exception v0

    move-object v9, v7

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    goto/16 :goto_b2

    :catch_4b
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    move-object v15, v10

    move-object v10, v9

    move-object v9, v7

    goto/16 :goto_aa

    :cond_89
    move-object/from16 v119, v7

    move-object/from16 v120, v9

    move-object v9, v8

    const/4 v1, 0x2

    if-ne v14, v1, :cond_8b

    if-eqz v0, :cond_8a

    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    goto :goto_72

    :catchall_4a
    move-exception v0

    goto/16 :goto_75

    :catch_4c
    move-exception v0

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    goto/16 :goto_76

    :cond_8a
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    :goto_72
    move-object v2, v1

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v1, v15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_6e

    :cond_8b
    const/4 v8, 0x3

    if-ne v14, v8, :cond_8c

    invoke-virtual {v15, v9, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-nez v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_4c
    .catchall {:try_start_9d .. :try_end_9d} :catchall_4a

    :cond_8c
    :goto_73
    nop

    move-object/from16 v93, v13

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-wide/from16 v12, v115

    move-object/from16 v106, v117

    move-object/from16 v73, v119

    move-object/from16 v9, v120

    goto/16 :goto_61

    :catch_4d
    move-exception v0

    move-object/from16 v37, v5

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_4b
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_4e
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object/from16 v37, v106

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :cond_8d
    move-object/from16 v20, v8

    move-object/from16 v120, v9

    move-wide/from16 v115, v12

    move-object/from16 v119, v73

    move-object/from16 v13, v93

    move-object/from16 v117, v106

    const/4 v8, 0x3

    move/from16 v9, v26

    move-object/from16 v12, v103

    :try_start_9e
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_80
    .catchall {:try_start_9e .. :try_end_9e} :catchall_72

    if-lez v0, :cond_9a

    const/4 v0, 0x0

    :goto_74
    :try_start_9f
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_99

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    move-object v7, v1

    iget-object v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_98

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_59
    .catchall {:try_start_9f .. :try_end_9f} :catchall_52

    move-object/from16 v6, v117

    :try_start_a0
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a0} :catch_57
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_52

    if-eqz v1, :cond_8e

    :try_start_a1
    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a1} :catch_4f
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_4c

    goto :goto_77

    :catchall_4c
    move-exception v0

    move/from16 v26, v9

    :goto_75
    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    goto/16 :goto_b2

    :catch_4f
    move-exception v0

    move-object/from16 v37, v6

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    :goto_76
    move-object/from16 v9, v119

    goto/16 :goto_7f

    :cond_8e
    :goto_77
    :try_start_a2
    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_8f

    const/4 v1, 0x1

    goto :goto_78

    :cond_8f
    const/4 v1, 0x0

    :goto_78
    move/from16 v18, v1

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a2} :catch_57
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_52

    move v5, v1

    if-nez v14, :cond_93

    :try_start_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a3} :catch_53
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_4d

    if-eqz v1, :cond_91

    :try_start_a4
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_50
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_4c

    if-eqz v18, :cond_90

    :try_start_a5
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a5} :catch_4f
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_4c

    goto :goto_79

    :cond_90
    :try_start_a6
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    :goto_79
    move-object v2, v1

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    iget v8, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_50
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_4c

    move/from16 v23, v1

    move-object v1, v15

    move/from16 v121, v5

    move/from16 v5, v19

    move-object/from16 v122, v6

    move/from16 v6, v21

    move-object/from16 v123, v7

    move/from16 v7, v23

    const/16 v19, 0x3

    :try_start_a7
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v8, v123

    iget-object v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    const-string v5, "fork_huge"

    const/4 v6, 0x0

    move-object v1, v15

    move/from16 v4, v121

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_51
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_4c

    move-object/from16 v6, v119

    move/from16 v7, v121

    goto/16 :goto_7a

    :catch_50
    move-exception v0

    move-object/from16 v37, v6

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_91
    move/from16 v121, v5

    move-object/from16 v122, v6

    move/from16 v19, v8

    move-object v8, v7

    :try_start_a8
    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v1
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_52
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_4d

    if-eqz v1, :cond_92

    :try_start_a9
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] kill forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v7, v121

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_a9} :catch_51
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_4c

    move-object/from16 v6, v119

    goto :goto_7a

    :catch_51
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move-object/from16 v37, v122

    goto/16 :goto_7f

    :cond_92
    move/from16 v7, v121

    :try_start_aa
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop forked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-direct {v15, v1, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_52
    .catchall {:try_start_aa .. :try_end_aa} :catchall_4d

    move-object/from16 v6, v119

    :try_start_ab
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7a
    add-int/lit8 v9, v9, 0x1

    move/from16 v126, v9

    move-object/from16 v125, v12

    const/16 v24, 0x2

    move-object v12, v6

    move-object v9, v8

    goto/16 :goto_7d

    :catch_52
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move-object/from16 v37, v122

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :catchall_4d
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    goto/16 :goto_b2

    :catch_53
    move-exception v0

    move-object/from16 v37, v6

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_93
    move-object/from16 v122, v6

    move/from16 v19, v8

    move-object/from16 v6, v119

    move-object v8, v7

    move v7, v5

    const/4 v1, 0x1

    if-ne v14, v1, :cond_95

    if-eqz v18, :cond_94

    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_54
    .catchall {:try_start_ab .. :try_end_ab} :catchall_4e

    goto :goto_7b

    :catchall_4e
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object v9, v6

    goto/16 :goto_b2

    :catch_54
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v122

    move-object v9, v6

    goto/16 :goto_7f

    :cond_94
    :try_start_ac
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    :goto_7b
    move-object v2, v1

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v21, 0x0

    iget v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ac} :catch_56
    .catchall {:try_start_ac .. :try_end_ac} :catchall_50

    move-object/from16 v124, v6

    :try_start_ad
    iget v6, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ad} :catch_55
    .catchall {:try_start_ad .. :try_end_ad} :catchall_4f

    move/from16 v23, v1

    move-object v1, v15

    move/from16 v24, v6

    move-object/from16 v125, v12

    move-object/from16 v12, v124

    move/from16 v6, v21

    move/from16 v21, v7

    move/from16 v7, v23

    move/from16 v126, v9

    move-object v9, v8

    move/from16 v8, v24

    :try_start_ae
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    const-string v5, "fork_high"

    const/4 v6, 0x1

    move-object v1, v15

    move/from16 v4, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    const/16 v24, 0x2

    goto/16 :goto_7d

    :catchall_4f
    move-exception v0

    move/from16 v126, v9

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v9, v124

    move/from16 v26, v126

    goto/16 :goto_b2

    :catch_55
    move-exception v0

    move/from16 v126, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v122

    move-object/from16 v9, v124

    move/from16 v26, v126

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :catchall_50
    move-exception v0

    move/from16 v126, v9

    move-object v9, v6

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move/from16 v26, v126

    goto/16 :goto_b2

    :catch_56
    move-exception v0

    move/from16 v126, v9

    move-object v9, v6

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v122

    move/from16 v26, v126

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_95
    move/from16 v21, v7

    move/from16 v126, v9

    move-object/from16 v125, v12

    move-object v12, v6

    move-object v9, v8

    const/4 v8, 0x2

    if-ne v14, v8, :cond_97

    if-eqz v18, :cond_96

    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    goto :goto_7c

    :cond_96
    iget-object v1, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    :goto_7c
    move-object v2, v1

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v23, v1

    move-object v1, v15

    move/from16 v24, v8

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_7d

    :cond_97
    move/from16 v24, v8

    :goto_7d
    move/from16 v9, v126

    goto/16 :goto_7e

    :catch_57
    move-exception v0

    move/from16 v126, v9

    move-object/from16 v37, v6

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move/from16 v26, v126

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_98
    move/from16 v19, v8

    move/from16 v126, v9

    move-object/from16 v125, v12

    move-object/from16 v122, v117

    move-object/from16 v12, v119

    const/16 v24, 0x2

    move-object v9, v7

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]forked proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s pkgName is null, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ae} :catch_58
    .catchall {:try_start_ae .. :try_end_ae} :catchall_51

    goto :goto_7d

    :goto_7e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v119, v12

    move/from16 v8, v19

    move-object/from16 v117, v122

    move-object/from16 v12, v125

    goto/16 :goto_74

    :catchall_51
    move-exception v0

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move/from16 v26, v126

    goto/16 :goto_b2

    :catch_58
    move-exception v0

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v122

    move/from16 v26, v126

    :goto_7f
    move-object v15, v10

    :goto_80
    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_99
    move/from16 v19, v8

    move/from16 v126, v9

    move-object/from16 v125, v12

    move-object/from16 v122, v117

    move-object/from16 v12, v119

    const/16 v24, 0x2

    move/from16 v18, v0

    goto :goto_81

    :catchall_52
    move-exception v0

    move/from16 v126, v9

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    move/from16 v26, v126

    goto/16 :goto_b2

    :catch_59
    move-exception v0

    move/from16 v126, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    move-object/from16 v9, v119

    move/from16 v26, v126

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_9a
    move/from16 v19, v8

    move-object/from16 v125, v12

    move-object/from16 v122, v117

    move-object/from16 v12, v119

    const/16 v24, 0x2

    :goto_81
    move-object/from16 v8, v122

    :try_start_af
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_af} :catch_7f
    .catchall {:try_start_af .. :try_end_af} :catchall_71

    move/from16 v21, v9

    :goto_82
    :try_start_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b0} :catch_7e
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_70

    if-eqz v1, :cond_b0

    :try_start_b1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v5, v1

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v3, 0x3e7

    if-ne v1, v3, :cond_9b

    const/4 v1, 0x1

    goto :goto_83

    :cond_9b
    const/4 v1, 0x0

    :goto_83
    move/from16 v23, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move v2, v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b1} :catch_70
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_67

    if-lez v1, :cond_9c

    :try_start_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkgName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " usage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b2} :catch_5a
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_53

    goto :goto_84

    :catchall_53
    move-exception v0

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    goto/16 :goto_6f

    :catch_5a
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    goto/16 :goto_7f

    :cond_9c
    :goto_84
    :try_start_b3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v3, v3, v14
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b3} :catch_70
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_67

    if-lt v1, v3, :cond_a6

    :try_start_b4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v3, v3, v14

    if-ge v1, v3, :cond_a6

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b4} :catch_64
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_5d

    if-eqz v1, :cond_9d

    :try_start_b5
    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v127, v0

    const-string v0, "[BgDetect] skip pkg "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(uid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), reason= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b5} :catch_5a
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_53

    nop

    move-object/from16 v0, v127

    goto/16 :goto_82

    :cond_9d
    move-object/from16 v127, v0

    if-nez v14, :cond_a1

    :try_start_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b6} :catch_5c
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_55

    if-eqz v23, :cond_9e

    :try_start_b7
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b7} :catch_5a
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_53

    goto :goto_85

    :cond_9e
    :try_start_b8
    iget-object v0, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    :goto_85
    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v29
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b8} :catch_5c
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_55

    move-object v1, v15

    move v3, v2

    move-object v2, v0

    move v0, v3

    const/16 v36, 0x3e7

    move-object v3, v4

    move-object/from16 v128, v4

    move/from16 v4, v26

    move-object/from16 v129, v13

    move-object v13, v5

    move/from16 v5, v27

    move-object/from16 v130, v11

    move-object v11, v6

    move/from16 v6, v28

    move-object/from16 v26, v8

    move/from16 v8, v29

    :try_start_b9
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, v128

    move v3, v7

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v6, v128

    goto/16 :goto_86

    :cond_9f
    move v0, v2

    move-object/from16 v128, v4

    move-object/from16 v26, v8

    move-object/from16 v130, v11

    move-object/from16 v129, v13

    const/16 v36, 0x3e7

    move-object v13, v5

    move-object v11, v6

    move-object/from16 v6, v128

    invoke-virtual {v15, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold, kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_86

    :cond_a0
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] total usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " over thold, force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v15, v6, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_b9} :catch_5b
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_54

    :goto_86
    add-int/lit8 v21, v21, 0x1

    move-object/from16 v138, v6

    move-object/from16 v28, v9

    move-object/from16 v139, v10

    move-object v5, v11

    move-object/from16 v140, v12

    move-object v4, v13

    move-object v6, v15

    move/from16 v1, v24

    move-object/from16 v133, v26

    move-object/from16 v34, v35

    move-object/from16 v136, v57

    move-object/from16 v132, v65

    move-object/from16 v19, v87

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v3, v99

    move-wide/from16 v42, v115

    move-object/from16 v131, v120

    move-object/from16 v26, v125

    move-object/from16 v2, v129

    move-object/from16 v134, v130

    goto/16 :goto_8d

    :catchall_54
    move-exception v0

    move-object v9, v12

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v38, v129

    goto/16 :goto_b2

    :catch_5b
    move-exception v0

    move-object v9, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v37, v26

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v38, v129

    move-object/from16 v23, v130

    move-object v15, v10

    move/from16 v26, v21

    goto/16 :goto_80

    :catchall_55
    move-exception v0

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    goto/16 :goto_b2

    :catch_5c
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_a1
    move v0, v2

    move-object/from16 v26, v8

    move-object/from16 v130, v11

    move-object/from16 v129, v13

    const/16 v36, 0x3e7

    move-object v13, v5

    move-object v11, v6

    move-object v6, v4

    const/4 v1, 0x1

    if-ne v14, v1, :cond_a3

    :try_start_ba
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] HighPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold # add forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ba} :catch_5f
    .catchall {:try_start_ba .. :try_end_ba} :catchall_58

    if-eqz v23, :cond_a2

    :try_start_bb
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bb} :catch_5b
    .catchall {:try_start_bb .. :try_end_bb} :catchall_54

    goto :goto_87

    :cond_a2
    :try_start_bc
    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    :goto_87
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v27
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bc} :catch_5f
    .catchall {:try_start_bc .. :try_end_bc} :catchall_58

    move-object v8, v15

    move-object/from16 v28, v9

    move-object/from16 v34, v35

    move-object/from16 v1, v99

    move-object/from16 v131, v120

    move-object v9, v2

    move-object v2, v10

    move-object/from16 v35, v89

    move-object v10, v6

    move-object/from16 v135, v11

    move-object/from16 v133, v26

    move-object/from16 v132, v65

    move-wide/from16 v42, v115

    move-object/from16 v134, v130

    move v11, v3

    move-object v3, v12

    move-object/from16 v24, v88

    move-object/from16 v26, v125

    move v12, v4

    move-object/from16 v137, v13

    move-object/from16 v136, v57

    move-object/from16 v19, v87

    move-object/from16 v4, v129

    move v13, v5

    move v5, v14

    move v14, v7

    move/from16 v15, v27

    :try_start_bd
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v8, "accu_high"
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_bd} :catch_5e
    .catchall {:try_start_bd .. :try_end_bd} :catchall_57

    const/4 v9, 0x1

    move-object v15, v1

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v6

    move-object v13, v3

    move v3, v7

    move-object v12, v4

    move v4, v0

    move v11, v5

    move-object v5, v8

    move-object v10, v6

    move v6, v9

    :try_start_be
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_be} :catch_5d
    .catchall {:try_start_be .. :try_end_be} :catchall_56

    move-object/from16 v6, p0

    move-object/from16 v138, v10

    move-object v2, v12

    move-object/from16 v140, v13

    move-object/from16 v139, v14

    move-object v3, v15

    move-object/from16 v5, v135

    move-object/from16 v4, v137

    const/4 v1, 0x2

    goto/16 :goto_8d

    :catchall_56
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_88

    :catch_5d
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_89

    :catchall_57
    move-exception v0

    move-object/from16 v2, p0

    move-object v9, v3

    move-object/from16 v38, v4

    move v12, v5

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v27, v132

    move-object/from16 v13, v136

    goto/16 :goto_b2

    :catch_5e
    move-exception v0

    move-object/from16 v36, v1

    move-object v15, v2

    move-object v9, v3

    move-object/from16 v38, v4

    move v12, v5

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v13, v136

    move-object/from16 v2, p0

    goto/16 :goto_aa

    :catchall_58
    move-exception v0

    move-object v13, v12

    move-object/from16 v34, v35

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v2, p0

    move-object v9, v13

    move v12, v14

    move/from16 v26, v21

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v129

    goto/16 :goto_b2

    :catch_5f
    move-exception v0

    move v11, v14

    move-object/from16 v34, v35

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v2, p0

    move-object v15, v10

    move-object v9, v12

    move-object/from16 v37, v26

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v14, v67

    move-object/from16 v36, v99

    move-object/from16 v10, v120

    move-object/from16 v38, v129

    move-object/from16 v23, v130

    move v12, v11

    move/from16 v26, v21

    move-object/from16 v11, v66

    goto/16 :goto_aa

    :cond_a3
    move-object/from16 v28, v9

    move-object/from16 v135, v11

    move-object/from16 v137, v13

    move v11, v14

    move-object/from16 v133, v26

    move-object/from16 v34, v35

    move-object/from16 v136, v57

    move-object/from16 v132, v65

    move-object/from16 v19, v87

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v15, v99

    move-wide/from16 v42, v115

    move-object/from16 v131, v120

    move-object/from16 v26, v125

    move-object/from16 v134, v130

    move-object v14, v10

    move-object v13, v12

    move-object/from16 v12, v129

    move-object v10, v6

    const/4 v1, 0x2

    if-ne v11, v1, :cond_a5

    :try_start_bf
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] MediumPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v137

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " over thold  # add forked "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v135

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") level "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_bf} :catch_63
    .catchall {:try_start_bf .. :try_end_bf} :catchall_5c

    if-eqz v23, :cond_a4

    move-object/from16 v6, p0

    :try_start_c0
    iget-object v2, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c0} :catch_60
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_59

    goto :goto_8a

    :catchall_59
    move-exception v0

    move-object v2, v6

    :goto_88
    move-object/from16 v38, v12

    move-object v9, v13

    move/from16 v26, v21

    move-object/from16 v14, v67

    move-object/from16 v27, v132

    move-object/from16 v13, v136

    move v12, v11

    move-object/from16 v11, v66

    goto/16 :goto_b2

    :catch_60
    move-exception v0

    move-object v2, v6

    :goto_89
    move-object/from16 v38, v12

    move-object v9, v13

    move-object/from16 v36, v15

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v13, v136

    move v12, v11

    move-object v15, v14

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    goto/16 :goto_aa

    :cond_a4
    move-object/from16 v6, p0

    :try_start_c1
    iget-object v2, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    :goto_8a
    move-object v9, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v27, 0x0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v29
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c1} :catch_62
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_5b

    move-object v8, v6

    move-object/from16 v138, v10

    move v11, v2

    move-object v2, v12

    move v12, v3

    move-object v3, v13

    move/from16 v13, v27

    move-object/from16 v139, v14

    move v14, v7

    move-object/from16 v140, v3

    move-object v3, v15

    move/from16 v15, v29

    :try_start_c2
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c2} :catch_61
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_5a

    goto/16 :goto_8d

    :catchall_5a
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v27, v132

    move-object/from16 v13, v136

    move-object/from16 v9, v140

    move/from16 v12, p1

    goto/16 :goto_b2

    :catch_61
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v13, v136

    move-object/from16 v15, v139

    move-object/from16 v9, v140

    move/from16 v12, p1

    goto/16 :goto_aa

    :catchall_5b
    move-exception v0

    move-object v2, v6

    goto :goto_8b

    :catch_62
    move-exception v0

    move-object v2, v6

    goto :goto_8c

    :catchall_5c
    move-exception v0

    move-object/from16 v2, p0

    :goto_8b
    move-object/from16 v38, v12

    move-object v9, v13

    move/from16 v26, v21

    move-object/from16 v14, v67

    move-object/from16 v27, v132

    move-object/from16 v13, v136

    move v12, v11

    move-object/from16 v11, v66

    goto/16 :goto_b2

    :catch_63
    move-exception v0

    move-object/from16 v2, p0

    :goto_8c
    move-object/from16 v38, v12

    move-object v9, v13

    move-object/from16 v36, v15

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v13, v136

    move v12, v11

    move-object v15, v14

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    goto/16 :goto_aa

    :cond_a5
    move-object/from16 v6, p0

    move-object/from16 v138, v10

    move-object v2, v12

    move-object/from16 v140, v13

    move-object/from16 v139, v14

    move-object v3, v15

    move-object/from16 v5, v135

    move-object/from16 v4, v137

    goto/16 :goto_8d

    :catchall_5d
    move-exception v0

    move-object/from16 v34, v35

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    goto/16 :goto_b2

    :catch_64
    move-exception v0

    move-object/from16 v34, v35

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v37, v8

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v36, v99

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :cond_a6
    move-object/from16 v127, v0

    move v0, v2

    move-object/from16 v138, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v133, v8

    move-object/from16 v28, v9

    move-object/from16 v139, v10

    move-object/from16 v134, v11

    move-object/from16 v140, v12

    move-object v2, v13

    move-object v6, v15

    move/from16 v1, v24

    move-object/from16 v34, v35

    move-object/from16 v136, v57

    move-object/from16 v132, v65

    move-object/from16 v19, v87

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v3, v99

    move-wide/from16 v42, v115

    move-object/from16 v131, v120

    move-object/from16 v26, v125

    :goto_8d
    const/4 v10, 0x1

    :try_start_c3
    new-array v8, v10, [I

    const/4 v11, 0x0

    aput v38, v8, v11

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c3} :catch_6f
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_66

    if-eqz v8, :cond_af

    const/4 v8, 0x3

    move/from16 v12, p1

    if-ne v12, v8, :cond_ae

    :try_start_c4
    sget-boolean v9, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    if-eqz v9, :cond_ae

    iget-boolean v9, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c4} :catch_6e
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_65

    if-nez v9, :cond_ae

    move-object/from16 v13, v136

    move-object/from16 v9, v138

    :try_start_c5
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c5} :catch_6d
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_64

    if-nez v14, :cond_a8

    move-object/from16 v14, v67

    :try_start_c6
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c6} :catch_65
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_5e

    if-lt v15, v1, :cond_a7

    goto :goto_90

    :cond_a7
    move-object/from16 v11, v66

    move-object/from16 v143, v132

    move-object/from16 v15, v139

    goto/16 :goto_94

    :catchall_5e
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v27, v132

    :goto_8e
    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_65
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v15, v139

    :goto_8f
    move-object/from16 v9, v140

    goto/16 :goto_aa

    :cond_a8
    move-object/from16 v14, v67

    :goto_90
    move-object/from16 v15, v139

    :try_start_c7
    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c7} :catch_6c
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_63

    if-eqz v1, :cond_a9

    :try_start_c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(uid "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), reason= "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c8} :catch_66
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_5e

    nop

    move-object/from16 v11, v66

    move-object/from16 v143, v132

    goto/16 :goto_94

    :catch_66
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v11, v66

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    :goto_91
    move-object/from16 v37, v133

    move-object/from16 v23, v134

    goto :goto_8f

    :cond_a9
    move-object/from16 v8, v132

    :try_start_c9
    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_c9} :catch_6b
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_62

    if-eqz v1, :cond_aa

    :try_start_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "(uid "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "), reason= small adj"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ca} :catch_67
    .catchall {:try_start_ca .. :try_end_ca} :catchall_5f

    nop

    move-object/from16 v143, v8

    move-object/from16 v11, v66

    goto/16 :goto_94

    :catchall_5f
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v11, v66

    goto/16 :goto_8e

    :catch_67
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v11, v66

    :goto_92
    move-object/from16 v10, v131

    goto :goto_91

    :cond_aa
    move-object/from16 v11, v66

    :try_start_cb
    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cb} :catch_6a
    .catchall {:try_start_cb .. :try_end_cb} :catchall_61

    if-eqz v1, :cond_ab

    :try_start_cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(uid "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "), reason= sys alert window"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cc} :catch_68
    .catchall {:try_start_cc .. :try_end_cc} :catchall_60

    nop

    :goto_93
    move-object/from16 v143, v8

    goto/16 :goto_94

    :catchall_60
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    goto/16 :goto_8e

    :catch_68
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    goto :goto_92

    :cond_ab
    :try_start_cd
    invoke-direct {v6, v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkWidgetPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_cd} :catch_6a
    .catchall {:try_start_cd .. :try_end_cd} :catchall_61

    if-eqz v1, :cond_ac

    :try_start_ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(uid "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "), reason= widget added"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ce} :catch_68
    .catchall {:try_start_ce .. :try_end_ce} :catchall_60

    goto :goto_93

    :cond_ac
    :try_start_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    move/from16 v141, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move/from16 v142, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_cf} :catch_6a
    .catchall {:try_start_cf .. :try_end_cf} :catchall_61

    move-object/from16 v143, v8

    :try_start_d0
    const-string v8, "[BgDetect][RNK] kill "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") usage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v0, v7}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d0} :catch_69
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_69

    goto/16 :goto_94

    :catch_69
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v10, v131

    goto/16 :goto_99

    :cond_ad
    move-object/from16 v143, v8

    goto/16 :goto_94

    :catchall_61
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_6a
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :catchall_62
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_6b
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v27, v8

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :catchall_63
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v27, v132

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_6c
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :catchall_64
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v27, v132

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_6d
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v15, v139

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :catchall_65
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v13, v136

    goto/16 :goto_95

    :catch_6e
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v13, v136

    move-object/from16 v15, v139

    goto/16 :goto_96

    :cond_ae
    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v143, v132

    move-object/from16 v13, v136

    move-object/from16 v15, v139

    goto :goto_94

    :cond_af
    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v143, v132

    move-object/from16 v13, v136

    move-object/from16 v15, v139

    move/from16 v12, p1

    :goto_94
    move-object/from16 v99, v3

    move-object/from16 v66, v11

    move-object/from16 v57, v13

    move-object/from16 v67, v14

    move-object v10, v15

    move-object/from16 v87, v19

    move-object/from16 v88, v24

    move-object/from16 v125, v26

    move-object/from16 v89, v35

    move-wide/from16 v115, v42

    move-object/from16 v0, v127

    move-object/from16 v120, v131

    move-object/from16 v8, v133

    move-object/from16 v11, v134

    move-object/from16 v65, v143

    const/16 v19, 0x3

    const/16 v24, 0x2

    move-object v13, v2

    move-object v15, v6

    move v14, v12

    move-object/from16 v35, v34

    move-object/from16 v12, v140

    goto/16 :goto_82

    :catchall_66
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v13, v136

    move/from16 v12, p1

    :goto_95
    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v27, v132

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_6f
    move-exception v0

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v13, v136

    move-object/from16 v15, v139

    move/from16 v12, p1

    :goto_96
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    move-object/from16 v10, v131

    move-object/from16 v27, v132

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :catchall_67
    move-exception v0

    move-object/from16 v140, v12

    move-object v2, v13

    move v12, v14

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v38, v2

    move-object v2, v15

    move/from16 v26, v21

    move-object/from16 v27, v65

    move-object/from16 v9, v140

    goto/16 :goto_b2

    :catch_70
    move-exception v0

    move-object/from16 v134, v11

    move-object/from16 v140, v12

    move-object v2, v13

    move v12, v14

    move-object v6, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object v15, v10

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v37, v8

    move/from16 v26, v21

    move-object/from16 v27, v65

    move-object/from16 v36, v99

    move-object/from16 v10, v120

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    goto/16 :goto_aa

    :cond_b0
    move-object/from16 v133, v8

    move-object/from16 v134, v11

    move-object/from16 v140, v12

    move-object v2, v13

    move v12, v14

    move-object v6, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v143, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v19, v87

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v3, v99

    move-wide/from16 v42, v115

    move-object/from16 v131, v120

    move-object/from16 v26, v125

    move-object v15, v10

    if-eqz v40, :cond_bb

    const/4 v0, 0x1

    move-object/from16 v10, v131

    :try_start_d1
    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d1} :catch_7d
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_6f

    if-eqz v4, :cond_b2

    :try_start_d2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v9, v9, v12
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d2} :catch_72
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_69

    if-lt v8, v9, :cond_b1

    add-int/lit8 v9, v21, 0x1

    const/4 v0, 0x0

    :try_start_d3
    const-string v1, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v144, v0

    const-string v0, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " usg "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d3} :catch_71
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_68

    goto :goto_9a

    :catchall_68
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v9

    goto :goto_98

    :catch_71
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v9

    goto :goto_99

    :cond_b1
    goto :goto_97

    :catchall_69
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v26, v21

    :goto_98
    move-object/from16 v9, v140

    move-object/from16 v27, v143

    goto/16 :goto_b2

    :catch_72
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v26, v21

    :goto_99
    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    goto/16 :goto_aa

    :cond_b2
    move/from16 v144, v0

    move/from16 v9, v21

    :goto_9a
    if-nez v9, :cond_ba

    :try_start_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect][PD] start review BG procs : screen state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d4} :catch_7c
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_6e

    move-object/from16 v8, v133

    :try_start_d5
    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v4, v1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d5} :catch_7b
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_6e

    move-object/from16 v7, v134

    :try_start_d6
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v145, v0

    move-object/from16 v0, v21

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v146, v5

    move-object/from16 v5, v21

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d6} :catch_7a
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_6e

    move-object/from16 v23, v7

    move v7, v5

    :try_start_d7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d7} :catch_79
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_6e

    move/from16 v147, v9

    const/16 v9, 0x3e7

    if-ne v5, v9, :cond_b3

    const/4 v5, 0x1

    goto :goto_9c

    :cond_b3
    const/4 v5, 0x0

    :goto_9c
    move/from16 v21, v5

    :try_start_d8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v148, v1

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    if-lt v9, v1, :cond_b8

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_d8} :catch_78
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_6d

    if-eqz v1, :cond_b4

    :try_start_d9
    const-string v1, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_d9} :catch_74
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_6a

    move-object/from16 v149, v8

    :try_start_da
    const-string v8, "[BgDetect][PD] skip pkg "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(uid "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), reason= "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_da} :catch_73
    .catchall {:try_start_da .. :try_end_da} :catchall_6a

    nop

    move-object/from16 v134, v23

    move-object/from16 v0, v145

    move/from16 v9, v147

    move-object/from16 v8, v149

    goto/16 :goto_9b

    :catch_73
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    move-object/from16 v37, v149

    goto/16 :goto_aa

    :catchall_6a
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    goto/16 :goto_a8

    :catch_74
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :cond_b4
    move-object/from16 v149, v8

    :try_start_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_db} :catch_77
    .catchall {:try_start_db .. :try_end_db} :catchall_6d

    if-eqz v1, :cond_b6

    :try_start_dc
    const-string v1, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_dc} :catch_76
    .catchall {:try_start_dc .. :try_end_dc} :catchall_6c

    if-eqz v21, :cond_b5

    :try_start_dd
    iget-object v1, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_dd} :catch_73
    .catchall {:try_start_dd .. :try_end_dd} :catchall_6a

    goto :goto_9d

    :cond_b5
    :try_start_de
    iget-object v1, v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    :goto_9d
    move-object v8, v1

    const/4 v9, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v29
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_de} :catch_76
    .catchall {:try_start_de .. :try_end_de} :catchall_6c

    move-object/from16 v150, v148

    move-object v1, v6

    move-object/from16 v38, v2

    move-object v2, v8

    move-object/from16 v36, v3

    move-object/from16 v8, v140

    move-object v3, v0

    move-object/from16 v151, v4

    move v4, v9

    move/from16 v152, v5

    move-object/from16 v9, v146

    move/from16 v5, v27

    move/from16 v6, v28

    move-object/from16 v153, v9

    move-object/from16 v27, v143

    move-object/from16 v37, v149

    move-object v9, v8

    move/from16 v8, v29

    :try_start_df
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v7

    move/from16 v4, v152

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_df} :catch_75
    .catchall {:try_start_df .. :try_end_df} :catchall_6b

    move-object/from16 v2, p0

    move-object/from16 v6, v150

    move-object/from16 v3, v151

    move/from16 v8, v152

    goto/16 :goto_9e

    :catchall_6b
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_a8

    :catch_75
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_a9

    :catchall_6c
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move-object/from16 v2, p0

    goto/16 :goto_a1

    :catch_76
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move-object/from16 v37, v149

    move-object/from16 v2, p0

    goto/16 :goto_9f

    :cond_b6
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object/from16 v151, v4

    move/from16 v152, v5

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move-object/from16 v153, v146

    move-object/from16 v150, v148

    move-object/from16 v37, v149

    move-object/from16 v2, p0

    :try_start_e0
    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, v151

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect][PD] total usage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v150

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " over thold, kill "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") level "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v8, v152

    invoke-virtual {v1, v4, v8, v5}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_9e

    :cond_b7
    move-object/from16 v6, v150

    move-object/from16 v3, v151

    move/from16 v8, v152

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] total usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " over thold, force stop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v2, v0, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9e
    const/4 v0, 0x0

    move/from16 v144, v0

    goto :goto_a0

    :catch_77
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move-object/from16 v37, v149

    :goto_9f
    move/from16 v26, v147

    goto/16 :goto_aa

    :cond_b8
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    :goto_a0
    move-object v6, v2

    move-object/from16 v140, v9

    move-object/from16 v134, v23

    move-object/from16 v143, v27

    move-object/from16 v3, v36

    move-object/from16 v8, v37

    move-object/from16 v2, v38

    move-object/from16 v0, v145

    move/from16 v9, v147

    goto/16 :goto_9b

    :catchall_6d
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    :goto_a1
    move/from16 v26, v147

    goto/16 :goto_a3

    :catch_78
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :catch_79
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move/from16 v147, v9

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :catch_7a
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v23, v7

    move-object/from16 v37, v8

    move/from16 v147, v9

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :cond_b9
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move/from16 v147, v9

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    goto :goto_a2

    :catch_7b
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v8

    move/from16 v147, v9

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :catchall_6e
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move/from16 v147, v9

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_b2

    :catch_7c
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v147, v9

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v147

    goto/16 :goto_aa

    :cond_ba
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move/from16 v147, v9

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    const/16 v144, 0x0

    :goto_a2
    if-eqz v144, :cond_bc

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    if-eqz v0, :cond_bc

    const-string v0, "OHPD"

    const-string v1, "[BgDetect][PD] notify OPBR"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6df

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e0} :catch_85
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_78

    goto :goto_a4

    :catchall_6f
    move-exception v0

    move-object/from16 v38, v2

    move-object v2, v6

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v21

    :goto_a3
    goto/16 :goto_b2

    :catch_7d
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v26, v21

    goto/16 :goto_aa

    :cond_bb
    move-object/from16 v38, v2

    move-object/from16 v36, v3

    move-object v2, v6

    move-object/from16 v10, v131

    move-object/from16 v37, v133

    move-object/from16 v23, v134

    move-object/from16 v9, v140

    move-object/from16 v27, v143

    move/from16 v147, v21

    :cond_bc
    :goto_a4
    goto/16 :goto_a7

    :catchall_70
    move-exception v0

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move/from16 v26, v21

    goto/16 :goto_b2

    :catch_7e
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object v15, v10

    move-object/from16 v10, v120

    move/from16 v26, v21

    goto/16 :goto_aa

    :catchall_71
    move-exception v0

    move/from16 v126, v9

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move/from16 v26, v126

    goto/16 :goto_b2

    :catch_7f
    move-exception v0

    move-object/from16 v37, v8

    move/from16 v126, v9

    move-object/from16 v23, v11

    move-object v9, v12

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object v15, v10

    move-object/from16 v10, v120

    move/from16 v26, v126

    goto/16 :goto_aa

    :catchall_72
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-wide/from16 v42, v115

    move-object/from16 v9, v119

    goto/16 :goto_b2

    :catch_80
    move-exception v0

    move/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v38, v13

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v36, v99

    move-wide/from16 v42, v115

    move-object/from16 v37, v117

    move-object/from16 v9, v119

    move-object v15, v10

    move-object/from16 v10, v120

    goto/16 :goto_aa

    :catchall_73
    move-exception v0

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_81
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    move-wide/from16 v42, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object/from16 v37, v106

    move-object v15, v10

    move-object v10, v9

    move-object/from16 v9, v73

    goto/16 :goto_aa

    :catchall_74
    move-exception v0

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v38, v93

    goto/16 :goto_b2

    :catch_82
    move-exception v0

    move-object/from16 v37, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v34, v35

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v88

    move-object/from16 v35, v89

    move-object/from16 v23, v90

    move-object/from16 v20, v91

    move-object/from16 v38, v93

    move-object/from16 v36, v99

    move-object v15, v10

    move-object/from16 v10, v92

    goto/16 :goto_aa

    :catchall_75
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    goto/16 :goto_b2

    :catch_83
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v36, v9

    move-object/from16 v35, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :catchall_76
    move-exception v0

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    goto/16 :goto_b2

    :catch_84
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v35, v11

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    goto/16 :goto_aa

    :cond_bd
    move-object/from16 v23, v4

    move-object/from16 v37, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move v12, v14

    move-object v2, v15

    move-object/from16 v13, v57

    move-object/from16 v27, v65

    move-object/from16 v11, v66

    move-object/from16 v14, v67

    move-object/from16 v34, v68

    move-object/from16 v35, v69

    move-object/from16 v38, v72

    move-object/from16 v9, v73

    move-object/from16 v32, v74

    move-wide/from16 v42, v75

    move-object/from16 v24, v78

    move-object/from16 v36, v80

    move-object v15, v10

    move-object v10, v7

    :try_start_e1
    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_c0

    iget-object v1, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e1} :catch_86
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_7c

    :try_start_e2
    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-wide v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_be

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    iget-wide v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v6, v4, v12

    :cond_be
    goto :goto_a5

    :cond_bf
    monitor-exit v1

    goto :goto_a6

    :catchall_77
    move-exception v0

    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_77

    :try_start_e3
    throw v0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e3} :catch_86
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_7c

    :cond_c0
    :goto_a6
    move/from16 v147, v26

    :goto_a7
    :try_start_e4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e4} :catch_85
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_78

    goto :goto_ab

    :catchall_78
    move-exception v0

    :goto_a8
    move/from16 v26, v147

    goto/16 :goto_b2

    :catch_85
    move-exception v0

    :goto_a9
    move/from16 v26, v147

    goto :goto_aa

    :catch_86
    move-exception v0

    goto :goto_aa

    :catch_87
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object/from16 v36, v50

    move-object/from16 v37, v51

    move-object/from16 v10, v52

    move-object/from16 v23, v53

    move-object/from16 v32, v54

    move-object/from16 v20, v55

    move-object v15, v1

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    :goto_aa
    :try_start_e5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_7c

    move/from16 v147, v26

    :goto_ab
    :try_start_e6
    monitor-exit v33
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_78

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x5b

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c2

    if-nez v12, :cond_c1

    if-nez v39, :cond_c1

    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->INIT_OBSERVE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController;->snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    goto :goto_ac

    :cond_c1
    if-nez v12, :cond_c2

    if-eqz v39, :cond_c2

    iget-object v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusBGController;->snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    :cond_c2
    :goto_ac
    :try_start_e7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c5

    const-string v0, ""

    move-object v1, v0

    const/4 v0, 0x0

    :goto_ad
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c4

    if-nez v0, :cond_c3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_ae

    :cond_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :goto_ae
    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_c4
    new-instance v0, Lcom/android/server/SystemEvent;

    const-string v3, "ForceStopApplication"

    invoke-direct {v0, v3}, Lcom/android/server/SystemEvent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/SystemEvent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemEventCollector;->submit(Lcom/android/server/SystemEvent;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_e7} :catch_88

    goto :goto_af

    :catch_88
    move-exception v0

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MDM_Collect] Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_c5
    :goto_af
    nop

    :goto_b0
    if-eqz v40, :cond_c6

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    :try_start_e8
    iput-boolean v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    monitor-exit v1

    goto :goto_b1

    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_79

    throw v0

    :cond_c6
    :goto_b1
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_c7

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    const/4 v1, 0x0

    return v1

    :catchall_7a
    move-exception v0

    move/from16 v40, v3

    move/from16 v39, v4

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v35, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v38, v44

    move-object v14, v5

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    goto :goto_b2

    :catchall_7b
    move-exception v0

    move/from16 v40, v3

    move-object/from16 v41, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move/from16 v39, v35

    move-object/from16 v38, v44

    move-object v14, v5

    move-object/from16 v35, v10

    move-object/from16 v27, v11

    move-object/from16 v11, v49

    :goto_b2
    :try_start_e9
    monitor-exit v33
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_7c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7c
    move-exception v0

    goto :goto_b2

    :catchall_7d
    move-exception v0

    move/from16 v47, v2

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move/from16 v39, v35

    move-object/from16 v27, v11

    move/from16 v1, v39

    goto/16 :goto_b3

    :catchall_7e
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move/from16 v39, v35

    move-object/from16 v27, v11

    move/from16 v1, v39

    goto :goto_b3

    :catchall_7f
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    move/from16 v39, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v9, v32

    move-object/from16 v27, v11

    move/from16 v1, v39

    goto :goto_b3

    :catchall_80
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    move-object v9, v8

    move/from16 v39, v10

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object/from16 v22, v27

    move-object/from16 v27, v11

    move/from16 v1, v39

    goto :goto_b3

    :catchall_81
    move-exception v0

    move/from16 v47, v2

    move/from16 v36, v3

    move-object/from16 v37, v4

    move/from16 v26, v9

    move-object/from16 v22, v10

    move-object/from16 v27, v11

    move-object/from16 v24, v12

    move v12, v14

    move-object v2, v15

    move-object v9, v8

    :goto_b3
    :try_start_ea
    monitor-exit v6
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_82

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_82
    move-exception v0

    goto :goto_b3
.end method

.method private checkIfNotificationExisted(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    const-string v2, "android"

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    array-length v4, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto :goto_3

    :cond_0
    if-ne p1, v5, :cond_1

    const v4, 0x33954b8

    goto :goto_0

    :cond_1
    const v4, 0x33954b9

    :goto_0
    array-length v5, v2

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v6, v2, v3

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-ne v7, v4, :cond_3

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect][Notification] notification exists, type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect][Notification] notification does NOT exists, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    :goto_3
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "OHPD"

    const-string v5, "[BgDetect][Notification] activeList null"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v3
.end method

.method private checkLightIdleCameraProcessKillLocked()V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] checkLightIdleCameraProcessKillLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Try to judge camera pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastCameraProcUsage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", threshold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableMonitorCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableKillBusyCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "OHPD"

    const-string v7, "[LightIdle] Killing it !"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v6, v6, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    const/4 v3, 0x1

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    :cond_3
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6e6

    invoke-virtual {v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    iput-object v7, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int v7, v4

    iput v7, v6, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    iput v7, v6, Landroid/os/Message;->arg2:I

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v7, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] checkLightIdleCameraProcessKillLocked in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private checkLightIdleProcessKillLocked()V
    .locals 40

    move-object/from16 v11, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] checkLightIdleProcessKillLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget-object v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v2, v0

    sget-object v17, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v17

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    :goto_0
    if-lez v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    :try_start_1
    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    sget-boolean v19, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    if-eqz v19, :cond_1

    :try_start_2
    const-string v1, "OHPD"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v21, v4

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v22, v6

    :try_start_4
    const-string v6, "[LightIdle] i="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", userId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", persistent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v10, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.uid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.flags=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const/16 v0, 0x10

    invoke-static {v6, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shortName="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object/from16 v3, v22

    move-object v5, v2

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object/from16 v3, v22

    move-object v5, v2

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    goto/16 :goto_13

    :catch_1
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    goto/16 :goto_11

    :cond_1
    move/from16 v23, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    :goto_1
    :try_start_5
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_4

    :try_start_6
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/4 v6, 0x0

    aget v4, v4, v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v24, v7

    int-to-long v6, v4

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    :try_start_7
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] Observe GMS process-["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], Uid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " busy("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "%)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "[LightIdle] Kill GMS Busy ProcessRecord"

    const/4 v7, 0x1

    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    nop

    :goto_2
    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v33, v9

    move-object/from16 v3, v22

    move-object/from16 v32, v24

    move-object v5, v2

    move-object/from16 v2, v21

    goto/16 :goto_7

    :cond_3
    const/4 v7, 0x1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object/from16 v3, v22

    move-object v5, v2

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object v8, v3

    move-object v7, v5

    move-object/from16 v3, v22

    move-object v5, v2

    goto/16 :goto_11

    :cond_4
    move-object/from16 v24, v7

    const/4 v7, 0x1

    :goto_3
    :try_start_8
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v11, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    if-eqz v0, :cond_6

    :try_start_9
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v0, :cond_5

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] skip uid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " due to system packages"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v7, v5

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v4, v24

    move-object v5, v2

    move-object v8, v3

    move-object/from16 v3, v22

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v7, v5

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v4, v24

    move-object v5, v2

    move-object v8, v3

    move-object/from16 v3, v22

    goto/16 :goto_11

    :cond_6
    :try_start_a
    invoke-direct {v11, v5, v3, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateFinishingStatusUidsSet(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V

    const/4 v6, 0x0

    invoke-virtual {v11, v10, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    if-eqz v1, :cond_7

    :try_start_b
    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LightIdle] needCheckProc:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_7
    if-eqz v0, :cond_a

    :try_start_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "[LightIdle] "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget v20, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    const/16 v25, 0x1

    move-object v1, v11

    move-object v4, v2

    move-object v2, v10

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v27, v21

    move-wide v3, v14

    move-object/from16 v29, v5

    move/from16 v5, v18

    move-object/from16 v31, v6

    move-object/from16 v30, v22

    move/from16 v18, v7

    move-object/from16 v32, v24

    move/from16 v7, v19

    move-object/from16 v19, v8

    move/from16 v8, v20

    move-object/from16 v33, v9

    move-object/from16 v9, v16

    move/from16 v34, v0

    move-object v0, v10

    move/from16 v10, v25

    :try_start_d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-nez v1, :cond_8

    :try_start_e
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v2, v27

    :try_start_f
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move-object/from16 v3, v30

    :try_start_10
    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move-object/from16 v5, v28

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v3, v30

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object/from16 v3, v30

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v3, v30

    move-object/from16 v8, v26

    move-object/from16 v39, v27

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_13

    :catch_6
    move-exception v0

    move-object/from16 v3, v30

    move-object/from16 v8, v26

    move-object/from16 v39, v27

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_11

    :cond_8
    move-object/from16 v2, v27

    move-object/from16 v3, v30

    :try_start_11
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    if-eqz v1, :cond_9

    :try_start_12
    const-string v1, "OHPD"

    move-object/from16 v4, v31

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v5, v28

    goto/16 :goto_8

    :catch_7
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v5, v28

    goto/16 :goto_9

    :cond_9
    move-object/from16 v4, v31

    :goto_4
    :try_start_13
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object/from16 v5, v28

    :try_start_14
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    goto/16 :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_13

    :catch_8
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_11

    :catchall_9
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v3, v30

    move-object/from16 v8, v26

    move-object/from16 v39, v27

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_13

    :catch_9
    move-exception v0

    move-object/from16 v5, v28

    move-object/from16 v3, v30

    move-object/from16 v8, v26

    move-object/from16 v39, v27

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_11

    :cond_a
    move/from16 v34, v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v33, v9

    move-object v0, v10

    move-object/from16 v3, v22

    move-object/from16 v32, v24

    move-object v5, v2

    move-object/from16 v2, v21

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :goto_6
    nop

    :goto_7
    move-object v4, v2

    move-object v6, v3

    move-object v2, v5

    move/from16 v10, v18

    move-object/from16 v8, v19

    move/from16 v0, v23

    move-object/from16 v3, v26

    move-object/from16 v5, v29

    move-object/from16 v7, v32

    move-object/from16 v9, v33

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    :goto_8
    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_13

    :catch_a
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    :goto_9
    move-object/from16 v7, v29

    move-object/from16 v4, v32

    move-object/from16 v38, v33

    goto/16 :goto_11

    :catchall_b
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object/from16 v19, v8

    move-object/from16 v3, v22

    move-object v5, v2

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v4, v24

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object/from16 v19, v8

    move-object/from16 v3, v22

    move-object v5, v2

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v4, v24

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_11

    :catchall_c
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object/from16 v19, v8

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v4, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_13

    :catch_c
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object/from16 v19, v8

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v4, v7

    move-object/from16 v38, v9

    move-object/from16 v39, v21

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_11

    :catchall_d
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object v3, v6

    move-object/from16 v19, v8

    move-object v5, v2

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v38, v9

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_13

    :catch_d
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object v3, v6

    move-object/from16 v19, v8

    move-object v5, v2

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v38, v9

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_11

    :cond_b
    move-object/from16 v26, v3

    move-object/from16 v29, v5

    move-object v3, v6

    move-object/from16 v32, v7

    move-object/from16 v19, v8

    move-object/from16 v33, v9

    const/4 v6, 0x0

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v1, v33

    if-eqz v1, :cond_e

    :try_start_15
    array-length v4, v1

    move v7, v6

    :goto_a
    if-ge v7, v4, :cond_e

    aget-object v8, v1, v7

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    nop

    move/from16 v36, v0

    goto :goto_b

    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v0

    const-string v0, "[LightIdle] skip uid "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " due to audio active"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_b

    :cond_d
    move/from16 v36, v0

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v36

    const/4 v6, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    goto/16 :goto_13

    :catch_e
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    move-object/from16 v4, v32

    goto/16 :goto_11

    :cond_e
    move/from16 v36, v0

    move-object/from16 v4, v32

    if-eqz v4, :cond_10

    const/16 v35, 0x0

    :goto_c
    move/from16 v0, v35

    :try_start_16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_10

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LightIdle] skip uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " due to locked ap : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    :cond_f
    add-int/lit8 v35, v0, 0x1

    goto :goto_c

    :catchall_f
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_13

    :catch_f
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_11

    :cond_10
    :try_start_17
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_18
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    if-eqz v0, :cond_11

    :try_start_18
    const-string v0, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] needKillUidsSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :cond_11
    :try_start_19
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18
    .catchall {:try_start_19 .. :try_end_19} :catchall_17

    if-eqz v0, :cond_12

    :try_start_1a
    const-string v0, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] needSkipUidsSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_f

    :cond_12
    :try_start_1b
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_18
    .catchall {:try_start_1b .. :try_end_1b} :catchall_17

    if-eqz v0, :cond_13

    :try_start_1c
    const-string v0, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] allFinishingUidsSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11
    .catchall {:try_start_1c .. :try_end_1c} :catchall_11

    move-object/from16 v7, v29

    :try_start_1d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    goto :goto_d

    :catchall_10
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto/16 :goto_13

    :catch_10
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto/16 :goto_11

    :catchall_11
    move-exception v0

    move-object/from16 v7, v29

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto/16 :goto_13

    :catch_11
    move-exception v0

    move-object/from16 v7, v29

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto/16 :goto_11

    :cond_13
    move-object/from16 v7, v29

    :goto_d
    :try_start_1e
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_17
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    if-eqz v0, :cond_14

    :try_start_1f
    const-string v0, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LightIdle] nonFinishingUidsSet: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_13
    .catchall {:try_start_1f .. :try_end_1f} :catchall_13

    move-object/from16 v8, v26

    :try_start_20
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_12
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    goto :goto_e

    :catchall_12
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_13

    :catch_12
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_11

    :catchall_13
    move-exception v0

    move-object/from16 v8, v26

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_13

    :catch_13
    move-exception v0

    move-object/from16 v8, v26

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_11

    :cond_14
    move-object/from16 v8, v26

    :goto_e
    :try_start_21
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    move-object/from16 v37, v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_16
    .catchall {:try_start_21 .. :try_end_21} :catchall_15

    move-object/from16 v38, v1

    :try_start_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_15
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    move-object/from16 v39, v2

    :try_start_23
    const-string v2, "[LightIdle][All finishing] kill (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14
    .catchall {:try_start_23 .. :try_end_23} :catchall_19

    goto :goto_10

    :catch_14
    move-exception v0

    goto/16 :goto_11

    :catchall_14
    move-exception v0

    move-object/from16 v39, v2

    goto/16 :goto_13

    :catch_15
    move-exception v0

    move-object/from16 v39, v2

    goto/16 :goto_11

    :cond_15
    move-object/from16 v37, v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    :goto_10
    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    goto :goto_f

    :cond_16
    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_12

    :catchall_15
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto/16 :goto_13

    :catch_16
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    goto :goto_11

    :catchall_16
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto/16 :goto_13

    :catch_17
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    goto :goto_11

    :catchall_17
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto/16 :goto_13

    :catch_18
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v39, v2

    move-object/from16 v8, v26

    move-object/from16 v7, v29

    goto :goto_11

    :catchall_18
    move-exception v0

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    goto :goto_13

    :catch_19
    move-exception v0

    move-object/from16 v39, v4

    move-object v4, v7

    move-object/from16 v19, v8

    move-object/from16 v38, v9

    move-object v8, v3

    move-object v7, v5

    move-object v3, v6

    move-object v5, v2

    :goto_11
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LightIdle] got exception "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    monitor-exit v17
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LightIdle] checkLightIdleProcessKillLocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v12

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void

    :catchall_19
    move-exception v0

    :goto_13
    :try_start_25
    monitor-exit v17
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const-string v1, "android"

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_e

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    goto/16 :goto_6

    :cond_6
    const/4 v2, 0x0

    if-ne p4, v3, :cond_7

    const v4, 0x33954b8

    goto :goto_0

    :cond_7
    const v4, 0x33954b9

    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    if-ge v6, v5, :cond_9

    aget-object v8, v1, v6

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    if-ne v9, v4, :cond_8

    const-string v5, "OHPD"

    const-string v6, "[BgDetect][Notification] notification exists, cancel it"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string v5, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v0, v5, v7, v4, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    :goto_2
    if-nez p4, :cond_b

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iput-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    goto :goto_5

    :cond_b
    if-ne p4, v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iput-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    :cond_d
    :goto_5
    return-void

    :cond_e
    :goto_6
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "OHPD"

    const-string v3, "[BgDetect][Notification] activeList null"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method private checkWidgetPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method private cleanUpNativeMonitorList()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "sdm845"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/nativeproc/proclist"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/nativeproc/proclist"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OHPD"

    const-string v3, "fail to delete native monitor list file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private cleanUpWhenPkgRemoved(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed , userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0

    :goto_0
    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_5
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1
.end method

.method private createNotification(Ljava/lang/String;II)Landroid/app/Notification;
    .locals 22

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    :cond_0
    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    nop

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "OHPD"

    const-string v8, "get highpower pkg label error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x1

    if-ge v0, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v8, 0x50c006b

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v9, 0x50c006a

    invoke-virtual {v0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v9, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification # title:84672619 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification # content:84672618 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification # triggerPkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",pkgLabel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "oneplus.intent.action.POWER_USAGE_ADVANCED"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    if-ne v3, v7, :cond_3

    const-string v10, "com.oem.intent.action.force_stop_pkg"

    goto :goto_1

    :cond_3
    const-string v10, "com.oem.intent.action.force_stop_high_pkg"

    :goto_1
    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v0

    const-string/jumbo v0, "pkg"

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "userid"

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    invoke-virtual {v15, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v11, 0x8000000

    invoke-static {v0, v6, v15, v11, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    const-string/jumbo v0, "type"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v0, v6, v13, v11, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v16, "OP_HP_NOTIFICATION"

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v7, "OP_HP_NOTIFICATION"

    const/4 v6, 0x3

    invoke-direct {v0, v7, v8, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v6, v0

    invoke-virtual {v6, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    nop

    :try_start_1
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect][Notification] Create notification channel for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    aput-object v6, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v10, v0}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    const-string v0, "OP_HP_NOTIFICATION"

    invoke-interface {v7, v10, v0}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "OP_HP_NOTIFICATION"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    :cond_5
    if-nez v4, :cond_7

    goto :goto_2

    :catchall_0
    move-exception v0

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    :cond_6
    throw v0

    :catch_1
    move-exception v0

    if-nez v4, :cond_7

    :goto_2
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    :cond_7
    new-instance v0, Landroid/app/Notification$Action$Builder;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v2, 0x50c0056

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x108033e

    invoke-direct {v0, v3, v2, v14}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    move-object/from16 v19, v4

    const v4, 0x1060157

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const/high16 v17, 0x8000000

    const/16 v18, 0x0

    move-object/from16 v20, v14

    new-instance v14, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v14, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, v10

    move-object v10, v3

    move-object v3, v11

    const/4 v11, 0x0

    move-object/from16 v21, v13

    move/from16 v13, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v20

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    :cond_8
    :goto_3
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private dumpLruProcess()V
    .locals 7

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", iso="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", app.info.uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isSys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMulti="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isMultiArch(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private dumpOther()V
    .locals 15

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v1

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] alertWindowUid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v2

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] visibleUids :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_0
    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BGC] active audio :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusBGController;->getStepCounterActiveUids()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] active step counter uids :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] locked :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    iget-object v11, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "F"

    goto :goto_1

    :cond_1
    const-string v14, "K"

    :goto_1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const-string v10, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BGC] mBGCUidArray :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string v10, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_4

    :catchall_1
    move-exception v9

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v9

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BGC] currentIME :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ":0"

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentInputMethod()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method static getDeviceTemp(ZLjava/lang/String;)I
    .locals 7

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p0, :cond_0

    div-int/lit16 v6, v5, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    :cond_0
    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v5

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get device temp w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return v2

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "OHPD"

    const-string v1, "Fatal Exception : param is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object v0
.end method

.method private getPDLastFGTimeThold()I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    :goto_0
    return v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.ohpd.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    const-string/jumbo v0, "persist.sys.ohpd.kcheck"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    const-string/jumbo v0, "msm8998"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/thermal/thermal_zone5/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sdm845"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] mIsPreciseDevTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    const-string v0, "[BgDetect] sdm845 platform, enabled monitoring camera process"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateCpuThreshold(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerNotificationCancelReceiver()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initBGCWhiteList()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initOnlineConfig()V

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sys.ohpd.pd.usg.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    const-string/jumbo v0, "persist.sys.ohpd.pd.temp.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    const-string/jumbo v0, "persist.sys.ohpd.rnk.med.usg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    const-string/jumbo v0, "persist.sys.ohpd.pd.on.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    const-string/jumbo v0, "persist.sys.ohpd.pd.off.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    const-string/jumbo v0, "persist.sys.ohpd.skip.on"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    :cond_2
    return-void
.end method

.method private isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isBGCImportantProc(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.chrome:sandboxed_process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "android.process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isImportantProc(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "android.process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyBgDetectIfNecessary # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6e5

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when notifyBgDetectIfNecessary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    const-string/jumbo v5, "{"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect]pkgUser #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "OHPD"

    const-string v3, "Exception while parsing recent task locked info"

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private registerNotificationCancelReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$2;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerReceiver()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$3;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ohpd.action.test"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v2, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 14

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cleanUpNativeMonitorList()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backgroundprocess_detection_app_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_3
    :goto_2
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v5

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    :cond_5
    :goto_4
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_ex_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    monitor-exit v5

    goto :goto_6

    :catchall_2
    move-exception v1

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    :cond_7
    :goto_6
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    monitor-exit v5

    goto :goto_8

    :catchall_3
    move-exception v1

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v1

    :cond_9
    :goto_8
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "level0_kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    monitor-exit v5

    goto :goto_a

    :catchall_4
    move-exception v1

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v1

    :cond_b
    :goto_a
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "prebuilt_gms_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_c

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_c
    monitor-exit v5

    goto :goto_c

    :catchall_5
    move-exception v1

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw v1

    :cond_d
    :goto_c
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_cpu_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_d
    if-ge v6, v5, :cond_e

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_e
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_cpu_usage_threshold_max"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_e
    if-ge v6, v5, :cond_f

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_network_usage_threshold"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "cpu_check_delay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_f
    if-ge v6, v5, :cond_11

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpu_min_check_duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_provider_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_usage_threshold_medium"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]RNK_USG_THOLD_MEDIUM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_tempature_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]S_ON_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_s_off_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]S_OFF_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_app_cont_busy_time_thold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_skip_handle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] ENABLE_SKIP_HANDLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->saveNativeMonitorList(Lorg/json/JSONArray;)V

    :cond_1d
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sepical_native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1f

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v1

    :goto_10
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1e

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "process"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "batteryDrop"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    new-instance v12, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;

    invoke-direct {v12, p0, v8, v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    invoke-virtual {v11, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "OHPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[OnlineConfig]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sepicalNativeProcessMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_1e
    monitor-exit v5

    goto :goto_11

    :catchall_6
    move-exception v1

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    throw v1

    :cond_1f
    :goto_11
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_gms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] ENABLE_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_monitor_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_ENABLE_MONITOR_CAMERA_PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_ENABLE_KILL_BUSY_CAMERA_PROCESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_proc_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_CAMERA_PROC_NAME: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_native_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_NATIVE_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :try_start_10
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_12
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_26

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_26
    monitor-exit v5

    goto :goto_13

    :catchall_7
    move-exception v1

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    throw v1

    :cond_27
    :goto_13
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BGC_FEATURE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    if-eqz v5, :cond_28

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    goto :goto_14

    :cond_28
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    :goto_14
    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2a
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    const-string v0, "OHPD"

    const-string v1, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_15

    :catchall_8
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    throw v1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catch_1
    move-exception v0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    nop

    :goto_16
    return-void
.end method

.method private responseSIMStateChanged()Z
    .locals 5

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    const-string/jumbo v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    :goto_1
    const/4 v0, 0x1

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method private saveNativeMonitorList(Lorg/json/JSONArray;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "sdm845"

    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/nativeproc/proclist"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/cache/nativeproc/proclist"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "daemon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "thold"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] start monitoring native process:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", thold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "OHPD"

    const-string v4, "fail to save native monitor list to file "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    :cond_4
    :goto_5
    throw v2
.end method

.method private scheduleForceStopPkg(Ljava/lang/String;II)V
    .locals 4

    :try_start_0
    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6e0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when scheduleForceStopPkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setKillMechanismState(Z)V
    .locals 3

    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    const-string/jumbo v0, "persist.sys.ohpd.kcheck"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] mKillMechanism "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    const-string/jumbo v0, "persist.sys.ohpd.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private skipCheckForBGCAbn(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBGCWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isBGCImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "important proc"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    :cond_1
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v2, p2, v2

    int-to-long v6, p5

    cmp-long v0, v2, v6

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to just switch to bg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms ago , thold "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    :cond_2
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v2, p2, v2

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") due to just access contacts provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms ago"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "white list pkg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1
.end method

.method private skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "JI",
            "Ljava/lang/StringBuffer;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "white list pkg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_0
    const/16 v5, 0xc8

    const/16 v7, 0x190

    const/4 v8, 0x0

    if-eqz p9, :cond_3

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "highUsed list pkg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_1
    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v9, v7, :cond_2

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-eq v7, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "small adj "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "important proc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_4

    return v8

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x2

    if-gt v1, v9, :cond_5

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v9, v7, :cond_5

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-eq v7, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "small adj "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "important proc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_6
    const-wide/16 v9, 0x0

    if-nez p9, :cond_7

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    cmp-long v5, v11, v9

    if-eqz v5, :cond_7

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v11, p2, v11

    int-to-long v9, v3

    cmp-long v5, v11, v9

    if-gez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") due to just switch to bg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v7, p2, v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms ago , thold "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_7
    if-nez p9, :cond_8

    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect] skip provider/network check on app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_8
    if-nez p9, :cond_9

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-eqz v5, :cond_9

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v9, p2, v9

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    int-to-long v11, v5

    cmp-long v5, v9, v11

    if-gez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") due to just access contacts provider "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v7, p2, v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms ago"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_9
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    if-eqz p9, :cond_a

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    sub-long v11, v9, v11

    goto :goto_0

    :cond_a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v11, v5, v1

    sub-long v11, v9, v11

    :goto_0
    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    move-wide v13, v9

    int-to-long v8, v5

    cmp-long v5, v11, v8

    if-lez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") due to net rx usage is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_b
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    if-eqz p9, :cond_c

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J

    sub-long v9, v7, v9

    goto :goto_1

    :cond_c
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v9, v5, v1

    sub-long v9, v7, v9

    :goto_1
    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    move-wide v15, v7

    int-to-long v6, v5

    cmp-long v5, v9, v6

    if-lez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") due to net tx usage is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    return v5

    :cond_d
    const/4 v5, 0x0

    return v5
.end method

.method private stopBgPowerHungryApp(Ljava/lang/String;IZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopBgPowerHungryApp +# pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    const/4 v3, -0x2

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect]- stopBgPowerHungryApp : pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateBGCUidArray(Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;->getRecordList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] list.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUidArray:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidmAh;

    iget v3, v3, Lcom/android/server/am/OnePlusBGController$UidmAh;->mUid:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$UidmAh;

    iget-boolean v4, v4, Lcom/android/server/am/OnePlusBGController$UidmAh;->miSForceStop:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$UidmAh;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$UidmAh;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const-string v1, "[BGC] list == null"

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_2
    const-string v0, "[BGC] info == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private updateBGCUsingTrafficUidArray(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mark uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is under using network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBGCUsingTrafficUidSet:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static updateCpuThreshold(Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    if-nez p0, :cond_0

    const-string/jumbo v1, "persist.sys.ohpd.threshold"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCpuThreshold # thresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    const/high16 v6, 0x200000

    aput v6, v5, v4

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget-object v6, v1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v3, :cond_1

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget-object v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v5

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    aput v7, v6, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_3

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCpuThreshold # NumberFormatException : threshold="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, ""

    const-string v6, ""

    nop

    :goto_2
    if-ge v4, v3, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCpuThreshold # min="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " max="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v2

    goto :goto_4

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    :goto_4
    return-void
.end method

.method private updateFinishingStatusUidsSet(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/lang/String;",
            "IZZII)V"
        }
    .end annotation

    move-object v1, p1

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p2

    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object v2, p2

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public beginCpuStatistics()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6dd

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OHPD"

    const-string v2, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method checkBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.truecaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method checkGmsList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkKillSkipApp(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method checkLevel0KillList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect][Notification] cancel abort: running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    monitor-exit p2

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    monitor-exit p2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 10

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_2

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addTime(J)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCpuStatistics # forkedPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->AID_CAMERASERVER:I

    if-ne v0, v3, :cond_7

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v0, :cond_3

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get Camera proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v1, v2, :cond_4

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v1, :cond_6

    const-string v1, "OHPD"

    const-string v2, "Existed, just update value"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v1, :cond_5

    const-string v1, "OHPD"

    const-string v2, "NOT existed, add new AppForkedProc"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    :cond_6
    :goto_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_7
    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-nez v2, :cond_8

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addTime(J)V

    :goto_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v3, :cond_9

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCpuStatistics # NativePid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_a
    :goto_3
    return-void
.end method

.method public finishCpuStatistics()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    monitor-exit v0

    goto :goto_5

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_7
    :goto_5
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "OHPD"

    const-string v1, "finishCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6e4

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public getBgMonitorMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v7, -0x2

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-direct {v1, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v8, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v12, :cond_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v13, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_11

    :cond_0
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-lez v0, :cond_3

    :try_start_5
    iget-object v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    sget-object v13, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-lez v15, :cond_1

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    goto :goto_2

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "fproc pkg "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pid "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is gone"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_2
    nop

    move-object/from16 v0, v17

    goto :goto_1

    :cond_2
    monitor-exit v11

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_12

    :cond_3
    :goto_3
    :try_start_8
    iget-object v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    iput-boolean v14, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v14, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget v14, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v14, :cond_4

    :try_start_a
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move/from16 v18, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v18, v4

    goto/16 :goto_10

    :cond_4
    :try_start_b
    sget-boolean v14, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v14, :cond_5

    const-string v14, "OHPD"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move/from16 v18, v4

    :try_start_c
    const-string/jumbo v4, "huge dead pid:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    move/from16 v18, v4

    goto :goto_5

    :cond_6
    move/from16 v18, v4

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_5
    nop

    move/from16 v4, v18

    goto/16 :goto_4

    :cond_7
    move/from16 v18, v4

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :try_start_d
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :try_start_e
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v13, :cond_a

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "high dead pid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_a
    :goto_7
    goto :goto_6

    :cond_b
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :try_start_10
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    iget v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v13, :cond_e

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "medium dead pid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_e
    :goto_9
    goto :goto_8

    :cond_f
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    :try_start_12
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v13, :cond_12

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "huge dead pid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_12
    :goto_b
    goto :goto_a

    :cond_13
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :try_start_14
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v13, :cond_16

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "high dead pid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_16
    :goto_d
    goto :goto_c

    :cond_17
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    :try_start_16
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    iget-object v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    iget v13, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_18
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v13, :cond_1a

    const-string v13, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "medium dead pid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1a
    :goto_f
    goto :goto_e

    :cond_1b
    monitor-exit v4

    goto :goto_13

    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    :catchall_4
    move-exception v0

    :try_start_18
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    :catchall_5
    move-exception v0

    :try_start_1a
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    :catchall_6
    move-exception v0

    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    :try_start_1d
    throw v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    :catchall_8
    move-exception v0

    move/from16 v18, v4

    :goto_10
    :try_start_20
    monitor-exit v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    :try_start_21
    throw v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1

    :catchall_9
    move-exception v0

    goto :goto_10

    :catchall_a
    move-exception v0

    move/from16 v18, v4

    :goto_11
    :try_start_22
    monitor-exit v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1

    :catch_1
    move-exception v0

    goto :goto_12

    :catchall_b
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    move/from16 v18, v4

    :goto_12
    const-string v4, "OHPD"

    const-string v6, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    const-string v0, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] getBgPowerHungryList result size "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_1c

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v0, :cond_1c

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dump# "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/highpower/HighPowerApp;

    iget-object v8, v8, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " powerLevel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/highpower/HighPowerApp;

    iget v8, v8, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/highpower/HighPowerApp;

    iget v8, v8, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1c
    return-object v5

    :cond_1d
    move/from16 v18, v4

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMyMessage(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMyMessage # msg.what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->what:I

    const v3, 0x101d7

    if-eq v0, v3, :cond_24

    const v3, 0x101d5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_11

    :pswitch_0
    const-string v0, "======MSG_EXECUTION_BGPOWER======"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsBGCFeatureEnabled="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBGCFeatureEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkAbnBgKillLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto/16 :goto_11

    :catch_0
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "[BGC] Error handling MSG_EXECUTION_BGPOWER"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_1
    const-string v0, "======MSG_INFO_BGPOWER======"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;

    move-object v4, v0

    invoke-direct {v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateBGCUidArray(Lcom/android/server/am/OnePlusBGController$BGCAbnInfo;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BGC] mEverLightIdleBGCCheck="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mIsScreenOn="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_2

    move v7, v5

    :try_start_2
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "doze_mode_policy"

    invoke-static {v0, v8, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] Policy :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v7, v6, :cond_2

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->updateUidTraffic()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateBGCUsingTrafficUidArray(Ljava/util/HashSet;)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    goto/16 :goto_11

    :catch_2
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "[BGC] Error handling MSG_INFO_BGPOWER"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_2
    :try_start_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "proc"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "cpu_usage"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "handled"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v7, "native_proc_busy"

    invoke-virtual {v6, v7, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_11

    :catch_3
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "Error submit SDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_3
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->monitorCameraStart(I)V

    goto/16 :goto_11

    :pswitch_4
    :try_start_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "proc"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "cpu_usage"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "handled"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v7, "camera_proc_busy"

    invoke-virtual {v6, v7, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_11

    :catch_4
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "Error submit SDM"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget v5, v2, Landroid/os/Message;->arg1:I

    iget v0, v2, Landroid/os/Message;->arg2:I

    move v7, v0

    :try_start_6
    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkIfNotificationExisted(I)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v5, :cond_3

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne v5, v6, :cond_4

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_1
    goto :goto_2

    :catch_5
    move-exception v0

    const-string v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when CHECK_IF_NOTIFICATION_EXISTED_MSG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " already pop notification , skip"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    if-ne v5, v6, :cond_8

    const v4, 0xd6db

    goto :goto_3

    :cond_8
    const v4, 0xd6e1

    :goto_3
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v7, v0, Landroid/os/Message;->arg2:I

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_11

    :pswitch_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$4;

    invoke-direct {v3, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$4;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_11

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcRxTx()V

    goto/16 :goto_11

    :pswitch_8
    move v4, v5

    :try_start_7
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "doze_mode_policy"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move v4, v0

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_4
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v0, :cond_9

    const-string v0, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LightIdle] Policy :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-array v0, v6, [I

    const/16 v7, 0x5d

    aput v7, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne v4, v6, :cond_a

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    if-nez v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLightIdleProcessKillLocked()V

    iput-boolean v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    :cond_a
    new-array v0, v6, [I

    const/16 v7, 0x5b

    aput v7, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b

    if-ne v4, v6, :cond_b

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    if-nez v0, :cond_b

    iput-boolean v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->updateUidTraffic()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateBGCUsingTrafficUidArray(Ljava/util/HashSet;)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    :cond_b
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    if-eqz v0, :cond_d

    :cond_c
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->monitorCameraEnd(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLightIdleCameraProcessKillLocked()V

    iput-boolean v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    :cond_d
    goto/16 :goto_11

    :pswitch_9
    :try_start_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v11, v7, v9

    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_10

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_f

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification # too short time to notify: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v7, v9

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    iget-object v9, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->createNotification(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_11

    return-void

    :cond_11
    new-array v6, v6, [I

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v9

    const-string v10, "android"

    const-string v11, "android"

    const/4 v12, 0x0

    const v13, 0x33954b9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    move-object v14, v5

    invoke-interface/range {v9 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    const-string v10, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_11

    :catch_7
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "Error posting power intensive notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_a
    iget v0, v2, Landroid/os/Message;->arg2:I

    move v3, v0

    :try_start_9
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const-string v5, "android"

    if-ne v3, v6, :cond_12

    const v7, 0x33954b8

    goto :goto_5

    :cond_12
    const v7, 0x33954b9

    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v0, v5, v4, v7, v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v5, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect] FORCE_STOP_PKG_MSG Type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_13

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    goto :goto_6

    :cond_13
    if-ne v3, v6, :cond_14

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_14
    :goto_6
    goto :goto_7

    :catch_8
    move-exception v0

    const-string v4, "OHPD"

    const-string v5, "[BgDetect] Error when cancel notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    :try_start_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    const-string v4, "OHPD"

    const-string v5, "[BgDetect] Error when force stop pkg"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    goto/16 :goto_11

    :pswitch_b
    :try_start_b
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.oem.bugreport.power_event"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android"

    const/16 v8, 0x3e8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x2

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_11

    :catch_a
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "[BgDetect] Error when send boradcast to nofity PD event"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_c
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-direct {v1, v3, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v4

    if-nez v4, :cond_15

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v6, 0xd6de

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v3, v7, v3

    int-to-long v7, v3

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_15
    :goto_9
    goto/16 :goto_11

    :pswitch_d
    :try_start_e
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-nez v0, :cond_16

    return-void

    :cond_16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_17
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v10, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_18

    iget-object v11, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v11, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fproc pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is gone"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :goto_c
    goto :goto_b

    :cond_19
    monitor-exit v7

    goto :goto_d

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v0

    :cond_1a
    :goto_d
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_1b
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    :cond_1c
    goto/16 :goto_11

    :catchall_2
    move-exception v0

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    :catch_b
    move-exception v0

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect] cancel notification fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_e
    :try_start_15
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_11

    :catch_c
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "Error when clean up package removed record"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_f
    :try_start_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v3, v2, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v4, v8

    sget-wide v12, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_1f

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_1e

    const-string v6, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification # too short time to notify: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v4, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void

    :cond_1f
    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0, v3, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->createNotification(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    if-nez v8, :cond_20

    return-void

    :cond_20
    new-array v6, v6, [I

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v9

    const-string v10, "android"

    const-string v11, "android"

    const/4 v12, 0x0

    const v13, 0x33954b8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    move-object v14, v8

    invoke-interface/range {v9 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    const-string v10, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " userId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto/16 :goto_11

    :catch_d
    move-exception v0

    const-string v3, "OHPD"

    const-string v4, "Error posting power intensive notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    :pswitch_10
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-direct {v1, v3, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v4

    if-nez v4, :cond_21

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v6, 0xd6da

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v3, v7, v3

    int-to-long v7, v3

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_e

    :catchall_3
    move-exception v0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_21
    :goto_e
    goto :goto_11

    :pswitch_11
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v0, v0, v6

    invoke-direct {v1, v6, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v3

    if-nez v3, :cond_22

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v5, 0xd6d9

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v6, v7, v6

    int-to-long v6, v6

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_f

    :catchall_4
    move-exception v0

    :try_start_1a
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_22
    :goto_f
    goto :goto_11

    :pswitch_12
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    invoke-direct {v1, v5, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v3

    if-nez v3, :cond_23

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v6, 0xd6d8

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v5, v7, v5

    int-to-long v7, v5

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_10

    :catchall_5
    move-exception v0

    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_23
    :goto_10
    goto :goto_11

    :cond_24
    const-string v0, "======MSG_UPDATE_TRAFFIC_WHEN_SOFF======"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mOnePlusBGController:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->updateUidTraffic()Ljava/util/HashSet;

    nop

    :goto_11
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hasSystemFlag(I)Z
    .locals 1

    and-int/lit16 v0, p1, 0x81

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSystemFlagNotIsolated(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isIsolated process: app.uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "app.info.uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", app.processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v0

    return v0
.end method

.method public informPkgRemoved(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6dc

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method initBGCWhiteList()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.tencent.map"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "cld.navi.mainframe"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.mapbar.android.mapbarmap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.sogou.map.android.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.oppo.market"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.mapswithme.maps.pro"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.here.app.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.magnetic.openmaps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.navigation.offlinemaps.gps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.tripbucket.route66"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.papago.M11_Int"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.kingwaytek.naviking3d.google.std"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.sygic.incar"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.mmi.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    const-string v2, "com.waze"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method isForkedProcInBGCWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isMultiArch(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isProcInBGCWhiteList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteBGCAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 9

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderRecord;

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    nop

    if-eqz v3, :cond_0

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v5, v6, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_2

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v6, v8, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    const-string v1, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect] skip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", bound by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v5

    nop

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return v1
.end method

.method isSmallAdjState(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method monitorCameraEnd(I)V
    .locals 13

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    sub-long v3, v1, v3

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] monitorCameraEnd(), monitorEndTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", uptimeSince="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_6

    cmp-long v5, v3, v6

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v8

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LightIdle] End cpuTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iput-wide v8, v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v10, v5, p1

    cmp-long v5, v10, v6

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-wide v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v7, v7, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v10, v7, p1

    sub-long/2addr v5, v10

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v5

    div-long/2addr v10, v3

    iput-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LightIdle] cputimeUsed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", mLastCameraProcUsage="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_0

    :cond_4
    iput-wide v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :cond_6
    :goto_1
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "OHPD"

    const-string v8, "[LightIdle] skip this round monitoring"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-wide v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method monitorCameraStart(I)V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] monitorCameraStart(), mMonitorStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Start cpuTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aput-wide v1, v3, p1

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

.method needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/16 v2, 0x9

    const/16 v3, 0xd

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    return v4

    :pswitch_0
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v5, v3, :cond_1

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v3, v2, :cond_1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v1, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    nop

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v5, v3, :cond_3

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v3, v2, :cond_3

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    nop

    :cond_3
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 5

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_0
    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_7
    goto :goto_1

    :cond_8
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :catchall_4
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :catchall_5
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :catchall_6
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    :goto_2
    nop

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] postProcessOfForceStop err with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public setBgMonitorMode(Z)V
    .locals 0

    return-void
.end method

.method public startMonitor()V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v1, 0xd6d8

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6d9

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6da

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6de

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v1, "OHPD"

    const-string v2, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;IZ)V

    return-void
.end method

.method updateProcRxTx()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] updateProcRxTx()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    .locals 3

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v1, v0, p2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    aput-wide v1, v0, p2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    aput-wide v1, v0, p2

    return-void
.end method

.method updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetPackage pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWidgetPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
