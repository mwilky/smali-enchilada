.class public Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;,
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.OPCS.action.debug"

.field private static final ACTION_REPORT:Ljava/lang/String; = "com.OPCS.action.report"

.field private static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static final ACTION_TIME_SET:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static BootDelayTime:J = 0x0L

.field private static CalculateIntervalThreshold:J = 0x0L

.field private static DEBUG_LOG:Z = false

.field private static final DEBUG_LOG_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_log"

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SPECIFIC:Z = false

.field private static final DEBUG_SPECIFIC_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field private static DEBUG_VERIFY:Z = false

.field private static final DEBUG_VERIFY_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_verify"

.field private static final DES_CMD_CALCULATEPOWER:Ljava/lang/String; = "cmd_calculatePower"

.field private static final DES_EMPTY:Ljava/lang/String; = "null"

.field private static final DES_GENERATE_POWERCONSUMPTION_DATA:Ljava/lang/String; = "generatePowerConsumptionData"

.field private static final DES_HANDLE_PLUG_EVENT:Ljava/lang/String; = "handle_plug_event"

.field private static final DES_NONE:Ljava/lang/String; = "none"

.field private static final DES_NULL:Ljava/lang/String; = ""

.field private static final DES_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final DES_PLUGGED_FASTCHARGE:Ljava/lang/String; = "FASTCHARGE"

.field private static final DES_PLUGGED_NONE:Ljava/lang/String; = "NONE"

.field private static final DES_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final DES_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static final DES_TYPE_DOZE:Ljava/lang/String; = "doze"

.field private static final DES_TYPE_PKG:Ljava/lang/String; = "frontPkg"

.field private static final DES_TYPE_PLUG:Ljava/lang/String; = "plug"

.field private static final DES_TYPE_POWERLEVEL:Ljava/lang/String; = "powerLevel"

.field private static final DES_TYPE_SCREEN:Ljava/lang/String; = "screen"

.field private static final DES_UNKNOW:Ljava/lang/String; = "unknow"

.field private static ENABLE:Z = false

.field private static final ENDLINE:Ljava/lang/String;

.field private static final EVENT_ACTIVE:I = 0x0

.field private static final EVENT_IDLE:I = 0x1

.field private static final EVENT_PLUG:I = 0x1

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field private static final EVENT_UNPLUG:I = 0x0

.field public static final FAKE_UID_AMBIENT_DISPLAY:I = -0x63

.field public static final FAKE_UID_APP:I = -0x62

.field public static final FAKE_UID_BASE:I = -0x64

.field public static final FAKE_UID_BLUETOOTH:I = -0x61

.field public static final FAKE_UID_CAMERA:I = -0x60

.field public static final FAKE_UID_CELL:I = -0x5f

.field public static final FAKE_UID_DEFAULT:I = -0x55

.field public static final FAKE_UID_END:I = -0x54

.field public static final FAKE_UID_FLASHLIGHT:I = -0x5e

.field public static final FAKE_UID_IDLE:I = -0x5d

.field public static final FAKE_UID_MEMORY:I = -0x5c

.field public static final FAKE_UID_OVERCOUNTED:I = -0x5b

.field public static final FAKE_UID_PHONE:I = -0x5a

.field public static final FAKE_UID_SCREEN:I = -0x59

.field public static final FAKE_UID_UNACCOUNTED:I = -0x58

.field public static final FAKE_UID_USER:I = -0x57

.field public static final FAKE_UID_WIFI:I = -0x56

.field private static INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static final MSG_DOZE_EVENT:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_PERSIST:I = 0x7

.field private static final MSG_PKG_EVENT:I = 0xe

.field private static final MSG_PLUGGED_FASTCHARGE_EVENT:I = 0x3

.field private static final MSG_PLUG_EVENT:I = 0x2

.field private static final MSG_PLUG_INIT_EVENT:I = 0x8

.field private static final MSG_POWERLEVEL_EVENT:I = 0x5

.field private static final MSG_REPORT:I = 0x9

.field private static final MSG_RESET_LISTENER:I = 0xd

.field private static final MSG_SCREEN_EVENT:I = 0x4

.field private static final MSG_SHUTDOWN:I = 0xb

.field private static final MSG_TIME_SET:I = 0xa

.field private static final MSG_TRACKDATA:I = 0xc

.field private static RandomInterval:I = 0x0

.field private static ReportTimePoint:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "OPCS"

.field private static final TAG_SPECIFIC:Ljava/lang/String; = "OPCS_SPECIFIC"

