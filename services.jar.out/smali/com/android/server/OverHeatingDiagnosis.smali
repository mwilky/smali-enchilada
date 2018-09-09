.class public Lcom/android/server/OverHeatingDiagnosis;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OverHeatingDiagnosis$Stopwatch;,
        Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;,
        Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;,
        Lcom/android/server/OverHeatingDiagnosis$UidStat;,
        Lcom/android/server/OverHeatingDiagnosis$UidObserver;,
        Lcom/android/server/OverHeatingDiagnosis$CameraStat;,
        Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;,
        Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;,
        Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;,
        Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    }
.end annotation


# static fields
.field public static final BATTERY_PLUGGED_FASTCHARGE:I = 0x8

.field static final COOLDOWN_AFTER_BOOT:J = 0x2bf20L

.field static final CRITICAL_CHARGING_DURATION:J = 0x2bf20L

.field static final CRITICAL_CHARGING_TEMPERATURE:I = 0x2c

.field static final CRITICAL_CPU_USAGE:I = 0x28

.field static final CRITICAL_FOREGROUND_DURATION:J = 0xea60L

.field static final CRITICAL_TEMPERATURE:I = 0x27

.field static final CRITICAL_TOTAL_CPU_USAGE:I = 0xc8

.field public static final DIAGNOSIS_HEATING_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_heating.txt"

.field static final DROPBOX_MAX_SIZE:I = 0x40000

.field static final DROPBOX_TAG:Ljava/lang/String; = "overheat"

.field static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final ISSUE_HEAT_CAMERA:I = 0x1c

.field public static final ISSUE_HEAT_CAMERA_WHEN_CHARGE:I = 0x1b

.field public static final ISSUE_HEAT_CPU_LOAD:I = 0x19

.field public static final ISSUE_HEAT_PLAY_WHEN_CHARGE:I = 0x18

.field public static final ISSUE_HEAT_PLAY_WHEN_DASH:I = 0x17

.field public static final ISSUE_HEAT_UNKNOWN_REASON:I = 0x1a

.field static final LOGCAT_LINE_NUM:I = 0x800

.field static final MAX_RECORD_COUNT:I = 0x28

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_CPU_LOAD:Ljava/lang/String; = "cl"

.field private static final MDM_EVENT:Ljava/lang/String; = "overheat"

.field private static final MDM_HEAT_REASON:Ljava/lang/String; = "hr"

.field private static final MDM_HEAT_TYPE:Ljava/lang/String; = "ht"

.field private static final MDM_MAX_TEMP:Ljava/lang/String; = "mt"

.field static final MONITOR_FREQUENCY:J = 0xea60L

.field static final MONITOR_PERIOD_MILLIS:J = 0x493e0L

.field static final NUM_START_TO_MONITOR:I = 0x3

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field static final RES_THERMAL_ZONE_PATH:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field static final RES_THERMAL_ZONE_PRECISION:Ljava/lang/String; = "com.oneplus:integer/config_overheat_thermal_zone_precision"

.field static final STATE_ARBITRATE:I = 0x2

.field static final STATE_MONITOR:I = 0x1

.field static final STATE_NORMAL:I = 0x0

.field static final STATE_REPORT:I = 0x3

.field static final TAG:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final THERMAL_ZONE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field static final THERMAL_ZONE_PRECISION:I = 0x1

.field static final TRIGGER_MONITOR_TEMPERATURE:I = 0x23

.field static final TRIGGER_PERIOD_MILLIS:J = 0x927c0L

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mBatteryFilter:Landroid/content/IntentFilter;

.field mBatteryHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

.field private mBootCompleteTime:J

.field private final mCameraStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/OverHeatingDiagnosis$CameraStat;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mCriticalCharging:J

.field private mCriticalChargingTemp:I

.field private mCriticalCpu:I

.field private mCriticalForeground:J

.field private mCriticalTemp:I

.field private mCriticalTotalCpu:I

.field private mCurrentLevel:I

.field private mCurrentPlugType:I

.field private mCurrentTemp:I

.field private mDiagState:I

.field private mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mEnabled:Z

.field private mEnabledBugreport:Z

.field private mEnabledMDM:Z

.field private mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

.field private mLastLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mMaxMonitorTemp:I

.field private mMonitorForced:Z

.field private mMonitorFrequency:J

