.class public Lcom/android/server/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static DEBUG_ONEPLUS:Z = false

.field static DEBUG_STANDBY:Z = false

.field private static DIAGNOSIS_ISSUE_POWER_OTHER:I = 0x0

.field public static FAKE_LEVEL_DROP:I = 0x0

.field private static final MAX_RECORD_COUNT:I = 0x28

.field public static final MDM_DETAIL:Ljava/lang/String; = "dl"

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MDM_PACKAGE:Ljava/lang/String; = "pn"

.field public static final MDM_REASON_TYPE:Ljava/lang/String; = "tp"

.field private static final PROP_STANDBY_DEBUG_ON:Ljava/lang/String; = "persist.sys.standby_debug"

.field private static final READ_TIMEOUT:J = 0x1388L

.field public static RPM_FILE:Ljava/lang/String; = null

.field public static RPM_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String; = null

.field private static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static final USERSPACE_WAKELOCK:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static WIFI_WAKEUP_FILE:Ljava/lang/String;

.field public static WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

.field private static mKERNELSPACE_WL_CRITERIA:F

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA:I

.field private static mSIGNAL_BAD_CRITERIA:F

.field private static mUNACCOUNTED_CRITERIA:F

.field private static mUSERSPACE_WL_CRITERIA:F


# instance fields
.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor4:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mEverEnterDeepDoze:Z

.field private mIsSDM845:Z

.field mKWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMDMEnabled:Z

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mRPMCountPattern:Ljava/util/regex/Pattern;

.field mRPMInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMInfo_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRPMInfo_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMModePattern:Ljava/util/regex/Pattern;

.field private mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

.field private mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

.field mRawRealtimeOfEnd:J

.field mRawRealtimeOfStart:J

.field mRawUptimeOfEnd:J

.field mRawUptimeOfStart:J

.field mSignal_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_End_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_Start_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfEndDeepidle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStartDeepIdle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandby_Battery_Drop:I

.field private mStandby_KernelSpaceWL_Ms:J

.field private mStandby_Ms:J

.field private mStandby_SignalBad_Ms:J

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_Uptime_Ms:J

.field private mStandby_UserSpaceWL_Ms:J

.field private mStandby_WR_Count:J

.field private mStandby_WUA_Count:I

.field private mStandby_mA:F

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field mUidWUADiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiWakeupPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    const-string/jumbo v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/16 v0, 0x15

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    const/16 v0, 0x63

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    const-string v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    const-string v0, "/d/rpmh/stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    const-string v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    const-string v0, "/d/rpmh/master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    const-string v0, "/sys/devices/soc/18800000.qcom,icnss/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    const/16 v0, 0x12c

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    const-string v2, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\ntime in last mode.*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\ntime in last mode.*"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    const-string v2, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\ntime in last mode.*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\ntime in last mode.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    const-string v2, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    const-string/jumbo v2, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    const-string v2, "count:(\\d)*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMCountPattern:Ljava/util/regex/Pattern;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$1;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$1;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$2;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$2;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$5;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$5;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$6;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$6;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_standby.txt"

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v1, "sdm845"

    const-string/jumbo v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRootCause()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V

    return-void
.end method