.field private static TopKernelWakeLocks:I = 0x0

.field private static TopKernelWakeupReasons:I = 0x0

.field private static TopSize:I = 0x0

.field private static final VALUE_FULL_POWER:I = 0x64

.field private static final VALUE_ONE_DAY:J = 0x5265c00L

.field private static final VERSION:I = 0x1141301


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

.field private mBaseData:Landroid/util/AtomicFile;

.field private mBaseEventList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

.field private mBatteryManager:Landroid/os/BatteryManager;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private final mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mCalculateTime_Begin:J

.field private mCalculateTime_End:J

.field mChargeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

.field private mConsumptionDetectorHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCumulativeAppInForeground:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDozeSeq:I

.field private mCurrentPkgSeq:I

.field private mCurrentPlugSeq:I

.field private mCurrentPowerLevelSeq:I

.field private mCurrentScreenSeq:I

.field private mCurrentTotalSeq:I

.field private mDebugReceiver:Landroid/content/BroadcastReceiver;

.field mDozeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

.field private mFrontPkg:Ljava/lang/String;

.field private mIdleState:Z

.field private mKernelWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeLocks_Past:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons_Past:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedConsiderPast:Z

.field private mNewVersionFirstReport:Z

.field private mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPersistData:Landroid/util/AtomicFile;

.field private mPlugState:Z

.field private mPowerConsumptionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerConsumptionList_Past:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerLevel:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

.field private mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

.field private mRetForKernelWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRetForKernelWakeupReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRetForPowerConsumptionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenState:Z

.field private mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

.field private mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field private mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

.field private final mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pi:Landroid/app/PendingIntent;

