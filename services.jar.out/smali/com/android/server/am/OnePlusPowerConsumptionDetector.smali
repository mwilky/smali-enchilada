.class Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;,
        Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "action.opcd.test"

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field public static DEBUG:Z = false

.field public static DISK:Z = false

.field public static ENABLE:Z = false

.field public static final FAKE_UID_APP:I = -0x5c

.field public static final FAKE_UID_BASE:I = -0x64

.field public static final FAKE_UID_BLUETOOTH:I = -0x5f

.field public static final FAKE_UID_CAMERA:I = -0x58

.field public static final FAKE_UID_CELL:I = -0x62

.field public static final FAKE_UID_DEFAULT:I = -0x57

.field public static final FAKE_UID_END:I = -0x56

.field public static final FAKE_UID_FLASHLIGHT:I = -0x5d

.field public static final FAKE_UID_IDLE:I = -0x63

.field public static final FAKE_UID_OVERCOUNTED:I = -0x59

.field public static final FAKE_UID_PHONE:I = -0x61

.field public static final FAKE_UID_SCREEN:I = -0x5e

.field public static final FAKE_UID_UNACCOUNTED:I = -0x5a

.field public static final FAKE_UID_USER:I = -0x5b

.field public static final FAKE_UID_WIFI:I = -0x60

.field public static final HIGH_DRAIN_INTERVAL_PERCENT_THRESHOLD:D = 0.2

.field public static final HIGH_DRAIN_TOTAL_PERCENT_THRESHOLD:D = 0.1

.field public static LOW_POWER_THRESHOLD:I = 0x0

.field public static MDM:Z = false

.field public static final OPCD_RECORD_FILE:Ljava/lang/String; = "/data/system/opcd.log"

.field public static final OPCD_RECORD_OLD_FILE:Ljava/lang/String; = "/data/system/opcd.log.old"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opcd.debug"

.field private static final PROP_DISK:Ljava/lang/String; = "persist.sys.opcd.disk"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opcd.enable"

.field private static final PROP_MDM:Ljava/lang/String; = "persist.sys.opcd.mdm"

.field public static final TAG:Ljava/lang/String; = "OPCD"

.field public static final TRACK_KEY_STATISTIC:Ljava/lang/String; = "statistic"

.field public static final TRACK_TAG_OPCD:Ljava/lang/String; = "OPCD"

.field public static final VERSION:I = 0x1053fb1

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

.field private static mContext:Landroid/content/Context;

.field private static mDozeInActiveTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

.field private static mInstance:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

.field private static mPm:Lcom/android/server/pm/PackageManagerService;

.field private static mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mScreenOnTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

.field private static mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private static mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private static sConnectedBatLevel:I

.field private static sConnectedTime:J

.field private static sDisconnectedBatLevel:I

.field private static sDisconnectedTime:J

.field private static sIsIdle:Z

.field private static sLowPowerLock:Z

.field private static sScreenOffTriggerTime:J

.field private static sScreenOnTriggerTime:J

.field private static sTotalDozeInActiveTime:J

.field private static sTotalScreenOnTime:J


# instance fields
.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    const/4 v1, 0x7

    sput v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LOW_POWER_THRESHOLD:I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mInstance:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    sput-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    sput-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDozeInActiveTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    sput-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    sput-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sIsIdle:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sLowPowerLock:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOnTriggerTime:J

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOffTriggerTime:J

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    const/16 v0, -0x64

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedBatLevel:I

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedBatLevel:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryWarningLevel:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryCloseWarningLevel:I

    const-string/jumbo v0, "persist.sys.opcd.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    const-string/jumbo v0, "persist.sys.opcd.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    const-string/jumbo v0, "persist.sys.opcd.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    const-string/jumbo v0, "persist.sys.opcd.disk"

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    if-nez v0, :cond_0

    const-string v0, "OPCD"

    const-string v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "OnePlusPowerConsumptionDetector()--constructor:17121201"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sput-object p2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPm:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerManager:Landroid/os/PowerManager;

    sput-object p3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->responseBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedBatLevel:I

    return v0
.end method

.method static synthetic access$1000()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedBatLevel:I

    return p0
.end method

