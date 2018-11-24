.class public Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;,
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

.field private static DEBUG:Z = false

.field private static DEBUG_SPECIFIC:Z = false

.field private static final DEBUG_SPECIFIC_ENABLE:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field private static final DES_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final DES_PLUGGED_FASTCHARGE:Ljava/lang/String; = "FASTCHARGE"

.field private static final DES_PLUGGED_NONE:Ljava/lang/String; = "NONE"

.field private static final DES_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final DES_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static ENABLE:Z = false

.field private static final ENDLINE:Ljava/lang/String;

.field private static final EVENT_ACTIVE:I = 0x0

.field private static final EVENT_IDLE:I = 0x1

.field private static final EVENT_PLUG:I = 0x1

.field private static final EVENT_SCREEN_OFF:I = 0x0

.field private static final EVENT_SCREEN_ON:I = 0x1

.field private static final EVENT_UNPLUG:I = 0x0

.field private static INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic; = null

.field private static final MSG_DOZE_EVENT:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_PERSIST:I = 0x7

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

.field private static final VALUE_FULL_POWER:I = 0x64

.field private static final VALUE_ONE_DAY:J = 0x5265c00L

.field private static final VERSION:I = 0x1141301


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

.field private mBatteryManager:Landroid/os/BatteryManager;

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

.field private mIdleState:Z

.field private mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPersistData:Landroid/util/AtomicFile;

.field private mPlugState:Z

.field private mPowerLevel:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

.field private mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

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

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private pi:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE_BAK:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

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

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->CalculateIntervalThreshold:J

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->BootDelayTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mOnePlusConsumptionDetectorConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mResetParamListener:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->pi:Landroid/app/PendingIntent;

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

    const-string v0, "OnePlusPowerConsumptionStatistic()--constructor:18092801"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "persist.sys.opcs.debug_specific"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG_SPECIFIC:Z

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

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleReport(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initStatistics()V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    return p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/BatteryManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBatteryManager:Landroid/os/BatteryManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugInitEvent(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugFastChargeEvent()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleScreenEvent()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleDozeEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateReportAlarm()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mIdleState:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePlugEvent(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handlePowerLevelEvent(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mReportData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->toTrackImmediately()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    return-object v0
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

.method static synthetic access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

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

    const/4 v5, 0x2

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

.method private clearAllData()V
    .locals 2

    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificCounter()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearSpecificTimer()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearFragment()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    return-void
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

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    return-void
.end method

.method private clearPersistData()V
    .locals 6

    const-string v0, "clearPersistData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v1, "persistToDisk mStatisticalData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

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

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
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

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearSpecificCounter()V
    .locals 1

    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    return-void
.end method

.method private clearSpecificTimer()V
    .locals 1

    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    return-void
.end method

.method private dumpInfo()V
    .locals 2

    const-string v0, "OPCS"

    const-string v1, "# dump # VERSION # 18092801"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public static final getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->INSTANCE:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;-><init>(Landroid/content/Context;)V

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

.method private handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->access$1800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCalculate begin, calculateTime_Begin:"

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

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "handleCalculate mBaseTimer is null, return"

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

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$5200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_End:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

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

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$5400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

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

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$5500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v4, "handleCalculate end"

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCalculate Exception e:"

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

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$4600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->access$4700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private handleException()V
    .locals 1

    const-string v0, "handleException"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->cancelAlarm()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearAllData()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

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
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calibrateCalculateAlarm()V

    :cond_1
    return-void
.end method

.method private handlePlugEvent(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$4000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$3700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private handlePlugFastChargeEvent()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$4300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    return-void
.end method

.method private handlePlugInitEvent(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$3700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mCalculateTime_Begin:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_5
    return-void
.end method

.method private handlePowerLevelEvent(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_TotalDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOnDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificCounter_ScreenOffDischarge:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->access$4400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$4500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z

    :cond_3
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

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$4100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOnDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_TotalScreenOffDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragmentTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->access$4200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffDischargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPlugState:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOnChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mSpecificTimer_ScreenOffChargeDuration:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$3800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initOnlineConfig()V

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

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

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

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

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

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->reportData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "initStatistics clear data and start new statistics"

    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resetListener()V

    return-void
.end method

.method private loadFromDisk()Z
    .locals 11

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

    if-eq v6, v7, :cond_11

    if-eqz v6, :cond_f

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

    if-eqz v8, :cond_10

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

    goto :goto_1

    :cond_f
    nop

    :cond_10
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v6, v7

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v4, "loadFromDisk()"

    invoke-virtual {v2, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dump(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mStatisticalData:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    const/16 v4, 0xc

    if-ne v0, v4, :cond_12

    return v7

    :cond_12
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

    if-lez v2, :cond_2

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_0
    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {v4, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$5800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, "dozeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    move v2, v3

    iget-object v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_3

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, "chargeFragment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->DEBUG:Z

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

.method private persistToDisk(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 10

    const-string/jumbo v0, "persistToDisk"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string/jumbo v1, "persistToDisk mStatisticalData is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "OPCS"

    const-string/jumbo v1, "persistToDisk data is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

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

    const-string v4, "OPCS"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "os_version"

    iget-object v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "realStartTime"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "realEndTime"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "count"

    iget v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "count"

    iget v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalScreenOnDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalScreenOnDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOnChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "count"

    iget v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffDischarge"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalScreenOffDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "totalScreenOffDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffDischargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "duration"

    iget-wide v5, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "screenOffChargeDuration"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v4, v5

    :goto_0
    iget-object v7, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-object v6, v7

    const-string v7, "dozeFragment"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "seq"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "relativeBeginTime"

    iget-wide v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "relativeEndTime"

    iget-wide v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "duration"

    iget-wide v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "realBeginTime"

    iget-wide v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "beginPowerLevel"

    iget v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "endPowerLevel"

    iget v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "exitReason"

    iget-object v8, v6, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "dozeFragment"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    nop

    :goto_1
    iget-object v7, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v7, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-object v4, v7

    const-string v7, "chargeFragment"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "seq"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "relativeBeginTime"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "relativeEndTime"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "duration"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "realBeginTime"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "beginPowerLevel"

    iget v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "endPowerLevel"

    iget v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "screenOnDuration"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "firstFullTimeToRelativeBeginTime"

    iget-wide v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "plugType"

    iget-object v8, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-interface {v0, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "chargeFragment"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v5, "OPCS"

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENDLINE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

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

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPersistData:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_4
    :goto_2
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

.method private reportData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    .locals 1

    const-string/jumbo v0, "reportData"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->trackPowerData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->clearPersistData()V

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

    if-ge v1, v2, :cond_7

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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
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

    :goto_2
    const-string v2, "[OnlineConfig] resolveConfigFromJSON RandomInterval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->RandomInterval:I

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

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

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

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

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

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notifyPlugEvent not yet timing, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
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

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mBaseTimer:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

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