.field private mMonitorNum:I

.field private mMonitorPeriod:J

.field private mMonitorStart:J

.field private mMonitorTemp:I

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mThermalZonePath:Ljava/lang/String;

.field private mThermalZonePrecision:I

.field private mTriggerPeriod:J

.field private final mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

.field private final mUidStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/OverHeatingDiagnosis$UidStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 1483
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/OverHeatingDiagnosis$UidObserver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    .line 196
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    .line 205
    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    .line 206
    iput-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 207
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 208
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    .line 209
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    .line 210
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 211
    const/16 v4, 0x23

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 213
    const-string v4, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 214
    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 215
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    .line 216
    const/16 v4, 0xc8

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    .line 217
    const/16 v4, 0x27

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    .line 218
    const/16 v4, 0x2c

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    .line 219
    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    .line 220
    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    .line 222
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    .line 223
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-direct {v2, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    .line 224
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    .line 225
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 226
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;-><init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    .line 228
    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v2, v3, v0}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 230
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 234
    const/4 v0, -0x1

    .line 235
    .local v0, "resId":I
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    .local v2, "res":Landroid/content/res/Resources;
    const-string v3, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 237
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 239
    const-string v3, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res com.oneplus:string/config_overheat_thermal_zone_path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_1
    const-string v3, "OverHeatingDiagnosis"

    const-string/jumbo v4, "res com.oneplus:string/config_overheat_thermal_zone_path not found"

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    const/4 v0, -0x1

    .line 244
    const-string v3, "com.oneplus:integer/config_overheat_thermal_zone_precision"

    invoke-virtual {v2, v3, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 247
    const-string v1, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res com.oneplus:integer/config_overheat_thermal_zone_precision : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    :cond_2
    const-string v1, "OverHeatingDiagnosis"

    const-string/jumbo v3, "res com.oneplus:integer/config_overheat_thermal_zone_precision not found"

    invoke-static {v1, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    invoke-direct {p0}, Lcom/android/server/OverHeatingDiagnosis;->triggerMonitor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # Z

    .line 91
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentLevel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 91
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentTemp:I

    return p1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .line 1485
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1488
    :cond_0
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_2

    .line 1489
    sget-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1491
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 1493
    :try_start_0
    sget-object v3, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1494
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 1495
    aget-object v1, v0, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1499
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    nop

    .line 1491
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v1

    .line 1498
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    return-object v3

    .line 1503
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "i":I
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method private isIncrease([II)Z
    .locals 4
    .param p1, "data"    # [I
    .param p2, "size"    # I

    .line 291
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 295
    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 297
    :cond_2
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private triggerMonitor()Z
    .locals 8

    .line 306
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    if-lt v0, v2, :cond_5

    .line 311
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    new-array v0, v0, [I

    .line 314
    .local v0, "tempData":[I
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 317
    .local v2, "deltaTime":J
    move v5, v1

    .line 317
    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 318
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTemp()I

    move-result v6

    aput v6, v0, v5

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 320
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 322
    iget-boolean v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v5, :cond_2

    .line 323
    return v4

    .line 329
    :cond_2
    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 330
    return v1

    .line 333
    :cond_3
    const-string v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "last temp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    sub-int/2addr v7, v4

    aget v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    array-length v5, v0

    sub-int/2addr v5, v4

    aget v4, v0, v5

    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    if-ge v4, v5, :cond_4

    .line 337
    return v1

    .line 340
    :cond_4
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v1

    return v1

    .line 342
    .end local v0    # "tempData":[I
    .end local v2    # "deltaTime":J
    :cond_5
    return v1
.end method


# virtual methods
.method addRecord(IIIZ)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "temp"    # I
    .param p3, "chargePlug"    # I
    .param p4, "charging"    # Z

    .line 668
    new-instance v6, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;-><init>(Lcom/android/server/OverHeatingDiagnosis;IIZI)V

    .line 669
    .local v0, "record":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add new record, and total size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 673
    .local v2, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    const-string v3, "OverHeatingDiagnosis"

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v2    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method

.method arbitrate(ILjava/lang/String;IIJ)V
    .locals 21
    .param p1, "uid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # I
    .param p4, "totalCpuUsage"    # I
    .param p5, "foreground"    # J

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    move/from16 v9, p4

    .line 355
    move-wide/from16 v10, p5

    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arbitrate: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " procName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cpuUsage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " totalCpuUsage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " foreground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x1

    .line 362
    .local v1, "needReport":Z
    const/4 v2, 0x0

    .line 363
    .local v2, "overheat":Z
    const/16 v3, 0x1a

    .line 364
    .local v3, "type":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v4

    .line 366
    .local v12, "reason":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    .line 367
    .local v4, "totalCameraTime":J
    move-wide v14, v4

    const/4 v4, 0x0

    .line 367
    .local v4, "i":I
    .local v14, "totalCameraTime":J
    :goto_0
    iget-object v5, v6, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 368
    iget-object v5, v6, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 369
    .local v5, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v16

    add-long v14, v14, v16

    .line 370
    const-string v13, "OverHeatingDiagnosis"

    move/from16 v18, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 370
    .end local v1    # "needReport":Z
    .local v18, "needReport":Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string v2, "Camera "

    .line 370
    .end local v2    # "overheat":Z
    .local v19, "overheat":Z
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " use="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v3

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v2

    .end local v3    # "type":I
    .local v20, "type":I
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getIdleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v13, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v5    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_0

    .line 375
    .end local v4    # "i":I
    .end local v18    # "needReport":Z
    .end local v19    # "overheat":Z
    .end local v20    # "type":I
    .restart local v1    # "needReport":Z
    .restart local v2    # "overheat":Z
    .restart local v3    # "type":I
    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .line 375
    .end local v1    # "needReport":Z
    .end local v2    # "overheat":Z
    .end local v3    # "type":I
    .restart local v18    # "needReport":Z
    .restart local v19    # "overheat":Z
    .restart local v20    # "type":I
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charging time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v1

    iget-wide v3, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 377
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Critical temp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    iget v2, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    if-lt v1, v2, :cond_2

    .line 379
    const/4 v2, 0x1

    .line 388
    .end local v19    # "overheat":Z
    .restart local v2    # "overheat":Z
    :goto_1
    move/from16 v19, v2

    goto :goto_2

    .line 382
    .end local v2    # "overheat":Z
    .restart local v19    # "overheat":Z
    :cond_1
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Critical temp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    iget v2, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    if-lt v1, v2, :cond_2

    .line 384
    const/4 v2, 0x1

    goto :goto_1

    .line 388
    :cond_2
    :goto_2
    if-nez v19, :cond_4

    iget-boolean v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 427
    :cond_3
    move v13, v0

    goto/16 :goto_9

    .line 389
    :cond_4
    :goto_3
    iget v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    if-lt v0, v1, :cond_7

    .line 390
    const/16 v1, 0x3e8

    if-ne v7, v1, :cond_5

    .line 392
    const-string/jumbo v1, "system:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 394
    :cond_5
    iget-wide v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v1, v10, v1

    if-gez v1, :cond_6

    .line 397
    const-string v1, "bg:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :goto_4
    move/from16 v1, v18

    goto :goto_5

    .line 401
    :cond_6
    const-string v1, "fg:"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const/4 v1, 0x0

    .line 405
    .end local v18    # "needReport":Z
    .restart local v1    # "needReport":Z
    :goto_5
    const/16 v2, 0x19

    .line 406
    .end local v20    # "type":I
    .local v2, "type":I
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    move v13, v0

    move/from16 v18, v1

    move/from16 v20, v2

    goto :goto_8

    .line 407
    .end local v1    # "needReport":Z
    .end local v2    # "type":I
    .restart local v18    # "needReport":Z
    .restart local v20    # "type":I
    :cond_7
    iget-wide v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v1, v14, v1

    if-lez v1, :cond_9

    .line 408
    const-string v1, "camera hardware"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_8

    .line 410
    const/16 v1, 0x1b

    .line 410
    .end local v20    # "type":I
    .local v1, "type":I
    :goto_6
    goto :goto_7

    .line 412
    .end local v1    # "type":I
    .restart local v20    # "type":I
    :cond_8
    const/16 v1, 0x1c

    goto :goto_6

    .line 414
    .end local v20    # "type":I
    .restart local v1    # "type":I
    :goto_7
    const/4 v2, 0x0

    .line 424
    .end local v18    # "needReport":Z
    .local v2, "needReport":Z
    move v13, v0

    move/from16 v20, v1

    move/from16 v18, v2

    goto :goto_8

    .line 415
    .end local v1    # "type":I
    .end local v2    # "needReport":Z
    .restart local v18    # "needReport":Z
    .restart local v20    # "type":I
    :cond_9
    iget v1, v6, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    if-lt v9, v1, :cond_a

    .line 416
    const/16 v1, 0x19

    .line 417
    .end local v20    # "type":I
    .restart local v1    # "type":I
    move v0, v9

    .line 418
    .end local p3    # "cpuUsage":I
    .local v0, "cpuUsage":I
    const-string v2, "fg:total_cpu_load"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    move v13, v0

    move/from16 v20, v1

    goto :goto_8

    .line 421
    .end local v0    # "cpuUsage":I
    .end local v1    # "type":I
    .restart local v20    # "type":I
    .restart local p3    # "cpuUsage":I
    :cond_a
    const/4 v1, 0x0

    .line 422
    .end local v18    # "needReport":Z
    .local v1, "needReport":Z
    const-string/jumbo v2, "unknown"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    move v13, v0

    move/from16 v18, v1

    .line 424
    .end local v1    # "needReport":Z
    .end local p3    # "cpuUsage":I
    .local v13, "cpuUsage":I
    .restart local v18    # "needReport":Z
    :goto_8
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, v6, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    move-object v0, v6

    move/from16 v1, v20

    move v3, v13

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/OverHeatingDiagnosis;->reportAbnormalHeating(ILjava/lang/String;IIZ)V

    .line 427
    :goto_9
    iget-object v0, v6, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    const/4 v0, 0x0

    iput v0, v6, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 429
    return-void
.end method

.method convertIssueTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 1508
    packed-switch p1, :pswitch_data_0

    .line 1522
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1510
    :pswitch_0
    const-string v0, "ISSUE_HEAT_CAMERA"

    return-object v0

    .line 1518
    :pswitch_1
    const-string v0, "ISSUE_HEAT_CAMERA_WHEN_CHARGE"

    return-object v0

    .line 1520
    :pswitch_2
    const-string v0, "ISSUE_HEAT_UNKNOWN_REASON"

    return-object v0

    .line 1512
    :pswitch_3
    const-string v0, "ISSUE_HEAT_CPU_LOAD"

    return-object v0

    .line 1516
    :pswitch_4
    const-string v0, "ISSUE_HEAT_PLAY_WHEN_CHARGE"

    return-object v0

    .line 1514
    :pswitch_5
    const-string v0, "ISSUE_HEAT_PLAY_WHEN_DASH"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1528
    const-string v0, "**** OverHeatingDiagnosis ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabledBugreport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnabledMDM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalZonePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalZonePrecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorForced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTriggerPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMonitorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalTotalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalChargingTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCriticalForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    const-string v0, "BatteryRecords:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    const/4 v0, 0x0

    .line 1547
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 1549
    .local v1, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    .end local v1    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1551
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public endMonitor()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 633
    return-void
.end method

.method generateRatio(JJ)Ljava/lang/String;
    .locals 12
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 815
    .local v0, "ratio":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1

    goto :goto_0

    :cond_0
    move-wide v3, p3

    .line 816
    .local v3, "totalTime":J
    :goto_0
    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p1

    div-long/2addr v5, v3

    .line 817
    .local v5, "thousands":J
    const-wide/16 v7, 0xa

    div-long v9, v5, v7

    .line 819
    .local v9, "hundreds":J
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 821
    cmp-long v11, v9, v7

    if-gez v11, :cond_1

    .line 822
    mul-long/2addr v7, v9

    sub-long v7, v5, v7

    .line 823
    .local v7, "remainder":J
    cmp-long v1, v7, v1

    if-eqz v1, :cond_1

    .line 824
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 829
    .end local v7    # "remainder":J
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getDeviceTemp()I
    .locals 8

    .line 642
    const/16 v0, 0xa

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [C

    .line 643
    .local v2, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v3, "file":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v3, v2, v1, v0}, Ljava/io/FileReader;->read([CII)I

    move-result v0

    .line 646
    .local v0, "len":I
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 647
    .local v4, "deviceTemp":I
    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    div-int v5, v4, v5

    move v4, v5

    .line 649
    const-string v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDeviceTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    nop

    .line 652
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 650
    return v4

    .line 652
    .end local v0    # "len":I
    .end local v4    # "deviceTemp":I
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 654
    .end local v2    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get device temp w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method grabOnlineConfig()V
    .locals 3

    .line 971
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v2, "OverHeatingDiagnosis"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 973
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 974
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1179
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUidStateChanged: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 1183
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;II)V

    .line 1184
    .local v0, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1185
    .end local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 1187
    .restart local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v0, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1190
    .end local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    :goto_0
    return-void
.end method

.method initializeUidStats()V
    .locals 7

    .line 1126
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1131
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1132
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1133
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1133
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1135
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v4}, Lcom/android/server/OverHeatingDiagnosis;->isProcessStateForeground(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    const-string v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is foreground"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/OverHeatingDiagnosis;->handleOnUidStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v0    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 1140
    :catch_0
    move-exception v0

    .line 1142
    :goto_1
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .line 1149
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1153
    :goto_0
    return-void
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .line 1160
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    .local v0, "shouldntHappen":Landroid/os/RemoteException;
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectUnregisterUidObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    .end local v0    # "shouldntHappen":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method isProcessStateForeground(I)Z
    .locals 1
    .param p1, "procState"    # I

    .line 1172
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method monitorEndLocked()V
    .locals 21

    .line 738
    move-object/from16 v7, p0

    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorEndLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget v0, v7, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 740
    :cond_0
    const/4 v0, 0x2

    iput v0, v7, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 742
    iget-object v0, v7, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    .line 744
    iget-object v0, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 746
    .local v8, "current":J
    iget-object v0, v7, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-virtual {v7, v0}, Lcom/android/server/OverHeatingDiagnosis;->injectUnregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 749
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "Dump of UID state stats:"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    move v1, v0

    .line 750
    .local v1, "i":I
    :goto_0
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 751
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 752
    .local v2, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 753
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->dump()V

    .line 750
    .end local v2    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    .end local v1    # "i":I
    :cond_1
    move v1, v0

    .line 756
    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 757
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 758
    .local v2, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getState()Z

    move-result v3

    .line 759
    .local v3, "available":Z
    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 760
    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->stop()V

    .line 756
    .end local v2    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    .end local v3    # "available":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 764
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    .line 765
    .local v10, "info":Ljava/lang/StringBuilder;
    iget-object v1, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v1, "OverHeatingDiagnosis"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\nprintCurrentLoad:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countWorkingStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v11

    .line 773
    .local v11, "working_num":I
    iget-object v1, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v1

    float-to-int v12, v1

    .line 775
    .local v12, "totalCpuUsage":I
    if-lez v11, :cond_6

    .line 776
    const/4 v1, 0x0

    .line 778
    .local v1, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-object v2, v7, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v13

    .line 780
    .end local v1    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v13, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-eqz v13, :cond_6

    .line 781
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v0, v0

    .line 782
    .local v0, "totalTime":I
    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int v14, v1, v2

    .line 784
    .local v14, "useTime":I
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CPU usage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, v14

    int-to-long v5, v0

    .line 786
    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/android/server/OverHeatingDiagnosis;->generateRatio(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget v15, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 789
    .local v15, "uid":I
    const-wide/16 v1, 0x0

    .line 790
    .local v1, "foreground":J
    iget-object v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 791
    iget-object v3, v7, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 792
    .local v3, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTimeInForeground()J

    move-result-wide v1

    .line 794
    .end local v1    # "foreground":J
    .end local v3    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    .local v16, "foreground":J
    :cond_3
    move-wide/from16 v16, v1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 795
    .end local v0    # "totalTime":I
    .local v18, "totalTime":I
    :cond_4
    move/from16 v18, v0

    mul-int/lit16 v0, v14, 0x3e8

    div-int v0, v0, v18

    div-int/lit8 v19, v0, 0xa

    .line 796
    .local v19, "cpuUsage":I
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 797
    .local v0, "procName":Ljava/lang/String;
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 798
    invoke-direct {v7, v15}, Lcom/android/server/OverHeatingDiagnosis;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 800
    move-object v0, v1

    .line 804
    .end local v0    # "procName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    .local v20, "procName":Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v0

    move-object v0, v7

    move v1, v15

    move-object/from16 v2, v20

    move/from16 v3, v19

    move v4, v12

    move-wide/from16 v5, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/OverHeatingDiagnosis;->arbitrate(ILjava/lang/String;IIJ)V

    .line 807
    .end local v13    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v14    # "useTime":I
    .end local v15    # "uid":I
    .end local v16    # "foreground":J
    .end local v18    # "totalTime":I
    .end local v19    # "cpuUsage":I
    .end local v20    # "procName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method monitorStartLocked()V
    .locals 4

    .line 681
    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorStartLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 683
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    .line 686
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v1, :cond_0

    .line 687
    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 691
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->initializeUidStats()V

    .line 693
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 696
    nop

    .line 696
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 698
    .local v1, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->init()V

    .line 696
    .end local v1    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->reset()V

    .line 703
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 709
    return-void
.end method

.method monitorUpdateLocked()V
    .locals 7

    .line 715
    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "monitorUpdateLocked()"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v0

    .line 719
    .local v0, "deviceTemp":I
    iget v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    if-le v0, v1, :cond_1

    .line 720
    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 723
    :cond_1
    const-string v1, "OverHeatingDiagnosis"

    const-string/jumbo v2, "start to update process cpu info."

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 725
    .local v1, "current":J
    iget-wide v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V

    goto :goto_0

    .line 728
    :cond_2
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 729
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 731
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method registerOnlineConfig()V
    .locals 5

    .line 961
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    const-string v4, "OverHeatingDiagnosis"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 964
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 965
    return-void
.end method

.method reportAbnormalHeating(ILjava/lang/String;IIZ)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # I
    .param p4, "maxTemp"    # I
    .param p5, "needReport"    # Z

    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 441
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportAbnormalHeating: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "moreInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/OnePlusDiagnosisUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v1}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 447
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    if-eqz v1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_3

    .line 449
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 450
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "ht"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v2, "cl"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string/jumbo v2, "mt"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 455
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 456
    .local v3, "index":I
    const-string/jumbo v4, "hr"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .end local v3    # "index":I
    goto :goto_0

    .line 458
    :cond_2
    const-string/jumbo v3, "hr"

    const-string v4, "NA"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :goto_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v4, "overheat"

    invoke-virtual {v3, v4, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 464
    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    if-eqz v1, :cond_4

    if-nez p5, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_6

    .line 466
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis;->writeLogToDropbox(ILjava/lang/String;)V

    .line 468
    :cond_6
    return-void
.end method

.method public setMonitorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 568
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 569
    return-void
.end method

.method public setMonitorForced(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .line 579
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 580
    return-void
.end method

.method public setMonitorNum(I)V
    .locals 0
    .param p1, "num"    # I

    .line 589
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 590
    return-void
.end method

.method public setMonitorPeriod(J)V
    .locals 0
    .param p1, "time"    # J

    .line 608
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 609
    return-void
.end method

.method public setMonitorTemp(I)V
    .locals 0
    .param p1, "temp"    # I

    .line 599
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 600
    return-void
.end method

.method public setThermalZonePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 559
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public start()V
    .locals 9

    .line 261
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 262
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "cameraList":[Ljava/lang/String;
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 265
    .local v5, "camera":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 266
    .local v6, "cameraId":I
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    invoke-direct {v8, p0, v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;I)V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    .end local v5    # "camera":Ljava/lang/String;
    .end local v6    # "cameraId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance v3, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;

    invoke-direct {v3, p0}, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v2    # "cameraList":[Ljava/lang/String;
    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "cae":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "OverHeatingDiagnosis"

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v1    # "cae":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2
    return-void
.end method

.method public startMonitor()V
    .locals 2

    .line 615
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 616
    return-void
.end method

.method public updateMonitor()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 623
    return-void
.end method

.method writeLogToDropbox(ILjava/lang/String;)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 479
    .local v0, "dbox":Landroid/os/DropBoxManager;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 481
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 485
    .local v10, "current":J
    new-instance v12, Lcom/android/server/OverHeatingDiagnosis$1;

    const-string v3, "Overheat dump: overheat"

    move-object v1, v12

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-wide v7, v10

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/OverHeatingDiagnosis$1;-><init>(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JLandroid/os/DropBoxManager;)V

    .line 549
    .local v1, "worker":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 550
    return-void
.end method