.field final timerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private timerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    const/16 v0, 0x168

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    const/16 v0, 0x8

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    const-string/jumbo v2, "none"

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "TotalDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "ScreenOnDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalScreenOnDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOnDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOnChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    const-string v2, "ScreenOffDischarge"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "TotalScreenOffDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOffDischargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    const-string v2, "ScreenOffChargeDuration"

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$1;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$4;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    const-string v0, "OnePlusPowerConsumptionStatistic()--constructor:18092801"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const-string/jumbo v0, "persist.sys.opcs.debug_log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    const-string/jumbo v0, "persist.sys.opcs.debug_specific"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    const-string/jumbo v0, "persist.sys.opcs.debug_verify"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "mConsumptionDetectorThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorHandler;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v3, "batterymanager"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "consumptionDetector_statistcal_data.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "consumptionDetector_base_data.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.OPCS.action.debug"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.OPCS.action.report"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.OPCS.action.report"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const/high16 v8, 0x8000000

    invoke-static {v7, v1, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->init()V

    sput-object p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-void
.end method

.method private BaseEventList_clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private BaseEventList_get(I)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private BaseEventList_put(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleReport(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpAppForeground()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpPowerConsumptionList()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generatePowerConsumptionData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpBaseEventList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initStatistics()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/BatteryManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePkgEvent()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugInitEvent(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugFastChargeEvent()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleScreenEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleDozeEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateReportAlarm()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugEvent(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePowerLevelEvent(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->toTrackImmediately()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePersist(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpState()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDrainTypeByFakeUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$8900(D)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->formatDouble(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "acquireWakeLock"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OPCS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateKernelWakeLocks from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    nop

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    const/4 v11, 0x2

    invoke-static {v10, v4, v5, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_7

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    new-instance v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object/from16 v17, v3

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-direct {v15, v14, v12, v13, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v7, v15

    if-eqz v6, :cond_0

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateKernelWakeLocks # continue key:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " |totalTimeMillis:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    nop

    move-object/from16 v3, v17

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "handle_plug_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    const/4 v15, 0x0

    if-nez v3, :cond_2

    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v4, v14, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v4, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V

    nop

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v4, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V

    :goto_1
    const/4 v5, 0x1

    iget-boolean v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-static {v4, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_5

    move/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-lez v5, :cond_6

    const-string/jumbo v5, "handle_plug_event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move/from16 v21, v5

    move-object/from16 v20, v6

    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    move-object/from16 v6, v20

    goto :goto_3

    :cond_7
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_3
    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v3

    return-object v2
.end method

.method private calculatePastKernelWakeLocks()V
    .locals 12

    const-string v0, "calculatePastKernelWakeLocks"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v1, v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-direct {v10, v9, v7, v8, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v6, v10

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculatePastKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculatePastKernelWakeupReasons()V
    .locals 12

    const-string v0, "calculatePastKernelWakeupReasons"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v1, v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    invoke-direct {v10, v9, v7, v8, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v6, v10

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculatePastKernelWakeupReasons # reason_new = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculatePastPowerConsumption()V
    .locals 7

    const-string v0, "calculatePastPowerConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v3, v4

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v5, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v3, v4

    nop

    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    iget-object v6, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculatePastPowerConsumption # pc_past = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private calculatePowerConsumption(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalculatePowerConsumption mNeedConsiderPast:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    if-eqz v6, :cond_7

    iget-wide v7, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_7

    sget-object v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v2, v7

    goto :goto_1

    :cond_0
    new-instance v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V

    move-object v2, v7

    nop

    :goto_1
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v7, "handle_plug_event"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    if-nez v3, :cond_3

    invoke-static {v2, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V

    goto :goto_2

    :cond_3
    invoke-static {v2, v6, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V

    :goto_2
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    iget-object v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-static {v2, v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$8300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v7

    :cond_4
    if-eqz v7, :cond_6

    iget-wide v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v8, v11, v9

    if-lez v8, :cond_6

    const-string/jumbo v8, "handle_plug_event"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    iget-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CalculatePowerConsumption # pc_new = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method private calculateReportTime(J)J
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateReportTime _realStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    move-wide v0, p1

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v6

    return-wide v4

    :catch_0
    move-exception v4

    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateReportTime Exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method private calculateWakeupReasons(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateWakeupReasons from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    nop

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Timer;

    const/4 v11, 0x2

    invoke-static {v10, v4, v5, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_7

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    new-instance v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object/from16 v17, v3

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-direct {v15, v14, v12, v13, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    move-object v7, v15

    if-eqz v6, :cond_0

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateWakeupReasons # continue key:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " |totalTimeMillis:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    nop

    move-object/from16 v3, v17

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "handle_plug_event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    const/4 v15, 0x0

    if-nez v3, :cond_2

    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v4, v14, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Ljava/lang/String;JI)V

    goto :goto_1

    :cond_2
    move-wide/from16 v18, v4

    new-instance v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v4, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V

    nop

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v4, v12, v13, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V

    :goto_1
    const/4 v5, 0x1

    iget-boolean v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-static {v4, v11}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_5

    move/from16 v21, v5

    move-object/from16 v20, v6

    iget-wide v5, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-wide/16 v15, 0x0

    cmp-long v5, v5, v15

    if-lez v5, :cond_6

    const-string/jumbo v5, "handle_plug_event"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v2, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move/from16 v21, v5

    move-object/from16 v20, v6

    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateWakeupReasons # reason_new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    move-object/from16 v6, v20

    goto :goto_3

    :cond_7
    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    :goto_3
    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v3

    return-object v2
.end method

.method private calibrateCalculateAlarm()V
    .locals 11

    const-string v0, "calibrateCalculateAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v8, "OPCS_CalculateAlarm"

    iget-object v9, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private calibrateReportAlarm()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calibrateReportAlarm timeLeft:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " |nextReportAlarmTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-gtz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    :goto_0
    return-void
.end method

.method private calibrateTrackAlarm()V
    .locals 12

    const-string v0, "calibrateTrackAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v9, "OPCS_TrackAlarm"

    iget-object v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTrackAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    move-wide v7, v1

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    const-string v0, "cancelAlarm"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private checkState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    invoke-interface {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;->getPlugState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eq v2, v1, :cond_1

    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState mPlugState is error, correct to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |plugType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugEvent(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eq v1, v0, :cond_2

    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState mScreenState is error, correct to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleScreenEvent()V

    :cond_2
    return-void
.end method

.method private clearAllData()V
    .locals 3

    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearBaseTimer()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificCounter()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificTimer()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearFragment()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPowerConsumption()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    :cond_0
    return-void
.end method

.method private clearBaseTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearFragment()V
    .locals 1

    const-string v0, "clearFragment"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$6700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    return-void
.end method

.method private clearLocalData()V
    .locals 1

    const-string v0, "clearLocalData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData(Landroid/util/AtomicFile;)V

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData(Landroid/util/AtomicFile;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BaseEventList_clear()V

    :cond_0
    return-void
.end method

.method private clearPersistData(Landroid/util/AtomicFile;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPersistData file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v1, "persistToDisk file is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistToDisk Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearPowerConsumption()V
    .locals 1

    const-string v0, "clearPowerConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$6400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Temp_Verify:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList_Past:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Temp_Verify:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks_Past:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Temp_Verify:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons_Past:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    return-void
.end method

.method private clearSpecificCounter()V
    .locals 1

    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    return-void
.end method

.method private clearSpecificTimer()V
    .locals 1

    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    return-void
.end method

.method private completePowerConsumptionData(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private dumpAppForeground()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "OPCS"

    const-string v2, "# dump # dumpAppForeground # begin #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # dumpAppForeground # i :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |duration:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "OPCS"

    const-string v3, "# dump # dumpAppForeground # end #"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpBaseEventList()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpBaseEventList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    if-eqz v0, :cond_0

    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mBaseEventList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "OPCS"

    const-string v2, "# dump # dumpBaseEventList # end #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpInfo()V
    .locals 2

    const-string v0, "OPCS"

    const-string v1, "# dump # VERSION # 18092801"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpPowerConsumptionList()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpPowerConsumptionList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    if-eqz v0, :cond_0

    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # dumpPowerConsumptionList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |pc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "OPCS"

    const-string v2, "# dump # dumpPowerConsumptionList # end #"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpState()V
    .locals 10

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mScreenState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mPlugState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mIdleState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mPowerLevel # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # RandomInterval # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ReportTimePoint # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # CalculateIntervalThreshold # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BootDelayTime # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # timeLeft # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |format-minute:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    const-string v5, "dumpState()"

    invoke-virtual {v4, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V

    :cond_0
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mDozeFragment # size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mDozeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # mChargeFragment # size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mChargeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private errorCorrectionProcess(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "plug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "powerLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "doze"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "frontPkg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->checkState()V

    return-void
.end method

.method private static formatDouble(D)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.6f"

    :goto_0
    goto :goto_1

    :cond_1
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.5f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.4f"

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.3f"

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.2f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.1f"

    goto :goto_0

    :cond_6
    const-string v0, "%.0f"

    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generatePowerConsumptionData()V
    .locals 1

    const-string v0, "generatePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const-string v0, "generatePowerConsumptionData"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->completePowerConsumptionData(Landroid/util/SparseArray;)V

    return-void
.end method

.method private generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 11

    const-string v0, "generateSortqueueAnddSystemqueue"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "generateSortqueueAnddSystemqueue data is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    :goto_0
    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    if-eqz v3, :cond_2

    const-string/jumbo v4, "null"

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSortqueueAnddSystemqueue mSystemModule:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    iget-object v5, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    if-le v1, v4, :cond_4

    sget v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateSortqueueAnddSystemqueue app length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue app sort i:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " |pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " |totalPowerMah:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    if-le v6, v7, :cond_7

    sget v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_5
    move v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue wakeLocks length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v7, v6

    move v6, v2

    :goto_6
    if-ge v6, v1, :cond_8

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeLocks Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " |time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " |count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    iget-object v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerComparator:Ljava/util/Comparator;

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    if-le v8, v9, :cond_a

    sget v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    goto :goto_8

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_8
    move v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeupReasons length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const/4 v7, 0x0

    nop

    :goto_9
    if-ge v2, v1, :cond_b

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeupReason Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " |time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " |count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    return-void
.end method

.method private getCurrentPoint()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->access$7300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getDescriptionByPlugType(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "NONE"

    goto :goto_0

    :pswitch_0
    const-string v0, "USB"

    goto :goto_0

    :pswitch_1
    const-string v0, "AC"

    goto :goto_0

    :pswitch_2
    const-string v0, "NONE"

    goto :goto_0

    :cond_0
    const-string v0, "WIRELESS"

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDrainTypeByFakeUid(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "wifi"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "user"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "unaccounted"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "screen"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "phone"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "overcounted"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "memory"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "idle"

    goto :goto_0

    :pswitch_9
    const-string v0, "flashlight"

    goto :goto_0

    :pswitch_a
    const-string v0, "cell"

    goto :goto_0

    :pswitch_b
    const-string v0, "camera"

    goto :goto_0

    :pswitch_c
    const-string v0, "bluetooth"

    goto :goto_0

    :pswitch_d
    const-string v0, "app"

    goto :goto_0

    :pswitch_e
    const-string v0, "ambient_display"

    nop

    :goto_0
    nop

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x63
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 3

    const/16 v0, -0x55

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$6;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v0, -0x55

    goto :goto_0

    :pswitch_0
    const/16 v0, -0x56

    goto :goto_0

    :pswitch_1
    const/16 v0, -0x57

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x58

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x59

    goto :goto_0

    :pswitch_4
    const/16 v0, -0x5a

    goto :goto_0

    :pswitch_5
    const/16 v0, -0x5b

    goto :goto_0

    :pswitch_6
    const/16 v0, -0x5c

    goto :goto_0

    :pswitch_7
    const/16 v0, -0x5d

    goto :goto_0

    :pswitch_8
    const/16 v0, -0x5e

    goto :goto_0

    :pswitch_9
    const/16 v0, -0x5f

    goto :goto_0

    :pswitch_a
    const/16 v0, -0x60

    goto :goto_0

    :pswitch_b
    const/16 v0, -0x61

    goto :goto_0

    :pswitch_c
    const/16 v0, -0x63

    goto :goto_0

    :pswitch_d
    const/16 v0, -0x62

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-object v0
.end method

.method private getOsVersion()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "ro.build.version.ota"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Hydrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Hydrogen "

    goto :goto_0

    :cond_0
    const-string v1, "Oxygen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Oxygen "

    goto :goto_0

    :cond_1
    const-string v0, ""

    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleBatteryStatsRelated(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleBatteryStatsRelated from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    :try_start_0
    const-string/jumbo v0, "handle_plug_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePowerConsumption(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateWakeupReasons(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleBatteryStatsRelated Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    :goto_1
    return-void
.end method

.method private handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleCalculate begin, calculateTime_Begin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |calculateTime_End:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "handleCalculate mBaseTimer is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    iget-wide v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$7000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$7100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generatePowerConsumptionData()V

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForPowerConsumptionList:Landroid/util/SparseArray;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeLocks:Ljava/util/HashMap;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mRetForKernelWakeupReasons:Ljava/util/HashMap;

    iput-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    const-string/jumbo v4, "handleCalculate end"

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    nop

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCalculate Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private handleDozeEvent(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$6200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;Ljava/lang/String;)Z

    :goto_0
    const-string v0, "doze"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string v0, "doze"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    return-void
.end method

.method private handleException()V
    .locals 1

    const-string/jumbo v0, "handleException"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->cancelAlarm()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearAllData()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method private handlePastBatteryStatsRelated()V
    .locals 4

    const-string/jumbo v0, "handlePastBatteryStatsRelated"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNeedConsiderPast:Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastPowerConsumption()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastKernelWakeLocks()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculatePastKernelWakeupReasons()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePastBatteryStatsRelated Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    :goto_0
    return-void
.end method

.method private handlePersist(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePersist shutDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    const-string/jumbo v0, "handlePersist"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "handlePersist StatisticalData is null, return"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    :cond_1
    return-void
.end method

.method private handlePkgEvent()V
    .locals 1

    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    return-void
.end method

.method private handlePlugEvent(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    const-string/jumbo v0, "handle_plug_event"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_4
    :goto_2
    const-string/jumbo v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string/jumbo v0, "plug"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePlugFastChargeEvent()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    const-string/jumbo v0, "plug"

    const-string v1, "FASTCHARGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePlugInitEvent(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAppInForegroundDischargeDurationTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$AppInForegroundDischargeDurationTimer;)Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePastBatteryStatsRelated()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_5
    const-string/jumbo v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string/jumbo v0, "plug"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handlePowerLevelEvent(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$6000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    :cond_3
    const-string/jumbo v0, "powerLevel"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string/jumbo v0, "powerLevel"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    return-void
.end method

.method private handleReport(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleReport immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->cancelAlarm()V

    const-string/jumbo v0, "handleReport"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v0, :cond_0

    const-string/jumbo v0, "handleReport mReportData is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->toTrackImmediately()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateTrackAlarm()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearAllData()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->releaseWakeLock()V

    return-void
.end method

.method private handleScreenEvent()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_4
    :goto_2
    const-string/jumbo v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->errorCorrectionProcess(Ljava/lang/String;)V

    const-string/jumbo v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initOnlineConfig()V

    return-void
.end method

.method private initConsumption()V
    .locals 6

    const-string/jumbo v0, "initConsumption"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v0, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCumulativeAppInForeground:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initConsumption pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |totalTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeLocks:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mKernelWakeupReasons:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string v4, "OPCS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initStatistics()V
    .locals 12

    const-string/jumbo v0, "initStatistics"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->loadFromDisk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "initStatistics Not load correctly"

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    :cond_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateReportTime(J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-object v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "initStatistics version change"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    goto :goto_0

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const-wide/32 v8, 0x5265c00

    if-eqz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v10, v3

    if-gez v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gez v7, :cond_3

    const-string/jumbo v1, "initStatistics load correctly, continue to statistic"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-boolean v1, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initConsumption()V

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->loadBaseEventFromDisk()V

    goto :goto_0

    :cond_3
    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v5, v5, v8

    if-gez v5, :cond_4

    const-string/jumbo v5, "initStatistics load correctly, report and start new statistics"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-boolean v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "initStatistics clear data and start new statistics"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearLocalData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method private isBaseTimerInited()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadBaseEventFromDisk()V
    .locals 10

    const-string/jumbo v0, "loadBaseEventFromDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v1, "loadBaseEventFromDisk mBaseData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    if-eqz v4, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "BaseEvent"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    move-object v7, v8

    const-string/jumbo v8, "totalSeq"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    const-string v8, "eventType"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    const-string/jumbo v8, "typeSeq"

    invoke-interface {v1, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    const-string/jumbo v8, "powerLevel"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "screen"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "plug"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    goto :goto_1

    :cond_4
    const-string v8, "doze"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    goto :goto_1

    :cond_5
    const-string v8, "frontPkg"

    iget-object v9, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    iget v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    :cond_6
    :goto_1
    const-string/jumbo v5, "relativeTime"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    const-string/jumbo v5, "realTime"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    const-string/jumbo v5, "screenState"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    const-string/jumbo v5, "plugState"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    const-string/jumbo v5, "idleState"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    const-string/jumbo v5, "powerlevelState"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    const-string v5, "frontPkg"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    const-string v5, "description"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    iget v5, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    nop

    :cond_8
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto/16 :goto_0

    :cond_9
    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpBaseEventList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadBaseEventFromDisk Exception e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private loadFromDisk()Z
    .locals 13

    const-string/jumbo v0, "loadFromDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v2, "loadFromDisk mStatisticalData is null, return"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v5, v6

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_17

    if-eqz v6, :cond_15

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OPCS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "os_version"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    const-string/jumbo v8, "realStartTime"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    const-string/jumbo v8, "realEndTime"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    const-string v8, "firstReport"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const-string/jumbo v8, "totalDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "count"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const-string/jumbo v8, "totalDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const-string/jumbo v8, "totalChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_5
    const-string/jumbo v8, "screenOnDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "count"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    add-int/lit8 v0, v0, 0x1

    :cond_6
    const-string/jumbo v8, "totalScreenOnDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_7
    const-string/jumbo v8, "screenOnDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_8
    const-string/jumbo v8, "screenOnChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_9
    const-string/jumbo v8, "screenOffDischarge"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "count"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    add-int/lit8 v0, v0, 0x1

    :cond_a
    const-string/jumbo v8, "totalScreenOffDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_b
    const-string/jumbo v8, "screenOffDischargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_c
    const-string/jumbo v8, "screenOffChargeDuration"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "duration"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    add-int/lit8 v0, v0, 0x1

    :cond_d
    const-string v8, "dozeFragment"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string/jumbo v9, "relativeBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    const-string/jumbo v9, "relativeEndTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    const-string v9, "duration"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    const-string/jumbo v9, "realBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    const-string v9, "beginPowerLevel"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    const-string v9, "endPowerLevel"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    const-string v9, "exitReason"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v8, "chargeFragment"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string/jumbo v9, "relativeBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    const-string/jumbo v9, "relativeEndTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    const-string v9, "duration"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    const-string/jumbo v9, "realBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    const-string v9, "beginPowerLevel"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    const-string v9, "endPowerLevel"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    const-string/jumbo v9, "screenOnDuration"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    const-string v9, "firstFullTimeToRelativeBeginTime"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    const-string/jumbo v9, "plugType"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v8, "powerConsumption"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-direct {v8, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    const-string/jumbo v9, "uid"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_10

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v9, "uid"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    const-string v10, "drainType"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    const-string/jumbo v10, "pkgName"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string/jumbo v10, "versionName"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    const-string/jumbo v10, "versionCode"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    const-string/jumbo v10, "totalTime"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    const-string/jumbo v10, "totalPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    const-string v10, "cpuPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    const-string v10, "audioPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    const-string/jumbo v10, "wakeLockPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    const-string/jumbo v10, "mobileRadioPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    const-string/jumbo v10, "wifiPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    const-string v10, "bluetoothPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    const-string/jumbo v10, "gpsPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    const-string/jumbo v10, "sensorPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    const-string v10, "cameraPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    const-string v10, "flashlightPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    const-string/jumbo v10, "videoPowerMah"

    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    const-string/jumbo v8, "kernelWakeLocks"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_13

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>()V

    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-nez v11, :cond_12

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v11, "name"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-string v11, "count"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget-object v11, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string/jumbo v8, "kernelWakeupReasons"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-direct {v8}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;-><init>()V

    const-string/jumbo v11, "time"

    invoke-interface {v3, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-nez v9, :cond_14

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v9, "name"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    const-string/jumbo v9, "time"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-string v9, "count"

    invoke-interface {v3, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    iget-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_15
    nop

    :cond_16
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v6, v7

    goto/16 :goto_0

    :cond_17
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_ONEPLUS:Z

    if-nez v4, :cond_18

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v4, :cond_19

    :cond_18
    const-string/jumbo v4, "loadFromDisk()"

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V

    :cond_19
    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1a

    return v7

    :cond_1a
    const-string v4, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadFromDisk incomplete data, return false count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v6, "OPCS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadFromDisk Exception e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v1

    :goto_2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private makeBaseRecordPoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized makeBaseRecordPoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeBaseRecordPoint eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "makeBaseRecordPoint DEBUG_VERIFY is false, return"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v3, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    const/4 v1, 0x0

    const-string/jumbo v2, "powerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    move v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPowerLevelSeq:I

    :cond_1
    :goto_0
    move/from16 v16, v1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    move v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentScreenSeq:I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "plug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    move v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPlugSeq:I

    goto :goto_0

    :cond_4
    const-string v2, "doze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    move v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentDozeSeq:I

    goto :goto_0

    :cond_5
    const-string v2, "frontPkg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    move v1, v2

    iget v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentPkgSeq:I

    goto :goto_0

    :goto_1
    iget v1, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCurrentTotalSeq:I

    new-instance v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    iget-boolean v10, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    iget-boolean v11, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    iget-boolean v12, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    iget v13, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    iget-object v5, v15, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mFrontPkg:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v14

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v17, v5

    move-object v5, v0

    move-object v0, v14

    move-object/from16 v14, v17

    move-object/from16 v15, p2

    :try_start_2
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BaseEventList_put(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private makeDataToString(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "makeDataToString"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v2, "os_version"

    iget-object v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "realStartTime"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "realEndTime"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "firstReport"

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOnDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalScreenOnDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOnDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOnChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOffDischarge"

    iget v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "totalScreenOffDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOffDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "screenOffChargeDuration"

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_0
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$9000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "dozeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_1
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$9100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_3

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, "chargeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_2
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-static {v5, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_6

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string/jumbo v2, "systemModule"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_3
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-static {v5, v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_9

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v2, "appTop"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_4
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_c

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string/jumbo v2, "kernelWakeLocks"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_5
    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_10

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_f

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string/jumbo v2, "kernelWakeupReasons"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_6
    move v2, v3

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->access$9400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_12

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v3, v2, 0x1

    goto :goto_6

    :cond_13
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v2, "baseEvent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_15
    nop

    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdmData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeDataToString Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static myLogSpecific(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS_SPECIFIC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private persistBaseDataToDisk()V
    .locals 9

    const-string/jumbo v0, "persistBaseDataToDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v1, "persistBaseDataToDisk mBaseData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseEventList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    move-object v4, v6

    const-string v6, "BaseEvent"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalSeq"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "typeSeq"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "eventType"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "relativeTime"

    iget-wide v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "realTime"

    iget-wide v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "plugState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "idleState"

    iget-boolean v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "powerlevelState"

    iget v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "frontPkg"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "description"

    iget-object v7, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "BaseEvent"

    invoke-interface {v0, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistBaseDataToDisk Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseData:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "persistToDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v3, "persistToDisk mStatisticalData is null, return"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "OPCS"

    const-string/jumbo v3, "persistToDisk data is null, return"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "OPCS"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "os_version"

    iget-object v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "realStartTime"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "realEndTime"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "firstReport"

    iget-boolean v7, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mNewVersionFirstReport:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalScreenOnDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalScreenOnDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOnChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "count"

    iget v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffDischarge"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalScreenOffDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "totalScreenOffDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffDischargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "duration"

    iget-wide v7, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "screenOffChargeDuration"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move v6, v7

    :goto_0
    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    iget-object v9, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-object v8, v9

    const-string v9, "dozeFragment"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "seq"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "relativeBeginTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "relativeEndTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "duration"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "realBeginTime"

    iget-wide v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "beginPowerLevel"

    iget v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "endPowerLevel"

    iget v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "exitReason"

    iget-object v10, v8, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "dozeFragment"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object v9, v6

    move v6, v7

    :goto_1
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-object v9, v10

    const-string v10, "chargeFragment"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "seq"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "relativeBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "relativeEndTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "duration"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "realBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "beginPowerLevel"

    iget v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "endPowerLevel"

    iget v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "screenOnDuration"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "firstFullTimeToRelativeBeginTime"

    iget-wide v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "plugType"

    iget-object v11, v9, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "chargeFragment"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    nop

    :goto_2
    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_8

    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    move-object v6, v10

    iget-object v10, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-nez v10, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string/jumbo v10, "powerConsumption"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "uid"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "drainType"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    if-nez v11, :cond_5

    const-string/jumbo v11, "null"

    goto :goto_3

    :cond_5
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    :goto_3
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "pkgName"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v11, :cond_6

    const-string/jumbo v11, "null"

    goto :goto_4

    :cond_6
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :goto_4
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "versionName"

    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-nez v11, :cond_7

    const-string/jumbo v11, "null"

    goto :goto_5

    :cond_7
    iget-object v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    :goto_5
    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "versionCode"

    iget v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "totalTime"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "totalPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "cpuPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "audioPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "wakeLockPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "mobileRadioPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "wifiPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "bluetoothPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "gpsPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "sensorPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "cameraPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "flashlightPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "videoPowerMah"

    iget-wide v11, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "powerConsumption"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object v7, v14

    iget-wide v14, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v12, v14, v12

    if-nez v12, :cond_9

    goto :goto_7

    :cond_9
    const-string/jumbo v12, "kernelWakeLocks"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "time"

    iget-wide v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "count"

    iget v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "kernelWakeLocks"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    iget-object v10, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    move-object v7, v14

    iget-wide v14, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v14, v14, v12

    if-nez v14, :cond_b

    goto :goto_9

    :cond_b
    const-string/jumbo v14, "kernelWakeupReasons"

    invoke-interface {v3, v0, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "name"

    iget-object v15, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-interface {v3, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "time"

    iget-wide v12, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v0, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "count"

    iget v13, v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v0, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "kernelWakeupReasons"

    invoke-interface {v3, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v12, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    :goto_9
    const-wide/16 v12, 0x0

    goto :goto_8

    :cond_c
    const-string v10, "OPCS"

    invoke-interface {v3, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persistToDisk Exception e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_d

    iget-object v5, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_d
    :goto_a
    return-void
.end method

.method private persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistBaseDataToDisk()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    const-string/jumbo v0, "releaseWakeLock"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resetListener()V
    .locals 5

    const-string/jumbo v0, "resetListener"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    invoke-interface {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;->resetParamForOPCS()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v0, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sget-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eq v4, v5, :cond_2

    sput-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    sget-boolean v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    sput-object v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleException()V

    :cond_2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "reportIntervalThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateReportAlarm()V

    :cond_3
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "calculateIntervalThreshold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    :cond_4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bootDelayTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    :cond_5
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "randomInterval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    :cond_6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    :cond_7
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topKernelWakeLocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    :cond_8
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "topKernelWakeupReasons"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeupReasons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ReportTimePoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ReportTimePoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON CalculateIntervalThreshold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON BootDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeLocks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeLocks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON TopKernelWakeupReasons:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->TopKernelWakeupReasons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private toTrackImmediately()V
    .locals 1

    const-string/jumbo v0, "toTrackImmediately"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-void
.end method

.method private trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 3

    const-string/jumbo v0, "trackPowerData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "trackPowerData data is null, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v1, "OPCS"

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->makeDataToString(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public initPlugState(Ljava/lang/Boolean;IZ)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initPlugState Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public notifyBatteryLevelEvent(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyBatteryLevelEvent Level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyBatteryLevelEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDozeEvent(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDozeEvent idle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyDozeEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFastChargeEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyFastChargeEvent isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyFastChargeEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public notifyPkgEvent(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_VERIFY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "notifyPkgEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyPlugEvent Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyPlugEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenEvent(Ljava/lang/Boolean;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyScreenEvent Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyScreenEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerResetParamListener(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;)V
    .locals 1

    const-string/jumbo v0, "registerResetParamListener"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    return-void
.end method
