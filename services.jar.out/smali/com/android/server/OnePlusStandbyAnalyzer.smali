.class public Lcom/android/server/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;,
        Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE_FOR_MSM8998;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PACKET_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SIM_ID;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;,
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

.field private static final FIX_DUMP_ONE:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final INVALID_UID:I = -0x3e7

.field private static final MAX_DUMP_COUNT:I = 0x3

.field private static final MAX_RECORD_COUNT:I = 0x28

.field public static final MDM_DETAIL:Ljava/lang/String; = "dl"

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MDM_PACKAGE:Ljava/lang/String; = "pn"

.field public static final MDM_REASON_TYPE:Ljava/lang/String; = "tp"

.field public static final PROP_QXDM_IF_NEED_PACK:Ljava/lang/String; = "persist.sys.standby_qxdm"

.field public static final PROP_QXDM_IF_UNDER_RECORDING:Ljava/lang/String; = "persist.sys.standby_qxdm_recording"

.field public static final PROP_QXDM_VENDOR_CLEAN:Ljava/lang/String; = "persist.sys.qxdm_clean_old"

.field private static final PROP_STANDBY_DEBUG_ON:Ljava/lang/String; = "persist.sys.standby_debug"

.field public static final QUALCOMM_MHZ:I = 0x124f800

.field private static final QXDM_RECHECK_MAX:I = 0x3

.field private static final READ_TIMEOUT:J = 0x1388L

.field public static RPM_FILE:Ljava/lang/String; = null

.field public static RPM_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static final STANDBY_ASSIST_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field public static final STANDBY_RPM_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static final USERSPACE_WAKELOCK:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static WIFI_WAKEUP_FILE:Ljava/lang/String; = null

.field public static WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String; = null

.field private static mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA:F = 0.0f

.field private static mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA:I = 0x0

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I = 0x0

.field private static mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F = 0.0f

.field private static mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J = 0x0L

.field private static mRPM_TIME_SLM_SEC_CRITERIA:J = 0x0L

.field private static mSIGNAL_BAD_CRITERIA:F = 0.0f

.field private static mSIGNAL_BAD_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA:F = 0.0f

.field private static mUNACCOUNTED_CRITERIA_FOR_MINOR:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA:F = 0.0f

.field private static mUSERSPACE_WL_CRITERIA_FOR_MINOR:F = 0.0f

.field private static final mVersion:Ljava/lang/String; = "2.02"


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

.field cptor5:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudio_WL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mByPassed_KWL_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mDiagnosisAsNormal:Z

.field private mDiagnosisInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDiagnosis_ASSIST_Info:Ljava/lang/String;

.field private mDiagnosis_RPM_Info:Ljava/lang/String;

.field private mEverEnterDeepDoze:Z

.field private mEverQXDMRecordingByMyself:Z

.field private mIfEverGenQXDMToCleanUp:Z

.field private mIsQuickSimulate:Z

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

.field private mLastQXDMGrabTimeStamp:J

.field private mMDMEnabled:Z

.field private mMiddleCheckPeriod:J

.field private mMinimumQXDMGrabPeriod:J

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQXDMGrabGapAfterStandbyStart:J

.field private mQXDMGrabMechanism:Z

.field private mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

.field private mQXDM_Ready_Check_Count:I

.field private mQXDM_Recoding:Z

.field mRPMInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
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

.field private mRPMModePattern:Ljava/util/regex/Pattern;

.field private mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

.field private mRPM_BaseString:Ljava/lang/String;

.field private mRPM_Master_Pattern_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

.field private mRPM_SDM845_BaseString:Ljava/lang/String;

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

.field private mStandbyAbnReportingEnabled:Z

.field private mStandby_Battery_Drop:I

.field private mStandby_KernelSpaceWL_Ms:J

.field private mStandby_MiniumPeriod:J

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

.field private mStandby_mA_Criteria:F

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field mTeleChgInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUidPacketDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidPacket_Diff_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mUnderStandbyPeriod:Z

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
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    const-string/jumbo v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/16 v0, 0x15

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    const/16 v0, 0x32

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    const-string v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    const-string v0, "/d/rpmh/stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    const-string v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    const-string v0, "/d/rpmh/master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    const/16 v1, 0xc8

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    const v1, 0x4479c000    # 999.0f

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    const/16 v0, 0x96

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    sput v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->NOT_AVAILABLE:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    const-wide/32 v1, 0xa4cb800

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    const-wide/32 v1, 0xa4cb80

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    const-string v2, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    const-string v2, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    const-string v2, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    const-string v2, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    const-string v2, "\\n\\tVersion:0x([0-9a-f]*)\\n\\tSleep Count:0x([0-9a-f]*)\\n\\tSleep Last Entered At:0x([0-9a-f]*)\\n\\tSleep Last Exited At:0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\n"

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    const-string/jumbo v2, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$1;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$1;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$2;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$2;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$3;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$3;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$4;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$4;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$8;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$8;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor5:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$9;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$9;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$10;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$10;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v3, "/data/system/power/diagnosis_standby.txt"

    const/16 v4, 0x28

    invoke-direct {v2, v3, v4}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NYNCG4I0TI"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    iput-boolean p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    const-string v0, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init reporting-flag to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sdm845"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "msmnile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v1, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "PowerManagerService.WakeLocks"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    const-string v2, "NETLINK"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioMix"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioDirectOut"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioOffload"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    const-string v2, "AudioIn"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->initRPMRexMap()V

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->startTelephonyMonitor()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->cleanUpTele()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/DeviceIdleController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    return p1
.end method