.method private calculateDiff()V
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v8, v16, v11

    :goto_1
    move-wide v14, v8

    move-object v12, v10

    goto :goto_2

    :cond_0
    move-wide/from16 v8, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    :goto_2
    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    new-instance v10, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object v8, v10

    move-object v9, v7

    move-object v3, v10

    move-wide v10, v14

    move-object/from16 v20, v12

    move-object v4, v13

    move-wide/from16 v12, v18

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-wide v5, v14

    move-wide/from16 v14, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    :cond_1
    nop

    move-object/from16 v5, v21

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v6, v10, v12, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;-><init>(Ljava/lang/String;III)V

    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$4;

    invoke-direct {v5, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$4;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v3, :cond_8

    nop

    :goto_5
    move v3, v4

    sget v4, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    if-gt v3, v6, :cond_7

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    :cond_7
    add-int/lit8 v4, v3, 0x1

    goto :goto_5

    :cond_8
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Start_Map:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateRPMMasterDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeLockRanking(Ljava/util/List;)V

    :cond_9
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpKernalWakelockRanking(Ljava/util/List;)V

    :cond_a
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeupReasonRanking(Ljava/util/List;)V

    :cond_b
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_c

    const-string v3, "Diff-Signal"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    :cond_c
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_d

    const-string v3, "Diff-RPM"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_e

    const-string v3, "Diff-RPMMaster"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    :cond_e
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_f

    const-string v3, "Diff-WiFiWakeUp"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[calculateDiff] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v2, v4, v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    move v2, v4

    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateRPMMasterDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    new-instance v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-direct {v7, v3, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->cloneSipper_List(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## sippers size[start, end]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_0

    iput-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    :cond_0
    move v5, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    invoke-direct {p0, v4, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    const/4 v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const-string v5, "No-Match"

    invoke-direct {p0, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_3
    iget-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    iget-wide v7, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$7;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$7;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    nop

    move v0, v3

    goto :goto_3

    :cond_5
    const-string v1, "## fetal error, mStandby_Sipper_List == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    const-string v0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    const-wide/16 v5, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v5, v16, v8

    goto :goto_1

    :cond_0
    move-wide/from16 v5, v16

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_1
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v8, v15

    move-wide v10, v5

    move-object v1, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v5, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget v7, v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    sub-int v2, v5, v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    move v2, v5

    :goto_1
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v2, v7, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(IIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v2, v4, v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    move v2, v4

    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-direct {v8, v3, v2, v6, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private checkifRPMAbnormal(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVminAbnormal()Z

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private cloneSipper_List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;

    invoke-direct {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "## fetal error, ori_list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    return-object v0
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
    invoke-direct {p0, p1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

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

    const-string v4, "], accumulated sum-up totalPowerMah="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "sippers == null or sippers.size() == 0"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private dumpCriteria()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUSERSPACE_WL_CRITERIA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |mKERNELSPACE_WL_CRITERIA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |mKERNEL_WAKEUP_COUNT_CRITERIA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mSIGNAL_BAD_CRITERIAs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |mUNACCOUNTED_CRITERIA="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method private dumpKernalWakelockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v2, v1, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v7, "OPSA"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    const-string v7, "**** Exceed read timeout, force exit ***"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** File not found, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    nop

    :cond_3
    :goto_5
    throw v3
.end method

.method private dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpSignal(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;->INSTANCE:Lcom/android/server/-$$Lambda$OnePlusStandbyAnalyzer$W-Y8NF0AGtoKe92P3GHAgSEOKoY;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    nop

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v4, 0xa

    if-ge v2, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dumpWakeLockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private dumpWakeupReasonRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private dumpkwl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    const-string v2, "PowerManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainType="

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

    const-string v2, " |bs.sumPower()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |wakeLockTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

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

    const-string v2, " |packageWithHighestDrain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |getTotalPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

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

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toMDMString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "PowerManagerService.WakeLocks"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v2, v2, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    nop

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v7

    invoke-static {v3, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    :cond_0
    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/16 v6, 0x3e8

    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;

    invoke-direct {v9, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v5, v7

    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v8, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v9, :cond_4

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_4
    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v9, v9

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    goto :goto_2

    :cond_6
    move v10, v3

    :goto_2
    if-lez v10, :cond_8

    add-int v11, v9, v10

    new-array v11, v11, [Ljava/lang/String;

    if-lez v9, :cond_7

    iget-object v12, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v12, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v12, v3, v11, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v11, v8, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    :cond_8
    :goto_3
    goto :goto_4

    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    nop

    :goto_5
    if-ge v3, v4, :cond_b

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$8;

    invoke-direct {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$8;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v0
.end method

.method private ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    nop

    :cond_1
    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    return v5

    :cond_2
    if-eq v1, v2, :cond_3

    return v5

    :cond_3
    return v0
.end method

.method private static isSharedGid(I)Z
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private judgeRootCause()V
    .locals 40

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### Due to mStandby_Ms: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than 0, can\'t judge anything, need just return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "NA"

    const-string v4, "NA"

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-static {v7, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###### Time of Standby period : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### Battery-Drop of Standby period : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " %"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### EverEnterDeepIdle : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v9, Ljava/math/BigDecimal;

    iget v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    float-to-double v10, v10

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x4

    const/4 v11, 0x3

    invoke-virtual {v9, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    iput v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Average Current of Standby period : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " mA"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    invoke-static {v7, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### CPU Uptime of Standby period : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    invoke-static {v7, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    invoke-static {v7, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " times"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    const-string v12, "Diff"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-direct {v0, v12, v14, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " times"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpkwl(Ljava/util/List;)V

    const-string v12, "Diff-RPM"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v12, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    const-string v12, "Diff-RPMMaster"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v12, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    const-string v12, "Diff-RPM"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v12, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### RPM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### RPM MDMDetail : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v16, v9

    iget-wide v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    invoke-static {v7, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-boolean v8, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_2

    const-string v8, "Diff - totalPowerMah"

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-direct {v0, v8, v9, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_2
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$3;

    invoke-direct {v9, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$3;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v8, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v8, :cond_3

    const-string v8, "Diff - wakeLockTimeMs"

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-direct {v0, v8, v9, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_3
    iget-wide v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v8, v8

    const v9, 0x4a5bba00    # 3600000.0f

    div-float/2addr v8, v9

    new-instance v9, Ljava/math/BigDecimal;

    move-object/from16 v17, v14

    float-to-double v13, v8

    invoke-direct {v9, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x4

    invoke-virtual {v9, v11, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### standby_hrs : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " h"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    long-to-float v10, v13

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v10, v13

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v14, v14

    div-float/2addr v10, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v10, v14

    new-instance v15, Ljava/math/BigDecimal;

    float-to-double v13, v10

    invoke-direct {v15, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v9, v15

    const/4 v13, 0x4

    invoke-virtual {v9, v11, v13}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### userSpaceWL_Percentage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " %"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    long-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v20, v12

    float-to-double v11, v13

    invoke-direct {v14, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v9, v14

    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v9, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### cpuRuning_Percentage : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " %"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    int-to-float v12, v12

    mul-float/2addr v12, v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### wrCountCriteria : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " times"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    long-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    float-to-double v3, v13

    invoke-direct {v14, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v3, v14

    const/4 v4, 0x3

    const/4 v9, 0x4

    invoke-virtual {v3, v4, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### signalBad_Percentage : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "  %"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v9, :cond_5

    move-object/from16 v23, v7

    move/from16 v24, v8

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    const-wide/16 v18, 0x0

    cmpl-double v7, v7, v18

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v7, v7, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v25, v13

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    div-double/2addr v7, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v13

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v3, v9

    const/4 v9, 0x3

    const/4 v13, 0x4

    invoke-virtual {v3, v9, v13}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " %"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move-wide v13, v7

    goto :goto_0

    :cond_4
    move-wide/from16 v25, v13

    :goto_0
    const-string v7, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v23, v7

    move/from16 v24, v8

    move-wide/from16 v25, v13

    const-string v7, "###### No-unaccounted sipper existed."

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpCriteria()V

    iget v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    sget v8, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    if-eq v7, v8, :cond_7

    iget-boolean v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    if-nez v7, :cond_7

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v27, v3

    :cond_6
    :goto_2
    move-object/from16 v3, v20

    :goto_3
    move-object/from16 v8, v21

    move-object/from16 v7, v22

    goto/16 :goto_a

    :cond_7
    sget v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    cmpl-float v7, v10, v7

    if-ltz v7, :cond_b

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    invoke-direct {v0, v7, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v7

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/BatterySipper;

    invoke-direct {v0, v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1st:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    move-object/from16 v27, v3

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mName:Ljava/lang/String;

    const-string v9, ":"

    const/4 v15, 0x2

    invoke-virtual {v3, v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v9, v3

    if-lt v9, v15, :cond_9

    const/4 v9, 0x1

    aget-object v3, v3, v9

    goto :goto_4

    :cond_8
    move-object/from16 v27, v3

    :cond_9
    move-object/from16 v3, v22

    :goto_4
    move-object v7, v3

    move-object/from16 v3, v20

    goto/16 :goto_a

    :cond_a
    move-object/from16 v27, v3

    goto/16 :goto_2

    :cond_b
    move-object/from16 v27, v3

    sub-float v3, v11, v10

    sget v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_d

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move-object/from16 v3, v22

    :goto_5
    move-object v7, v3

    move-object/from16 v3, v20

    move-object/from16 v8, v21

    goto/16 :goto_a

    :cond_d
    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    long-to-float v3, v7

    cmpl-float v3, v3, v12

    if-ltz v3, :cond_12

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    const/4 v8, 0x0

    :goto_6
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    if-ge v8, v7, :cond_e

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_f
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v8, :cond_10

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_10

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_11

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    :cond_11
    :goto_7
    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    sget v3, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_13

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " %"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_13
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v7, :cond_14

    const-string v7, "aosd no increase"

    :goto_8
    goto :goto_9

    :cond_14
    const-string/jumbo v7, "vmin no increase"

    goto :goto_8

    :goto_9
    move-object/from16 v8, v17

    move-object/from16 v39, v8

    move-object v8, v7

    move-object/from16 v7, v39

    goto :goto_a

    :cond_15
    move-object/from16 v3, v20

    sget v7, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    float-to-double v7, v7

    cmpl-double v7, v13, v7

    if-lez v7, :cond_16

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unaccounted:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    invoke-direct {v0, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "high_unaccounted"

    move-object/from16 v7, v17

    goto :goto_a

    :cond_16
    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :goto_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [RootCause] :"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v15, ","

    move-object/from16 v28, v3

    const-string v3, ";"

    invoke-virtual {v9, v15, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    sget v30, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    move/from16 v36, v10

    move/from16 v37, v11

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    move/from16 v38, v4

    iget v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    move-object/from16 v29, v9

    move-wide/from16 v31, v10

    move/from16 v33, v15

    move/from16 v34, v4

    move-object/from16 v35, v3

    invoke-virtual/range {v29 .. v35}, Lcom/android/server/OnePlusDiagnosisUtil;->log(IJIFLjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v4}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###### [MDM_PACKAGE] :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "###### [MDM_DETAIL] :"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    if-eqz v4, :cond_17

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v9, "tp"

    invoke-virtual {v5}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ordinal()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "pn"

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "dl"

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v10, "standby"

    invoke-virtual {v9, v10, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@@@[Judge] in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dumpUidWakeLockMap$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][usagePowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_6
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_7
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_8
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_9
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_a
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##[Abn][totalPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_b
    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    if-eqz v0, :cond_c

    const-string v1, "Abn-Start"

    invoke-direct {p0, v1, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    const-string v1, "Abn-End"

    invoke-direct {p0, v1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_c
    return-void
.end method


# virtual methods
.method public dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v0, "End-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v0, "End"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "End-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_4

    const-string v0, "End-RPM"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_a

    const-string v0, "End-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    if-eqz v0, :cond_5

    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "Start-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v0, :cond_8

    const-string v0, "Start-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_9

    const-string v0, "Start-RPM"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_a

    const-string v0, "Start-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    iput-object v3, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object v3, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_6

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_2
    if-ltz v11, :cond_3

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v12, v7}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v13, :cond_1

    move-wide/from16 v14, p2

    :try_start_1
    invoke-virtual {v13, v14, v15, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_2

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_2

    const-wide/16 v18, 0x1f4

    add-long v18, v16, v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v22, v18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v25, v6

    move-wide/from16 v6, v22

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-wide/from16 v14, p2

    :cond_2
    move-object/from16 v24, v0

    move/from16 v25, v6

    :goto_3
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, v24

    move/from16 v6, v25

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 v14, p2

    move-object/from16 v24, v0

    move/from16 v25, v6

    const/4 v0, 0x0

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_4
    if-ltz v6, :cond_5

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_5
    if-ltz v12, :cond_4

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Counter;

    move-object/from16 v26, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v13

    add-int/2addr v0, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v4, v26

    goto :goto_5

    :cond_4
    move-object/from16 v26, v4

    const/4 v4, 0x0

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v4, v26

    goto :goto_4

    :cond_5
    move-object/from16 v26, v4

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    invoke-direct {v7, v11, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(II)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    move v7, v4

    move-object/from16 v0, v24

    move/from16 v6, v25

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p2

    goto :goto_7

    :catch_1
    move-exception v0

    move-wide/from16 v14, p2

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    move-object v0, v5

    goto :goto_8

    :cond_7
    move-wide/from16 v14, p2

    :goto_8
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_8

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    goto :goto_9

    :cond_8
    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    :goto_9
    return-object v3
.end method

.method public getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    iget-boolean v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v1, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    goto :goto_0

    :cond_3
    :goto_3
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_5

    :cond_4
    :goto_4
    goto :goto_5

    :catchall_0
    move-exception v4

    goto :goto_6

    :catch_1
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_5
    return-object v1

    :goto_6
    nop

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v5

    nop

    :cond_5
    :goto_7
    throw v4
.end method

.method public getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    const/16 v5, 0x400

    new-array v0, v5, [B

    move-object v6, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p2

    :try_start_1
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v0, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11, v0}, Ljava/lang/String;-><init>([BII)V

    iget-boolean v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v11, :cond_0

    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    goto :goto_1

    :cond_0
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    :goto_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "Matched...."

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    iget-boolean v13, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_2

    :cond_1
    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_3

    :cond_2
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v14, :cond_3

    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "#### ["

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] rpm_stats [aosd, "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], [cxsd, "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    move/from16 v16, v0

    const-string v0, "OPSA"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#### ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] rpm_stats [vlow, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "], [vmin, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_5

    :cond_4
    move/from16 v16, v0

    const-string v0, "Can\'t matched...."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-ltz v0, :cond_5

    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_5
    nop

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_6
    :goto_6
    nop

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_b

    :cond_7
    :goto_7
    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v7, p2

    :goto_8
    move-object v8, v3

    move-object v3, v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v7, p2

    :goto_9
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "**** Failed to read, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v7, p2

    :goto_a
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "**** File not found, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_7

    :goto_b
    return-object v4

    :goto_c
    nop

    if-eqz v8, :cond_8

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    nop

    :cond_8
    :goto_d
    throw v3
.end method

.method public getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    move v4, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v8, "OPSA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WiFi WakeUp content=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x5

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x7

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xc

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xd

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xe

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v9, "Can\'t matched...."

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    const-wide/16 v11, 0x1388

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    const-string v9, "**** Exceed read timeout, force exit ***"

    invoke-static {v9}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    goto/16 :goto_0

    :cond_2
    :goto_2
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_4

    :cond_3
    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_1
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** Failed to read, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_2
    move-exception v4

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** File not found, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :goto_4
    return-object v1

    :goto_5
    nop

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v5

    nop

    :cond_4
    :goto_6
    throw v4
.end method

.method public notifyEnterDeepIdle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v7, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V

    invoke-virtual {v0, v7}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .locals 2

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$9;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    nop

    :goto_0
    return-void

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