.method static synthetic access$1100()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$1102(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    return-wide p0
.end method

.method static synthetic access$1114(J)J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    return-wide v0
.end method

.method static synthetic access$1200()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    return-wide p0
.end method

.method static synthetic access$1214(J)J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    return-wide v0
.end method

.method static synthetic access$1300()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1400(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sLowPowerLock:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sLowPowerLock:Z

    return p0
.end method

.method static synthetic access$1600()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOnTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$1602(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOnTriggerTime:J

    return-wide p0
.end method

.method static synthetic access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    return-object v0
.end method

.method static synthetic access$1800()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOffTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$1802(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOffTriggerTime:J

    return-wide p0
.end method

.method static synthetic access$1900()Landroid/os/PowerManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sIsIdle:Z

    return v0
.end method

.method static synthetic access$2002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sIsIdle:Z

    return p0
.end method

.method static synthetic access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDozeInActiveTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/android/server/am/BatteryStatsService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedBatLevel:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    sput p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedBatLevel:I

    return p0
.end method

.method static synthetic access$2400(D)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getHighSipperFromCumulativeDrain(D)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->persistToDisk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryCloseWarningLevel:I

    return v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->unRegisterMyPowerLevelReceiver(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    return-wide p0
.end method

.method static synthetic access$700()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    return-wide p0
.end method

.method static synthetic access$800()Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    return-object v0
.end method

.method static synthetic access$900(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->getDrainTypeByFakeUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
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

.method private static formatTime(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3c

    rem-long v2, p0, v0

    long-to-int v2, v2

    div-long v3, p0, v0

    rem-long/2addr v3, v0

    long-to-int v0, v3

    const-wide/16 v3, 0xe10

    div-long v3, p0, v3

    long-to-int v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getDrainTypeByFakeUid(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    :pswitch_1
    const-string v0, "camera"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "overcounted"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "unaccounted"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "user"

    goto :goto_0

    :pswitch_5
    const-string v0, "app"

    goto :goto_0

    :pswitch_6
    const-string v0, "flashlight"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "screen"

    goto :goto_0

    :pswitch_8
    const-string v0, "bluetooth"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "wifi"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "phone"

    goto :goto_0

    :pswitch_b
    const-string v0, "cell"

    goto :goto_0

    :pswitch_c
    const-string v0, "idle"

    nop

    :goto_0
    nop

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x63
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

.method private static getFakeUidByDrainType(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 3

    const/16 v0, -0x57

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    invoke-virtual {p0}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v0, -0x57

    goto :goto_0

    :pswitch_0
    const/16 v0, -0x58

    goto :goto_0

    :pswitch_1
    const/16 v0, -0x59

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x5a

    goto :goto_0

    :pswitch_3
    const/16 v0, -0x5b

    goto :goto_0

    :pswitch_4
    const/16 v0, -0x5d

    goto :goto_0

    :pswitch_5
    const/16 v0, -0x5e

    goto :goto_0

    :pswitch_6
    const/16 v0, -0x5f

    goto :goto_0

    :pswitch_7
    const/16 v0, -0x60

    goto :goto_0

    :pswitch_8
    const/16 v0, -0x61

    goto :goto_0

    :pswitch_9
    const/16 v0, -0x62

    goto :goto_0

    :pswitch_a
    const/16 v0, -0x63

    goto :goto_0

    :pswitch_b
    const/16 v0, -0x5c

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static getHighSipperFromCumulativeDrain(D)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getHighSipperFromCumulativeDrain # percentThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    sget-object v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    sget-object v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    nop

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_0

    iget-wide v8, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v12

    div-double v6, v8, v12

    :cond_0
    cmpl-double v8, v6, v10

    if-lez v8, :cond_2

    sget-object v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v9}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;-><init>(Ljava/lang/Integer;)V

    nop

    nop

    iput-wide v6, v8, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    invoke-virtual {v8, v5}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initPkgNameByUid()V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getHighSipperFromCumulativeDrain # pcs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusPowerConsumptionDetector;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mInstance:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mInstance:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mInstance:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    return-object v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static persistToDisk(Ljava/lang/String;)Z
    .locals 9

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v0, "/data/system/opcd.log"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x200000

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_3

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v5

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/system/opcd.log.old"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v4, v7

    :goto_0
    nop

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 v1, 0x0

    return v6

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    nop

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const/4 v4, 0x0

    return v1

    :goto_3
    nop

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const/4 v4, 0x0

    throw v1

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v4, 0x0

    return v1
.end method

.method private registerBatteryReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.opcd.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerMyPowerLevelReceiver(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    if-nez v0, :cond_0

    const-string/jumbo v0, "register MyPowerLevelReceiver"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private responseBroadcast(Landroid/content/Intent;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # enter action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    sget-wide v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_f

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerMyPowerLevelReceiver(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const-string v3, "A"

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->unRegisterMyPowerLevelReceiver(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "action.opcd.test"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    const-string v3, "dump"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "prop_using_on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sput-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    const-string/jumbo v3, "persist.sys.opcd.enable"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "prop_using_off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->ENABLE:Z

    const-string/jumbo v3, "persist.sys.opcd.enable"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v3, "prop_debug_on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sput-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    const-string/jumbo v3, "persist.sys.opcd.debug"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string/jumbo v3, "prop_debug_off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DEBUG:Z

    const-string/jumbo v3, "persist.sys.opcd.debug"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string/jumbo v3, "prop_mdm_on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sput-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    const-string/jumbo v3, "persist.sys.opcd.mdm"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string/jumbo v3, "prop_mdm_off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    const-string/jumbo v3, "persist.sys.opcd.mdm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v3, "prop_disk_on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sput-boolean v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    const-string/jumbo v3, "persist.sys.opcd.disk"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string/jumbo v3, "prop_disk_off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sput-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    const-string/jumbo v3, "persist.sys.opcd.disk"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# onReceive # exit action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# onReceive # exit mCharging="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    sget-wide v5, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_10

    move v1, v2

    nop

    :cond_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit isIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sIsIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mChargeTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sConnectedTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mDischargeTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sDisconnectedTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mScreenOnTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOnTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOnTriggerTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mScreenOffTriggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOffTriggerTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    sget-wide v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sScreenOffTriggerTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mTotalScreenOnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalScreenOnTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# onReceive # exit mTotalDozeInActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->sTotalDozeInActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private static trackPowerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "statistic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ode"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->trackPowerData(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private static trackPowerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->MDM:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    const-string v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "trackPowerData APPID = NYNCG4I0TI"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trackPowerData key= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and value= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-virtual {v0, p0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method private static unRegisterMyPowerLevelReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister MyPowerLevelReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mPowerLevelReceiver:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mChargingRecord:Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;I)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mScreenOnTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;I)V

    sput-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mDozeInActiveTimer:Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryWarningLevel:I

    sget-object v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget-object v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->mLowBatteryCloseWarningLevel:I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V

    return-void
.end method