.method static synthetic access$2002(Lcom/android/server/OnePlusStandbyAnalyzer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRootCause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatteryOutlierIfAppropriate(Z)V

    return-void
.end method

.method static synthetic access$2400()J
    .locals 2

    sget-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;)Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

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

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$7;

    invoke-direct {v5, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$7;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

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

    move v3, v4

    :goto_5
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v5, :cond_8

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    if-gt v3, v7, :cond_7

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

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

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpPacketInfoRanking(Ljava/util/List;)V

    :cond_c
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_d

    const-string v3, "Diff-Signal"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_e

    const-string v3, "Diff-RPM"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    :cond_e
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_f

    const-string v3, "Diff-RPMMaster"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    :cond_f
    sget-boolean v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v3, :cond_10

    const-string v3, "Diff-WiFiWakeUp"

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_10
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

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$11;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$11;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

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

.method private checkifRPMCanDeepSleep(Ljava/util/List;)Z
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

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVimCanDeepSleep()Z

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

.method private cleanUpTele()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->cleanUp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
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

.method private dumpAudioRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$AudioInfo;",
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
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |SB=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |MINOR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_TSLM_SEC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SAD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SLPI_SC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method private dumpPacketInfoRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
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
    .locals 4
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

    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "OPSA"

    const-string/jumbo v1, "list == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "OPSA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "list == null"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_1
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

.method private genBatteryOutlierIfAppropriate(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    const-string v0, "[opbugreportlite] NOT report it, check if need cleanup qxdm logs immediately."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->sendCleanUpQXDMIfAppropriate()V

    :goto_0
    return-void
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |T="

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

    const-string v2, " |pkgWHD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |TPower="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |pt="

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

.method private genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
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

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toString()Ljava/lang/String;

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

.method private get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mByPassed_KWL_List:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    :cond_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " st-KWL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$6;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$6;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    :cond_0
    nop

    :goto_0
    move v2, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v3, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    if-lez v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    move-object v0, v1

    :cond_3
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
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$12;

    invoke-direct {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$12;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v0, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
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

.method private iSQXDMLogReady()Z
    .locals 3

    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v2, "QXDM log is ready"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v1, "QXDM log is NOT ready"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
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

.method private initRPMRexMap()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SDM845_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v7, v4, [Ljava/lang/Object;

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v8}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string v6, ".*%s%s.*"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_BaseString:Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
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

.method private judgeRPM()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMCanDeepSleep(Ljava/util/List;)Z

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_8

    const-wide v10, 0x7fffffffffffffffL

    const-wide/16 v12, 0x0

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v14, 0x0

    move-object v15, v2

    const/4 v2, 0x0

    :goto_0
    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v12, v3

    if-gez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    move-wide v12, v3

    :cond_1
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    cmp-long v3, v10, v3

    if-ltz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    iget-object v9, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v9, v9, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-wide v10, v3

    move-object v15, v9

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[judgeRPM] longest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_acctime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", smallest_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    cmp-long v2, v12, v7

    if-eqz v2, :cond_4

    sub-long v2, v12, v10

    long-to-float v2, v2

    mul-float/2addr v2, v6

    long-to-float v3, v12

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] percent[(longest-smallest)/longest] ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "[judgeRPM] longest_acctime == 0"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const/16 v16, 0x0

    :goto_2
    move/from16 v2, v16

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    if-ne v3, v4, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[judgeRPM] SLPI\'s SleepCount_Diff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", criteria="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepCountDiff:J

    sget-wide v5, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    add-int/lit8 v16, v2, 0x1

    goto :goto_2

    :cond_7
    goto/16 :goto_7

    :cond_8
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_e

    aget-object v9, v2, v4

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    if-ne v9, v10, :cond_a

    :cond_9
    const/4 v14, 0x4

    goto/16 :goto_6

    :cond_a
    const/4 v10, 0x0

    :goto_4
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v12}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mCXState:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    if-ne v11, v12, :cond_d

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-direct {v0, v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getLongest_RPMSAD(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;)J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", longestRPMSAD="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    cmp-long v13, v11, v7

    if-eqz v13, :cond_c

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-wide v13, v13, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mSleepAccDuration:J

    sub-long v13, v11, v13

    long-to-float v13, v13

    mul-float/2addr v13, v6

    long-to-float v14, v11

    div-float/2addr v13, v14

    mul-float/2addr v13, v5

    new-instance v14, Ljava/math/BigDecimal;

    float-to-double v5, v13

    invoke-direct {v14, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v5, v14

    const/4 v6, 0x3

    const/4 v14, 0x4

    invoke-virtual {v5, v6, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[judgeRPM] percent[(longest-"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\'s SAD)/longest] ="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v6, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    cmpl-float v6, v13, v6

    if-ltz v6, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    goto :goto_5

    :cond_c
    const/4 v14, 0x4

    const-string v5, "[judgeRPM] longestRPMSAD == 0"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const/4 v14, 0x4

    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    return-object v1

    :cond_f
    :goto_8
    const-string v2, "[judgeRPM] oops, rpm data is not well retrieved, just return UNKNOWN"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return-object v1
.end method

.method private judgeRootCause()Z
    .locals 59

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Due to mStandby_Ms: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is less than 0, can\'t judge anything, need just return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v4

    :cond_0
    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget-wide v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Due to mStandby_Ms: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is less than "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_MiniumPeriod:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms, it\'s false alarm, just return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-boolean v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v7, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v3, v7}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    const-string v7, "/data/system/power/diagnosis_rpm.txt"

    invoke-virtual {v3, v7}, Lcom/android/server/OnePlusDiagnosisUtil;->resetAssitFile(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v7}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    invoke-static {v10, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Time of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Battery-Drop of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->DP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### EverEnterDeepIdle : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Ljava/math/BigDecimal;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    float-to-double v12, v12

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v12, 0x4

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v14

    iput v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Average Current of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA, criteria="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->AC:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->MIN:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA_Criteria:F

    sub-float/2addr v12, v14

    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    cmpg-float v12, v12, v14

    if-gtz v12, :cond_2

    const-string v12, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    sget v18, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    goto :goto_0

    :cond_2
    const-string v12, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    sget v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    sget v15, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    sget v17, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    sget v18, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    :goto_0
    move/from16 v19, v18

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v20, v14

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### CPU Uptime of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    invoke-static {v10, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " times"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-boolean v13, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    const/4 v14, 0x1

    if-eqz v13, :cond_3

    const-string v13, "Diff"

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-direct {v0, v13, v4, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " times"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpkwl(Ljava/util/List;)V

    const-string v4, "Diff-RPM"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    const-string v4, "Diff-RPMMaster"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v13, v14, v15, v1, v4}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    const-string v1, "Diff-RPM"

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v2

    const-string v2, "###### RPM MDM_Detail : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Diff-WiFiWakeUp"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genTeleChgInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    const-string v3, "###### Diff-TeleChgInfo : "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    move-result-object v3

    const-string v14, "OPSA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v2

    const-string v2, "##### 1st-TelephonyAnomaly : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_4

    const-string v2, "Diff - totalPowerMah"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_4
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v14, Lcom/android/server/OnePlusStandbyAnalyzer$5;

    invoke-direct {v14, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$5;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_5

    const-string v2, "Diff - wakeLockTimeMs"

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v15, 0x1

    invoke-direct {v0, v2, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->VER:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v15, "2.02"

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v2, v14

    const v14, 0x4a5bba00    # 3600000.0f

    div-float/2addr v2, v14

    new-instance v14, Ljava/math/BigDecimal;

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    float-to-double v7, v2

    invoke-direct {v14, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v14

    const/4 v8, 0x3

    const/4 v11, 0x4

    invoke-virtual {v7, v8, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### standby_hrs : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " h"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBHR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    long-to-float v8, v14

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v8, v11

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v14, v14

    div-float/2addr v8, v14

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v8, v14

    new-instance v15, Ljava/math/BigDecimal;

    move/from16 v28, v12

    float-to-double v11, v8

    invoke-direct {v15, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v15

    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### userSpaceWL_Percentage : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v12, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    long-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    iget-wide v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v12, v14

    div-float/2addr v11, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    new-instance v12, Ljava/math/BigDecimal;

    float-to-double v14, v11

    invoke-direct {v12, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v7, v12

    const/4 v12, 0x3

    const/4 v14, 0x4

    invoke-virtual {v7, v12, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### cpuRuning_Percentage : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " %"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->CRP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-float v12, v11, v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### kernelSpaceWL_Percentage : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " %"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->KWLP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v30, v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v4, v28

    int-to-float v14, v4

    mul-float/2addr v14, v2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v2

    const-string v2, "###### local_wrCountCriteria : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    move-object/from16 v32, v10

    move/from16 v33, v11

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    long-to-float v2, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v10

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v10, v10

    div-float/2addr v2, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v2, v10

    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v36, v4

    move-wide/from16 v34, v5

    float-to-double v4, v2

    invoke-direct {v10, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v4, v10

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### signalBad_Percentage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v6, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->SBP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### [judgeRPM] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->RPM:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v10, :cond_7

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    const-wide/16 v28, 0x0

    cmpl-double v10, v10, v28

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v10, v10, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v37, v6

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    div-double/2addr v10, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v6

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-wide/from16 v37, v6

    :goto_1
    const-string v10, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-wide/from16 v37, v6

    const-string v6, "###### No-unaccounted sipper existed."

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->UCP:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v10, "-999"

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v6, v37

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpCriteria()V

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    const-string v15, "1"

    invoke-interface {v10, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->pkgConvertion()V

    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON:[I

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_MODEM_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    :goto_3
    goto :goto_6

    :pswitch_1
    if-eqz v3, :cond_8

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v11, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    move-object/from16 v10, v27

    goto :goto_4

    :pswitch_2
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_4

    :pswitch_3
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_4

    :pswitch_4
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_4

    :pswitch_5
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->QXDM_TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    nop

    :goto_4
    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    iget-boolean v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    invoke-static {v11, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    goto :goto_3

    :cond_8
    :goto_5
    move-object/from16 v11, v24

    move-object/from16 v15, v26

    move-object/from16 v10, v27

    :goto_6
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move-object/from16 v39, v4

    move-object v4, v11

    move-object v11, v15

    :goto_7
    move/from16 v47, v19

    goto/16 :goto_26

    :cond_9
    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsQuickSimulate:Z

    if-nez v10, :cond_a

    iget-boolean v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    if-nez v10, :cond_a

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->EVDI:Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-object/from16 v39, v4

    const-string v4, "0"

    invoke-interface {v11, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NO_ENTER_DEEP_IDLE:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_8
    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    goto :goto_7

    :cond_a
    move-object/from16 v39, v4

    iget-wide v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    long-to-float v4, v10

    cmpl-float v4, v4, v14

    if-ltz v4, :cond_12

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->fromString(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    move-result-object v4

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    if-ne v4, v11, :cond_b

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->modem:Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KERNEL_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    :goto_9
    goto :goto_a

    :cond_b
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_WR:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :goto_a
    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    const/4 v15, 0x3

    move-object/from16 v40, v4

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    const/4 v4, 0x0

    :goto_b
    move-object/from16 v41, v10

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    if-ge v4, v15, :cond_c

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v41

    goto :goto_b

    :cond_d
    move-object/from16 v41, v10

    :cond_e
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_f
    const/4 v10, 0x0

    :cond_10
    :goto_c
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    nop

    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move/from16 v47, v19

    move-object/from16 v4, v40

    goto :goto_d

    :cond_11
    move-object/from16 v41, v10

    move-object/from16 v42, v1

    move/from16 v43, v2

    move-object/from16 v46, v3

    move/from16 v47, v19

    move-object/from16 v4, v24

    move-object/from16 v11, v26

    :goto_d
    move-object/from16 v10, v41

    goto/16 :goto_26

    :cond_12
    cmpl-float v4, v8, v20

    if-gez v4, :cond_1e

    cmpl-float v4, v12, v21

    if-ltz v4, :cond_13

    move-object/from16 v42, v1

    move/from16 v43, v2

    move/from16 v4, v19

    goto/16 :goto_18

    :cond_13
    cmpl-float v4, v2, v17

    if-ltz v4, :cond_14

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " %"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_SBD:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_14
    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->AOSD_VMIN_NO_INCREASE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###### [judgeRPM] :"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# [judgeRPM]=["

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] #"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v4, :cond_15

    const-string v4, "aosd_no_increase"

    :goto_e
    goto :goto_f

    :cond_15
    const-string/jumbo v4, "vmin_no_increase"

    goto :goto_e

    :goto_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [RPM] :"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_17
    move/from16 v4, v19

    float-to-double v10, v4

    cmpl-double v10, v6, v10

    if-lez v10, :cond_1c

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unaccounted:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, " %"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### [judgeRPM] :"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "# [judgeRPM]=["

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] #"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "high_unaccounted"

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v3, :cond_1a

    move-object/from16 v42, v1

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    if-lez v1, :cond_19

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    iget-object v15, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move/from16 v43, v2

    const/4 v2, 0x0

    invoke-static {v15, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v2

    const-string v15, ";"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v44, v1

    const-string v1, "_"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_10
    goto :goto_13

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_19
    move/from16 v43, v2

    goto :goto_11

    :cond_1a
    move-object/from16 v42, v1

    move/from16 v43, v2

    :goto_11
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_RPM:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    move-object/from16 v58, v11

    move-object v11, v1

    move-object/from16 v1, v58

    goto :goto_13

    :cond_1b
    move-object v1, v5

    goto :goto_12

    :goto_13
    goto :goto_17

    :cond_1c
    move-object/from16 v42, v1

    move/from16 v43, v2

    if-eqz v3, :cond_1d

    iget v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mOnAnomalyStatusChangeCount:I

    if-lez v1, :cond_1d

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    iget-object v2, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    move-object/from16 v10, v27

    goto :goto_15

    :pswitch_6
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_RAT_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_14

    :pswitch_7
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_IMS_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_14

    :pswitch_8
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_DATACALL_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    goto :goto_14

    :pswitch_9
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->TELEPHONY_NETWORK_ANOMALY:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    nop

    :goto_14
    move-object v10, v1

    :goto_15
    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_16

    :cond_1d
    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_NOCULPRIT:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_16
    move-object v11, v2

    :goto_17
    move-object/from16 v46, v3

    move/from16 v47, v4

    move-object v4, v1

    goto/16 :goto_26

    :cond_1e
    move-object/from16 v42, v1

    move/from16 v43, v2

    move/from16 v4, v19

    :goto_18
    cmpl-float v1, v8, v12

    if-lez v1, :cond_28

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v11, :cond_27

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_27

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_27

    iget-object v11, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v11, v11, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v15, :cond_23

    move-object v15, v2

    const/4 v2, 0x0

    :goto_19
    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_22

    if-nez v2, :cond_1f

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    move-object v15, v1

    :cond_1f
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-object v1, v1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_1a

    :cond_20
    const/4 v1, -0x1

    :goto_1a
    move-object/from16 v46, v3

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move/from16 v47, v4

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_21

    if-ne v1, v11, :cond_21

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Matched Sipper at ["

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-direct {v0, v15, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    nop

    move-object v2, v3

    goto :goto_1b

    :cond_21
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v45

    move-object/from16 v3, v46

    move/from16 v4, v47

    goto :goto_19

    :cond_22
    move-object/from16 v46, v3

    move/from16 v47, v4

    move-object v2, v15

    :goto_1b
    if-eqz v2, :cond_24

    const-string v1, ""

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v45, v1

    goto :goto_1c

    :cond_23
    move-object/from16 v45, v1

    move-object/from16 v46, v3

    move/from16 v47, v4

    :cond_24
    :goto_1c
    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1st-WL:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v15}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "1st-WL is one of Audio skipping lists, skip audio-relative MDM-reporting"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_1d

    :cond_25
    move/from16 v4, v23

    :goto_1d
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    move-object/from16 v49, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v50, v3

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move/from16 v51, v4

    iget v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeWLAsNormal()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    const/4 v1, 0x0

    goto :goto_1e

    :cond_26
    move/from16 v1, v22

    :goto_1e
    move-object/from16 v3, v48

    move/from16 v2, v51

    goto :goto_1f

    :cond_27
    move-object/from16 v46, v3

    move/from16 v47, v4

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v50, v26

    :goto_1f
    move/from16 v22, v1

    move/from16 v23, v2

    move-object v4, v3

    move-object/from16 v11, v50

    goto/16 :goto_26

    :cond_28
    move-object/from16 v46, v3

    move/from16 v47, v4

    sget-object v10, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v2, ";"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "alarmtimer"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "timerfd"

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_21

    :cond_29
    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->NA_KWL:Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$MDM_FIXED_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_20
    goto :goto_22

    :cond_2a
    :goto_21
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2b

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st-pkt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mPkg:Ljava/lang/String;

    goto :goto_20

    :cond_2b
    move-object/from16 v3, v24

    :goto_22
    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v52, v3

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2c
    move-object/from16 v52, v3

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    iget-wide v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget v15, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v3, v1, v2, v15, v11}, Lcom/android/server/OnePlusDiagnosisUtil;->genRaw(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    move-object/from16 v26, v4

    move-object/from16 v3, v52

    goto :goto_24

    :cond_2d
    move-object/from16 v3, v24

    :goto_24
    move-object v4, v3

    goto :goto_25

    :cond_2e
    move-object/from16 v4, v24

    :goto_25
    move-object/from16 v11, v26

    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [RootCause] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    sget v49, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    move-object/from16 v55, v5

    move-wide/from16 v56, v6

    iget-wide v5, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    iget v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    iget v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    move-object/from16 v48, v2

    move-wide/from16 v50, v5

    move/from16 v52, v3

    move/from16 v53, v7

    move-object/from16 v54, v1

    invoke-virtual/range {v48 .. v54}, Lcom/android/server/OnePlusDiagnosisUtil;->log(IJIFLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v2}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [MDM_PACKAGE] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [MDM_DETAIL] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    if-eqz v2, :cond_31

    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    if-eqz v2, :cond_2f

    const-string v2, "This round of abnormal diagnoses as normal, skip MDM-reporting"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_27

    :cond_2f
    if-nez v23, :cond_30

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "tp"

    invoke-virtual {v10}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "pn"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dl"

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v5, "standby"

    invoke-virtual {v3, v5, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_27

    :cond_30
    const-string v2, "Directly skip audio-relative MDM-reporting"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_31
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[Judge] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v34

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    return v22

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private judgeWLAsNormal()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " nd-WL:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v6}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toFullString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mAudio_WL_List:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v6, v6, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mWLName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v3, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    if-ne v5, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const-string v4, "Match audio-normal pattern, diagnosis as normal"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    return v0
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

.method private pkgConvertion()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    iget v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v0, :cond_8

    nop

    :goto_4
    move v0, v2

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    if-lt v0, v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    iget v3, v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->mUid:I

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->convertIntToKnownUIDs(I)Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$KnownUIDs;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toRawString(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private startTelephonyMonitor()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-direct {v5, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v2, 0x200000

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
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

.method private triggerQXDMSelfCleanUp()V
    .locals 3

    const-string v0, "Trigger QXDM cleanUp task..."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private updateQXDM_Property(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM packing-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.standby_qxdm"

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateQXDM_Recording_Property(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update QXDM recording-flag to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-string/jumbo v0, "persist.sys.standby_qxdm_recording"

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkBugReportLiteEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_join_stability_plan_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method public checkIfQXDMReadyOnSdCard()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Property(Z)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mQXDM_Ready_Check_Count ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    const-string/jumbo v1, "re-schedule 5 sec later to check again."

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f0

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "reach maximum checking, abort re-schedule"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public convertMapToListWithOrder(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor6:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

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
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_8

    const-string v0, "End-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    if-eqz v0, :cond_4

    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v0, "Start-WL"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "Start"

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v0, "Start-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_8

    const-string v0, "Start-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_0
    return-void

    nop

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

.method public declared-synchronized enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    .locals 10

    monitor-enter p0

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "persist.sys.qxdm"

    const-string/jumbo v3, "no"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, QXDM is under recoding by oemlogkit, so do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    if-eqz v4, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_7

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    cmp-long v6, v8, v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, away from the latest QXDM grabbing is too short, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    if-nez v6, :cond_6

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverQXDMRecordingByMyself:Z

    const-string/jumbo v7, "it\'s time to enable 1st-QXDM-recording now under this round of standby period"

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    goto :goto_0

    :pswitch_1
    sget-object v7, Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    nop

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Triggering Reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMTriggeringReason:Lcom/android/server/OnePlusStandbyAnalyzer$TRIGGER_QXDM_REASON;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v7, :cond_3

    const-string v0, "OPSA"

    const-string v1, "QXDM is still under recording, do nothing."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    const-string v7, "OPSA"

    const-string v8, "Start QXDM recording..."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    iput v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Ready_Check_Count:I

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p2}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "ims"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPSA"

    const-string v7, "Copy ims-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string v7, "data"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPSA"

    const-string v7, "Copy data-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_5
    const-string/jumbo v1, "persist.sys.power_mask"

    const-string/jumbo v7, "service"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OPSA"

    const-string v7, "Copy service-mask"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    const-string/jumbo v1, "persist.vendor.diag.max.num"

    const-string v7, "2"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.vendor.diag.max.size"

    const-string v7, "25"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    const-string/jumbo v1, "persist.sys.qxdm"

    const-string/jumbo v6, "yes"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.vendor.qxdm.copymask"

    const-string v6, "1"

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "diag_mdlog_start"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string v1, "OPSA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "And schedule "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const-string v7, "20 sec"

    goto :goto_2

    :cond_4
    const-string v7, "2 min"

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " later to stop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    if-eqz p4, :cond_5

    const-wide/16 v6, 0x4e20

    goto :goto_3

    :cond_5
    const-wide/32 v6, 0x1d4c0

    :goto_3
    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_4

    :cond_6
    const-string v0, "already have telephony-abn action, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_4
    goto :goto_6

    :cond_7
    :goto_5
    const-string v0, "OPSA"

    const-string/jumbo v1, "oops, not satisfy standby-gap, so skip this round QXDM recording"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BugReportLite:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | abn-reporting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | qxdm-grab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", do nothing when telephony-abn in standby period"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_6
    goto/16 :goto_8

    :cond_9
    const-string v0, "Not under standby period, do nothing when telephony abnormal"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop QXDM recording by reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    if-eqz v2, :cond_b

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2, v0}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    const-string/jumbo v0, "persist.sys.qxdm"

    const-string/jumbo v2, "no"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->updateQXDM_Recording_Property(Z)V

    const-string v0, "diag_mdlog_stop"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3ef

    const-wide/16 v2, 0xbb8

    packed-switch v0, :pswitch_data_2

    goto :goto_7

    :pswitch_6
    const-string v0, "OPSA"

    const-string v1, "Schedule 3 sec later to execute vendor clean-up task directly"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_7

    :pswitch_7
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    goto :goto_7

    :pswitch_8
    const-string v0, "OPSA"

    const-string v4, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    nop

    :goto_7
    goto :goto_8

    :cond_b
    const-string v0, "QXDM is already disabled, do nothing."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$QXDM_REASON:[I

    invoke-virtual {p3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto :goto_8

    :pswitch_9
    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_c

    const-string v0, "[opbugreportlite] Ever gen-QXDM logs, so schedule 10 sec later to cleanUp Sdcard\'s QXDM logs."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :pswitch_a
    goto :goto_8

    :pswitch_b
    nop

    :cond_c
    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public genAssistInfoForDump()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_ASSIST_Info:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public genBatteryOutlier()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOemExSvc:Lcom/oem/os/IOemExService;

    const-string v3, "battery_outlier"

    invoke-interface {v2, v3}, Lcom/oem/os/IOemExService;->dumpLightBugreport(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] generate log spends "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "got exception while reporting:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public genConfigForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->KWL:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->WR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->SB:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->HUC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_TSLM_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# Config ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->RPM_SLPI_SC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_S_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genDiagnosisInfoForDump()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisInfoMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# Info ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$DIAGNOSIS_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "], ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genKWLInfoForDump()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "PowerManagerService.WakeLocks"

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual {v4}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v3, 0x3

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genPktInfoForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacketDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genRPMInfoForDump()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosis_RPM_Info:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public genTeleChgInfoForDump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->toStringForDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .locals 38
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

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    const/4 v1, 0x0

    if-ne v13, v0, :cond_0

    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object v1, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v15, v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v1

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    move v10, v4

    if-ge v10, v2, :cond_6

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid;

    move-object v11, v4

    invoke-virtual {v11, v1, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-virtual {v11, v8, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    const/4 v9, 0x2

    invoke-virtual {v11, v9, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move/from16 v18, v8

    move-wide/from16 v8, v16

    move-object/from16 v19, v0

    const/4 v0, 0x3

    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    move v0, v10

    move-object v14, v11

    move-wide/from16 v10, v16

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v0

    move v0, v1

    move-object v1, v12

    move/from16 v17, v2

    move-object v2, v13

    move-object v12, v3

    move/from16 v3, v16

    :try_start_1
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v16

    move-object/from16 v21, v16

    move-object/from16 v0, v21

    if-eqz v0, :cond_1

    move-object/from16 v24, v3

    move-wide/from16 v22, v4

    const/4 v5, 0x0

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v5, v25, v27

    if-lez v5, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    const-wide/16 v27, 0x1f4

    add-long v27, v25, v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v31, v27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v0

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v3, v31

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v15, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-wide/from16 v22, v4

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v4, v22

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v4

    const/4 v0, 0x0

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    :goto_5
    move/from16 v34, v16

    move-object/from16 v35, v1

    move/from16 v1, v34

    if-ltz v1, :cond_4

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v36, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/os/BatteryStats$Counter;

    move-object/from16 v37, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v16, v1, -0x1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v4, v37

    goto :goto_5

    :cond_4
    move-object/from16 v36, v2

    const/4 v4, 0x0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v35

    goto :goto_4

    :cond_5
    move-object/from16 v35, v1

    move-object/from16 v36, v2

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(II)V

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v20, 0x1

    move v1, v4

    move-object v3, v12

    move/from16 v2, v17

    move-object/from16 v12, p0

    move v4, v0

    move-object/from16 v0, v19

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_6
    move-object v12, v3

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v12, v3

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_7
    move-object v15, v0

    move-object v12, v1

    :goto_7
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v13, v0, :cond_8

    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p0

    iput-object v15, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    :goto_8
    return-object v12
.end method

.method public genWLInfoForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWRInfoForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWUAInfoForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public genWifiWakeupInfoForDump()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLastQXDMGrabTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    return-wide v0
.end method

.method public getMiddleCheckPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    return-wide v0
.end method

.method public getPacketInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v13, p1

    if-ne v13, v1, :cond_0

    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v15

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v1, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    if-eqz v1, :cond_1

    move-object v2, v1

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;->updateEnd(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    goto :goto_0

    :cond_1
    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidPacket_Diff_Map:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v11, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;

    move-object v2, v11

    move-object v3, v13

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object v0, v11

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/OnePlusStandbyAnalyzer$PacketInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;IJJJJ)V

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public getQXDMGrabGapAfterStandbyStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    return-wide v0
.end method

.method public getQXDMGrabMechanismStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    return v0
.end method

.method public getQXDMGrabMinimumPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    return-wide v0
.end method

.method public getQXDMRecordingStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDM_Recoding:Z

    return v0
.end method

.method public getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    new-array v0, v4, [B

    move-object v5, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v6, p2

    :try_start_1
    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    iget-boolean v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_1

    :try_start_2
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_f

    :cond_1
    :try_start_3
    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    :goto_1
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, "RPM Matched...."

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x4

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v14, :cond_4

    iget-object v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move/from16 v16, v0

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v17, v4

    :try_start_4
    iget-boolean v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_2
    invoke-direct {v0, v4, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    iget-boolean v14, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto :goto_3

    :cond_3
    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_3
    invoke-direct {v4, v14, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move/from16 v16, v0

    move/from16 v17, v4

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_5

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_6

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_6

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    iget-boolean v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v0, :cond_7

    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [aosd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [cxsd, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    const-string v0, "OPSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#### ["

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] rpm_stats [vlow, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "], [vmin, "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto :goto_6

    :cond_8
    move/from16 v16, v0

    move/from16 v17, v4

    const-string v0, "RPM Can\'t matched...."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v14, 0x1388

    cmp-long v0, v12, v14

    if-ltz v0, :cond_9

    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :cond_9
    nop

    move/from16 v0, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto/16 :goto_f

    :cond_a
    move/from16 v17, v4

    :goto_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto/16 :goto_10

    :cond_b
    :goto_8
    goto/16 :goto_10

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object/from16 v6, p2

    :goto_9
    move/from16 v17, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_12

    :catch_a
    move-exception v0

    move-object/from16 v6, p2

    :goto_a
    move/from16 v17, v4

    :goto_b
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_b

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_b
    move-exception v0

    move-object/from16 v6, p2

    :goto_c
    move/from16 v17, v4

    :goto_d
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** Failed to read, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_b

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v6, p2

    :goto_e
    move/from16 v17, v4

    :goto_f
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "**** File not found, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_8

    :goto_10
    return-void

    :catchall_3
    move-exception v0

    :goto_11
    move-object v4, v3

    move-object v3, v0

    :goto_12
    if-eqz v4, :cond_c

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    nop

    :cond_c
    :goto_13
    throw v3
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

.method public getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    new-array v0, v4, [B

    move-object v5, v0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v6, p2

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    move v0, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v0}, Ljava/lang/String;-><init>([BII)V

    iget-object v11, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_Pattern_Map:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/regex/Pattern;

    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " Matched...."

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-boolean v10, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v15, 0x2

    if-eqz v10, :cond_1

    :try_start_1
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v0

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v24, v18

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    goto/16 :goto_c

    :cond_1
    move/from16 v17, v0

    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v0

    const/4 v0, 0x3

    invoke-virtual {v14, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v15

    move-object/from16 v15, v19

    :goto_2
    move/from16 v25, v4

    :try_start_3
    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_2

    iget-object v4, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v26, v5

    :try_start_4
    new-instance v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object/from16 v18, v5

    move-object/from16 v20, v10

    move-object/from16 v21, v15

    move-object/from16 v22, v24

    move-object/from16 v23, v0

    invoke-direct/range {v18 .. v23}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    move-object/from16 v26, v5

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    move-object/from16 v6, v24

    invoke-virtual {v5, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v6, v24

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v24, v6

    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    move-object/from16 v6, v24

    goto :goto_6

    :cond_5
    move-object/from16 v6, v24

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    if-ne v2, v4, :cond_7

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    iget-object v5, v5, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v5, v2, :cond_6

    iget-object v2, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2, v10, v15, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->setInEndRaw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_5

    :cond_7
    :goto_6
    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v26, v5

    move-object v2, v0

    goto/16 :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_c

    :cond_8
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CAN NOT Matched...."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_7
    nop

    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 v17, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v7

    const-wide/16 v10, 0x1388

    cmp-long v0, v4, v10

    if-ltz v0, :cond_a

    const-string v0, "**** Exceed read timeout, force exit ***"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :cond_a
    nop

    move/from16 v0, v17

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_c

    :cond_b
    move/from16 v25, v4

    move-object/from16 v26, v5

    :goto_8
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    goto :goto_d

    :cond_c
    :goto_9
    goto :goto_d

    :catchall_2
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object v2, v0

    goto :goto_e

    :catch_a
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    :goto_a
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_c

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    :catch_b
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    :goto_b
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed to read, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_c
    move-exception v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    :goto_c
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** File not found, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_c

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :goto_d
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    :goto_e
    if-eqz v3, :cond_d

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    move-exception v0

    nop

    :cond_d
    :goto_f
    throw v2
.end method

.method public getStandbyStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    return-wide v0
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

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] WiFi WakeUp content=\""

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

.method public ifDiagnosisAsNormal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDiagnosisAsNormal:Z

    return v0
.end method

.method public ifEverGenQXDMToCleanUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    return v0
.end method

.method public ifUnderStandbyPeriod()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    return v0
.end method

.method public declared-synchronized immediateInformScreenON(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    :goto_0
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public middleSpecificCheck()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUnderStandbyPeriod:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->MIDDLE_CHECK:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterInfo(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Middle Check : Observe aosd / vmin no increase !"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRPM()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [judgeRPM] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v5, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v2, "Middle Check : Nothing special..."

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public notifyEnterDeepIdle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return-void
.end method

.method public sendCleanUpQXDMIfAppropriate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->iSQXDMLogReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->triggerQXDMSelfCleanUp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "oops, although diagnose as normal, but QXDM log is not ready, no way to clean it :("

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "No need to cleanup due to no qxdm generation at this round."

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLastQXDMGrabTimeStamp(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset mLastQXDMGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mLastQXDMGrabTimeStamp:J

    return-void
.end method

.method public declared-synchronized simulateTelephonyAbnormal(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V
    .locals 13

    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v12, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    move-object v0, v12

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    invoke-virtual {v11, v12}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public triggerCleanUpQXDMUnderVendor()V
    .locals 2

    const-string/jumbo v0, "triggering clean-up QXDM trash under vendor partition directly"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIfEverGenQXDMToCleanUp:Z

    const-string/jumbo v0, "persist.sys.qxdm_clean_old"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerCopyQXDMToSdCard()V
    .locals 4

    const-string v0, "OPSA"

    const-string v1, "Start to copy qxdm log to sdcard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.vendor.qxdm.copylog"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController;->sendEmptyMessageDelayed(IJ)V

    return-void
.end method

.method public updateQXDMGrabGapAfterStandbyStart(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabGapAfterStandbyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabGapAfterStandbyStart:J

    :cond_0
    return-void
.end method

.method public updateQXDMGrabMechanism(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabMechanism : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mQXDMGrabMechanism:Z

    return-void
.end method

.method public updateQXDMGrabMinimumPeriod(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update updateQXDMGrabMinimumPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMinimumQXDMGrabPeriod:J

    :cond_0
    return-void
.end method

.method public declared-synchronized updateReportingFlag(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update reporting-flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandbyAbnReportingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .locals 2

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$CRITERIA_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLPI_SLEEPCOUNT_DIFF_CRITERIA:J

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_SLEEP_ACC_DURATION_DIFF_PERCENT:F

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mRPM_TIME_SLM_SEC_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    float-to-int v0, p2

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_TIME_SLM_SEC_CRITERIA:J

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mAVERAGE_CURRENT_EXCEED_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mAVERAGE_CURRENT_EXCEED_FOR_MINOR:F

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA_FOR_MINOR:F

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA_FOR_MINOR:F

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA_FOR_MINOR:I

    goto/16 :goto_0

    :pswitch_9
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

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mKERNELSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA_FOR_MINOR:F

    goto :goto_0

    :pswitch_b
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

    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mUSERSPACE_WL_CRITERIA_FOR_MINOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA_FOR_MINOR:F

    goto :goto_0

    :pswitch_d
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

.method public updateStandbyMiddleCheck(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mMiddleCheckPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    goto :goto_0

    :cond_0
    const-string v0, "Opps, Update mMiddleCheckPeriod to negative value, disable middle_check mechanism"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMiddleCheckPeriod:J

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->removeMessages(I)V

    :goto_0
    return-void
.end method
